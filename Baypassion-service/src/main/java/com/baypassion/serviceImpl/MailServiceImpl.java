package com.baypassion.serviceImpl;

import org.springframework.stereotype.Service;

import com.baypassion.dto.MailSender;
import com.baypassion.service.MailService;
import com.baypassion.utils.MailSend;

@Service
public class MailServiceImpl implements MailService {

    /** Send email to friend. **/
    public Boolean sendMailToFriend(MailSender mailSender) {
        if (mailSender != null) {
            MailSend.emailToFriend(mailSender);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /** Send report ad email to admin. **/
    public Boolean reportAd(MailSender mailSender) {
        if (mailSender != null) {
            MailSend.reportAd(mailSender);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /**
     * 
     */
    public Boolean replyPost(MailSender mailSender) {
        if (mailSender != null) {
            MailSend.replyPost(mailSender);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

}
