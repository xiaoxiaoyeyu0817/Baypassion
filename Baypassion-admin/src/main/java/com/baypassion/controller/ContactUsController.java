package com.baypassion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
     * View contact us details.
     * 
     * @return list.
     */
    @RequestMapping(value = "/viewContactUs", method = RequestMethod.GET)
    public List<ContactUs> viewContactUs() {
        return contactUsService.viewContactUs();
    }

}
