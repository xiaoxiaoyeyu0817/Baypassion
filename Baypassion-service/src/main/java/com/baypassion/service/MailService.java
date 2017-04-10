package com.baypassion.service;

import com.baypassion.dto.MailSender;

public interface MailService {

    /**Send email to friend.**/
    Boolean sendMailToFriend(MailSender mailSender);

    /**Send report ad email to admin**/
    Boolean reportAd(MailSender mailSender);
    
    Boolean replyPost(MailSender mailSender);

}
