package com.baypassion.service;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;
import com.baypassion.model.AdPost;

public interface AdPostService {

    public AdPost saveAd(AdPost adPost, MultipartFile[] images, MultipartFile video);
    
    public AdPost updatePostByNearByCity(AdPost adPost);

    public void editAd(AdPost adPost);

    public AdPost getAdById(Integer adPostId);

    public List<AdPost> getAllAdId();
    
    /**
     * Get All Post By categoryItem
     * 
     * @param categoryItemIdBoolean.TRUE;
     * @return
     */
    public List<AdPost> getAllPostByCategoryItemId(Integer categoryItemId);

    /**
     * Get All Post By cityId And categoryItemId
     * 
     * @param cityId
     * @param categoryItemId
     * @return
     */
    public List<AdPost> getAllPostByCityIdAndCategoryItemId(Integer cityId, Integer categoryItemId);

    /**
     * Get user post by user id.
     */
    public List<AdPost> getUserPost(Integer userId);
    
    public List<AdPost> getUserPostList(Integer userId);

    /**
     * Approve post by admin.
     * 
     */
    public Boolean approvePostByAdmin(Integer postId);

    /**
     * Delete post by admin.
     */
    public Boolean deletPostByAdmin(Integer postId);

    public List<AdPost> fetchByWordAndCategory(String word, Integer categoryId, Integer cityId);

    public List<AdPost> fetchByWordAndCategoryItem(String word, Integer categoryItemId, Integer cityId);

    /**
     * Email verification.
     */
    public AdPost emailVerification(Integer adPostId);

    /** Check email verification. **/
    public Boolean checkEmailVerification(Integer adPostId);

    /*
     * public void saveAd(String adPost, MultipartFile image, MultipartFile
     * video);
     */
}