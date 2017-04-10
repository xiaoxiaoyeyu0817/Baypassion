package com.baypassion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.baypassion.model.AdPost;
import com.baypassion.service.AdPostService;
import com.baypassion.utils.CountThirtyDays;
import com.fasterxml.jackson.databind.ObjectMapper;


@RestController
public class AdPostController {

    @Autowired
    private AdPostService adPostService;

    /**
     * Save adPost
     * 
     * @param adPost
     */

    @RequestMapping(value = "/saveAd", method = RequestMethod.POST)
    public AdPost saveAd(@RequestParam("data") String adPost,
                    @RequestParam(value = "images[]", required = false) MultipartFile[] images,
                    @RequestParam(value = "video", required = false) MultipartFile video) {
        AdPost post = null;
        try {
            // convert json to pojo object AdPost
            post = new ObjectMapper().readValue(adPost, AdPost.class);
            post.setExpiryDate(CountThirtyDays.dateCalculation());
            post = adPostService.saveAd(post, images, video);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return post;
    }

    @RequestMapping(value = "/updatePostByNearByCity", method = RequestMethod.POST) 
    public AdPost updatePostByNearByCity(@RequestBody AdPost adPost) {
        AdPost adpost = adPostService.getAdById(adPost.getAdPostId());
        adpost.setCity(adPost.getCity());
        return adPostService.updatePostByNearByCity(adpost);
    }
   
    /**
     * Get All Post By categoryItem
     * 
     * @param categoryItemId
     * @return List<AdPost>
     */

    @RequestMapping(value = "/getAllPostByCategoryItem", method = RequestMethod.GET)
    public List<AdPost> getAllPostByCategoryItem(@RequestParam Integer categoryItemId) {
        return adPostService.getAllPostByCategoryItemId(categoryItemId);

    }

    /**
     * Get All Post By cityId And categoryItemId
     * 
     * @param cityId
     * @param categoryItemId
     * @return List<AdPost>
     */
    @RequestMapping(value = "getAllPostByCityIdAndCategoryItemId", method = RequestMethod.GET)
    public List<AdPost> getAllPostByCityIdAndCategoryItemId(@RequestParam(required = true) Integer cityId,
                    Integer categoryItemId) {
        return adPostService.getAllPostByCityIdAndCategoryItemId(cityId, categoryItemId);
    }

    /**
     * Get user post by user id.
     * 
     * @param userId
     * @return list
     */
    @RequestMapping(value = "/userPost", method = RequestMethod.GET)
    public List<AdPost> getUserPost(@RequestParam Integer userId) {
        return adPostService.getUserPost(userId);

    }

    /**
     * Delete post by admin.
     * 
     * @param postId
     * @return
     */
    @RequestMapping(value = "/deletePost", method = RequestMethod.GET)
    public Boolean deletPostByAdmin(@RequestParam Integer postId) {
        return adPostService.deletPostByAdmin(postId);
    }

    @RequestMapping(value = "/modifyAd", method = RequestMethod.PUT)
    public Boolean editAd(@RequestBody AdPost adPost) {
        if (adPost.getAdPostId() != null) {
            adPostService.editAd(adPost);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    @RequestMapping(value = "/fetchPostByWordAndCategory", method = RequestMethod.GET)
    public List<AdPost> findByKeyordAndCateory(@RequestParam String keyword, Integer categoryId, Integer cityId) {
        return adPostService.fetchByWordAndCategory(keyword, categoryId, cityId);

    }

    @RequestMapping(value = "/fetchPostByWordAndCategoryItem", method = RequestMethod.GET)
    public List<AdPost> findByKeyordAndCateoryItem(@RequestParam String keyword, Integer categoryItemId,
                    Integer cityId) {
        return adPostService.fetchByWordAndCategoryItem(keyword, categoryItemId, cityId);

    }

    @RequestMapping(value = "/getAdById", method = RequestMethod.GET)
    public AdPost getAdById(@RequestParam Integer adPostId) {
        return adPostService.getAdById(adPostId);
    }

    /**
     * Email verification.
     * 
     * @param adPostId
     * @return
     */
    @RequestMapping(value = "/emailVerification", method = RequestMethod.GET)
    public AdPost emailVerification(@RequestParam Integer postId) {
        return adPostService.emailVerification(postId);
    }

    /**
     * Check email verification.
     * 
     * @param adPostId
     * @return
     */
    @RequestMapping(value = "/checkEmailVerification", method = RequestMethod.GET)
    public Boolean checkEmailVerification(@RequestParam Integer postId) {
        return adPostService.checkEmailVerification(postId);
    }

    @RequestMapping(value = "/getReportedAd", method = RequestMethod.GET)
    public AdPost getReportedAd(@RequestParam Integer postId) {
        return adPostService.emailVerification(postId);
    }
    
   
    
    
}