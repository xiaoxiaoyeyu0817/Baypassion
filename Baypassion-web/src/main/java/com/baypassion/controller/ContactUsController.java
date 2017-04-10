package com.baypassion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.model.ContactUs;
import com.baypassion.service.ContactUsService;

@RestController
public class ContactUsController {

    @Autowired
    private ContactUsService contactUsService;

    /**
     * Save contact us details.
     * 
     * @param contactUs
     */
    @RequestMapping(value = "/contactUs", method = RequestMethod.POST)
    public Boolean saveContactUsDetails(@RequestBody ContactUs contactUs) {
        return contactUsService.saveContactUsDetails(contactUs);
    }
    
    
    

}
