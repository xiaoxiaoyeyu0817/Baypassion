package com.baypassion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.dto.MailSender;
import com.baypassion.service.MailService;

@RestController
public class MailController {

    @Autowired
    private MailService mailService;

    /**
     * Send email to friend.
     * 
     * @param mailSender
     * @return Boolean value
     */
    @RequestMapping(value = "/emailToFriend", method = RequestMethod.POST)
    public Boolean sendMailToFriend(@RequestBody MailSender mailSender) {
        return mailService.sendMailToFriend(mailSender);
    }
    
    /**
     * Send report ad email to admin.
     * 
     * @param mailSender
     * @return Boolean value
     */
    @RequestMapping(value = "/reportAd", method = RequestMethod.POST)
    public Boolean reportAd(@RequestBody MailSender mailSender) {
        return mailService.reportAd(mailSender);
    }
    
    /**
     * 
     * @param mailSender
     * @return
     */
    @RequestMapping(value = "/replyPost", method = RequestMethod.POST)
    public Boolean replyPost(@RequestBody MailSender mailSender) {
        return mailService.replyPost(mailSender);
    }
    

}
