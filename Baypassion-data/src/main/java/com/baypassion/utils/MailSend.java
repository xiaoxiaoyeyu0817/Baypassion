package com.baypassion.utils;

import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.baypassion.dto.MailSender;
import com.baypassion.model.AdPost;
import com.baypassion.model.ContactUs;

/**
 * @author Aartek, mail send content and properties.
 */
public class MailSend {

    /**
     * Method for send email to friend.
     * 
     * @param mailingData
     * @return
     */
    public static String emailToFriend(MailSender mailingData) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());
            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID,
                            mailingData.getSenderMailId() + " " + IConstant.MAIL_HEADING));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mailingData.getReceiverMailId()));
            message.setSubject("Regards:"+mailingData.getTitle());
            String msg = mailingData.getMessage() + "<br><br>";
            msg += mailingData.getTitle() + "<br><br>";
            msg += mailingData.getDescription() + "<br><br>";
            msg += "To view this posting, please click the below link:<br>";
            msg += "<a>http://thepoppop.com/baypassion/#/base</a><br>";
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (Exception exception) {
            throw new IllegalArgumentException(exception);
        }
        return null;
    }

    /**
     * Method for send verification mail.
     * 
     * @param mailingData
     * @return
     */
    public static String verificationMail(AdPost post) {

        try {

            Message message = new MimeMessage(SendMailProperty.mailProperty());
            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(post.getEmailId()));
            message.setSubject("Regards:Verfication Of Post");
            String msg = "Hey, thanks for posting with us!<br>";
            msg += "<br>";
            msg += "You must click the following link to make your posting live. You also are agreeing to our terms of use by clicking this link:";
            msg += "<br>";
            msg += IConstant.BASE_URL + "#/emailVerification?postId=" + post.getAdPostId();
            msg += "<br>";
            msg += "If nothing happens when you click this link, please copy the link above and paste it into your web browser .<br>";
            msg += "<font color='red'><b>DO NOT DELETE THIS EMAIL</b></font> - you might need this link to move to the top, edit or delete your post in the future.<br>";
            msg += " <br>";
            msg += "For upgrades, such as move to the top, mail your check or money order to:<br>";
            msg += " Posting Solutions<br>";
            msg += " Attn: Accounts<br>";
            msg += " P.O. Box 802426<br>";
            msg += " Dallas, TX 75240<br>";
            msg += "* Include the email address used for your posting along with your payment. Credits will be available as soon as your payment is processed.,<br>";
            msg += "<font color='red'><b>IMPORTANT!!! SCAM WARNING!!!</b></font>";
            msg += "Scammers will reply to posts with offers involving fake cashier's checks or wire transfers. They pose as buyers from overseas or a distant place. The cashier's check may clear, but once the fraud is discovered, your bank will hold you responsible.<br>";
            msg += "<br>";
            msg += "----------------------------------------------";
            msg += "Sponsor: Yes!<br>";
            msg += "Auto Repost: No!<br>";
            msg += "Posting Date: " + post.getPostedOn() + "<br>";
            msg += "Posting Expiration Date: Saturday, April 22, 2017<br>";
            msg += "Sponsor Date: " + post.getPostedOn() + "<br>";
            msg += "Sponsor Expiration Date: Wednesday, March 8, 2017 12:00 AM!<br>";
          // msg += "Locations selected:" + post.getCity().getCityName() + "!<br>";
            msg += "Title : " + post.getTitle() + "<br>";
            msg += "----------------------------------------------";
            msg += "<br>";
            msg += "Thank you<br>";
            msg += "<br>";
            msg += "http://thepoppop.com/baypassion/#/base <br>";
            message.setContent(msg, "text/html");
            Transport.send(message);

        } catch (Exception exception) {

            throw new IllegalArgumentException(exception);
        }
        return null;
    }

    /**
     * Method for report ad.
     * 
     * @param mailingData
     * @return
     */
    public static String reportAd(MailSender mailingData) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());
            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("julietechusa@gmail.com"));
            message.setSubject("Regards:Report a abuse ad");
            String msg = mailingData.getDescription() + "<br><br>";
            msg += IConstant.BASE_URL + "#/reportedAd?postId=" + mailingData.getId();
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (Exception exception) {
            throw new IllegalArgumentException(exception);
        }
        return null;
    }
    public static Boolean contactUsMail(ContactUs contactUs) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());
            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID,
                             contactUs.getEmail() + " " + IConstant.MAIL_HEADING));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("julietechusa@gmail.com"));
            message.setSubject("Regards:ContactUs Mail");
            String msg = "AdTitleOrLink : " + contactUs.getAdTitleOrLink() + "<br><br>";
            msg += "Query Category : " + contactUs.getQueryCategory() + "<br>";
            msg += "Location : " + contactUs.getLocation() + "<br>";
            msg += "Message : " + contactUs.getMessage() + "<br>";
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (Exception exception) {
            throw new IllegalArgumentException(exception);
        }
        return true;
    }
    
    /**
     * 
     * @param mailingData
     * @return
     */
    public static String replyPost(MailSender mailingData) {
        try {
            Message message = new MimeMessage(SendMailProperty.mailProperty());
            message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID,
                            mailingData.getSenderMailId() + " " + IConstant.MAIL_HEADING));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mailingData.getReceiverMailId()));
            message.setSubject("Regards:Reply Post");
            String msg = mailingData.getMessage() + "<br><br>";
            message.setContent(msg, "text/html");
            Transport.send(message);
        } catch (Exception exception) {
            throw new IllegalArgumentException(exception);
        }
        return null;
    }

}
