package com.baypassion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.service.ImageService;

@RestController
public class ImageController {

    @Autowired
    private ImageService imageService;

    /**
     * Remove image from database.
     * 
     * @param imageId
     * @return
     */
    @RequestMapping(value = "/removeImage", method = RequestMethod.GET)
    public Boolean removeImage(@RequestParam(required = false) Integer imageId) {
        return imageService.removeImage(imageId);
    }

}
