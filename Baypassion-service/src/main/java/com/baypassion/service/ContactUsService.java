package com.baypassion.service;

import java.util.List;

import com.baypassion.model.ContactUs;

public interface ContactUsService {

    /** Save contact us details. **/
    Boolean saveContactUsDetails(ContactUs contactUs);

    /** View contact us details. **/
    List<ContactUs> viewContactUs();

}
