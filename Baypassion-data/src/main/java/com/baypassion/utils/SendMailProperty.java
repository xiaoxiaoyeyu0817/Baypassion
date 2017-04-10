package com.baypassion.utils;

import java.util.Properties;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;

/**
 * @author Aartek
 * 
 */
public class SendMailProperty {
    public static Session mailProperty() {
        final String email = IConstant.FROM_EMAIL_ID;
        final String password = IConstant.FROM_PASSWORD;
        Properties properties = new Properties();
        properties.put(IConstant.PROP_SMTP_HOST, IConstant.SMTP_HOST);
        properties.put(IConstant.PROP_SMTP_AUTH, IConstant.SMTP_AUTH);
        properties.put(IConstant.PROP_SMTP_PORT, IConstant.SMTP_PORT);
        properties.put(IConstant.PROP_SMTP_SOCKET_FACTORY, IConstant.SMTP_SOCKET_FACTORY);
        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, password);
            }
        });
        return session;
    }

}
