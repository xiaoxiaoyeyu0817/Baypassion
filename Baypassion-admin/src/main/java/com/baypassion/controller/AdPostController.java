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

   /* @RequestMapping(value = "/modifyAd", method = RequestMethod.PUT)
    public Boolean editAd(@RequestBody AdPost adPost) {
        if (adPost.getAdPostId() != null) {
            adPostService.editAd(adPost);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }*/

    @RequestMapping(value = "/modifyAd", method = RequestMethod.POST)
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
    
    @RequestMapping(value = "/getAdById", method = RequestMethod.GET)
    public AdPost getAdById(@RequestParam Integer adPostId) {
        return adPostService.getAdById(adPostId);
    }

    @RequestMapping(value = "/getAllAdIdAndTitle", method = RequestMethod.GET)
    public List<AdPost> getAllAd() {
        return adPostService.getAllAdId();
    }

    /**
     * Approve post by admin.
     * 
     * @param postId
     * @return
     */
    @RequestMapping(value = "/approvePost", method = RequestMethod.GET)
    public Boolean approvePostByAdmin(@RequestParam Integer postId) {
        return adPostService.approvePostByAdmin(postId);
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

}