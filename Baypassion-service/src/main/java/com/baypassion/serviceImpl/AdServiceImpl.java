package com.baypassion.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.baypassion.model.AdPost;
import com.baypassion.model.Category;
import com.baypassion.model.CategoryItems;
import com.baypassion.model.UploadedImage;
import com.baypassion.repository.AdPostRepository;
import com.baypassion.repository.CategoryRepository;
import com.baypassion.repository.UploadedImageRepository;
import com.baypassion.service.AdPostService;
import com.baypassion.utils.IConstant;
import com.baypassion.utils.ImageUploadUtils;
import com.baypassion.utils.MailSend;

@Service
public class AdServiceImpl implements AdPostService {

    @Autowired
    private AdPostRepository adPostRepository;

    @Autowired
    private UploadedImageRepository uploadedImageRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    public static final String IMAGE_FILE_PATH = "https://s3-us-west-1.amazonaws.com/baypassionuploads/";

    public AdPost saveAd(AdPost adPost, MultipartFile[] images, MultipartFile video) {
        if (video != null) {
            String videoName = ImageUploadUtils.saveVideo(video);
            adPost.setVideo(videoName);
        }
        adPost.getMoveAd().setAdPost(adPost);
        adPost.getAutoRepost().setAdPost(adPost);
        AdPost post = SaveOrUpdate(adPost);
        if (images != null) {
            List<String> imageName = ImageUploadUtils.saveImage(images, post.getAdPostId());
            List<UploadedImage> uploadedImages = new ArrayList<UploadedImage>();
            for (String image : imageName) {
                UploadedImage upload = new UploadedImage();
                upload.setImageName(image);
                upload.setPostId(post);
                upload.setIsDeleted(IConstant.ZERO);
                uploadedImages.add(upload);
            }
            uploadedImageRepository.save(uploadedImages);
        }
        MailSend.verificationMail(post);
        return post;
    }

    public void editAd(AdPost adPost) {
        SaveOrUpdate(adPost);
    }

    public AdPost getAdById(Integer adPostId) {
        AdPost post = adPostRepository.findOne(adPostId);
        if (!post.getPostImages().isEmpty()) {
            post = setPerticularPostImages(post);
        }
        return post;
    }

    public List<AdPost> getAllAdId() {
        return adPostRepository.getAllAdPostIdAndTitleOrderByAdPostIdDesc();
    }

    private AdPost SaveOrUpdate(AdPost adPost) {
        return adPostRepository.save(adPost);
    }

    /**
     * Get All Post By categoryItem
     */
    public List<AdPost> getAllPostByCategoryItemId(Integer categoryItemId) {
        return adPostRepository.findAdPostByCategoryItemsCategoryItemId(categoryItemId);
    }

    /**
     * Get All Post By cityId And categoryItemId
     */
    public List<AdPost> getAllPostByCityIdAndCategoryItemId(Integer cityId, Integer categoryItemId) {
        List<AdPost> updatedList = new ArrayList<AdPost>();
        List<AdPost> allPosts = adPostRepository
                        .findAdPostByCityCityIdAndCategoryItemsCategoryItemIdOrderByAdPostIdDesc(cityId,
                                        categoryItemId);
        for (AdPost post : allPosts) {
            if (!post.getPostImages().isEmpty()) {
                post = setPostImages(post);
            }
            updatedList.add(post);
        }
        return updatedList;
    }

    /**
     * Get user post by user id.
     */

    public List<AdPost> getUserPost(Integer userId) {
        List<AdPost> updatedList = new ArrayList<AdPost>();
        List<AdPost> allPosts = adPostRepository.findByUserId(userId);
        for (AdPost post : allPosts) {
            if (!post.getPostImages().isEmpty()) {
                post = setPerticularPostImages(post);
            }
            updatedList.add(post);
        }
        return updatedList;
    }

    /**
     * Approve post by admin.
     */
    public Boolean approvePostByAdmin(Integer postId) {
        AdPost adPost = adPostRepository.findOne(postId);
        if (adPost != null) {
            adPost.setIsApprove(IConstant.YES);
            adPostRepository.save(adPost);
            return Boolean.TRUE;
        } else {
            return Boolean.FALSE;
        }
    }

