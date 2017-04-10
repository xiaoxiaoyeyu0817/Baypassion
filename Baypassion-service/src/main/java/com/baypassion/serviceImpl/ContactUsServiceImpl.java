package com.baypassion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.ContactUs;
import com.baypassion.repository.ContactUsRepository;
import com.baypassion.service.ContactUsService;
import com.baypassion.utils.MailSend;

@Service
public class ContactUsServiceImpl implements ContactUsService {

    @Autowired
    private ContactUsRepository contactUsRepository;

    /**
     * Save contact us details.
     * 
     */
    public Boolean saveContactUsDetails(ContactUs contactUs) {
        contactUsRepository.save(contactUs);
        if (MailSend.contactUsMail(contactUs)) {
            return true;
        }
        return false;
    }

    /**
     * view contact us details.
     * 
     */
    public List<ContactUs> viewContactUs() {
        return contactUsRepository.findAll();
    }

}