    /**
     * Delete post by admin.
     */
    public Boolean deletPostByAdmin(Integer postId) {
        AdPost adPost = adPostRepository.findOne(postId);
        if (adPost != null) {
            adPost.setIsDeleted(IConstant.ONE);
            adPostRepository.save(adPost);
            return Boolean.TRUE;
        } else {
            return Boolean.FALSE;
        }
    }

    public List<AdPost> fetchByWordAndCategory(String word, Integer categoryId, Integer cityId) {
        Category category = categoryRepository.findOne(categoryId);
        List<AdPost> posts = new ArrayList<AdPost>();
        for (CategoryItems item : category.getCategoryItems()) {
            List<AdPost> postList = adPostRepository
                            .findAdPostByCityCityIdAndCategoryItemsCategoryItemIdOrderByAdPostIdDesc(cityId,
                                            item.getCategoryItemId());
            for (AdPost post : postList) {
                if ((post.getTitle().contains(word)) || (post.getDescription().contains(word))) {
                    if (!post.getPostImages().isEmpty()) {
                        post = setPostImages(post);
                    }
                    posts.add(post);
                }
            }
        }
        return posts;
    }

    public List<AdPost> fetchByWordAndCategoryItem(String word, Integer categoryItemId, Integer cityId) {
        List<AdPost> posts = new ArrayList<AdPost>();
        List<AdPost> postList = adPostRepository
                        .findAdPostByCityCityIdAndCategoryItemsCategoryItemIdOrderByAdPostIdDesc(cityId,
                                        categoryItemId);
        for (AdPost post : postList) {
            if ((post.getTitle().contains(word)) || (post.getDescription().contains(word))) {
                if (!post.getPostImages().isEmpty()) {
                    post = setPostImages(post);
                }
                posts.add(post);
            }
        }

        return posts;
    }

    private AdPost setPostImages(AdPost post) {
        List<UploadedImage> convertedImages = new ArrayList<UploadedImage>();
        for (UploadedImage image : post.getPostImages()) {
            if (image.getIsDeleted() == IConstant.ZERO) {
                String baseImage = IMAGE_FILE_PATH + image.getImageName();
                image.setImageName(baseImage);
                convertedImages.add(image);
                break;
            }
           
        }
        post.setPostImages(convertedImages);
        if (StringUtils.hasText(post.getVideo())) {
            post.setVideo(IMAGE_FILE_PATH + post.getVideo());
        }
        return post;
    }

    private AdPost setPerticularPostImages(AdPost post) {
        List<UploadedImage> convertedImages = new ArrayList<UploadedImage>();
        for (UploadedImage image : post.getPostImages()) {
            if (image.getIsDeleted() == IConstant.ZERO) {
                String baseImage = IMAGE_FILE_PATH + image.getImageName();
                image.setImageName(baseImage);
                convertedImages.add(image);
            }
        }
        post.setPostImages(convertedImages);
        if (StringUtils.hasText(post.getVideo())) {
            post.setVideo(IMAGE_FILE_PATH + post.getVideo());
        }
        return post;
    }

    /**
     * Email verification.
     * 
     */
    public AdPost emailVerification(Integer adPostId) {
        AdPost adPost = adPostRepository.findOne(adPostId);
        adPost.setIsEmailVerification(IConstant.YES);
        adPost = SaveOrUpdate(adPost);
        if (!adPost.getPostImages().isEmpty()) {
            adPost = setPerticularPostImages(adPost);
        }
        return adPost;
    }

    /**
     * Check email verification.
     * 
     */
    public Boolean checkEmailVerification(Integer adPostId) {
        AdPost adPost = adPostRepository.findOne(adPostId);
        if (adPost.getIsEmailVerification().equals(IConstant.YES)) {
            return Boolean.TRUE;
        } else {
            return Boolean.FALSE;
        }
    }

    public AdPost updatePostByNearByCity(AdPost adPost) {
        return adPostRepository.save(adPost);
    }

}