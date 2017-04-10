package com.baypassion.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "contactUs")
public class ContactUs {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CONTACT_ID")
    private Integer contactId;
    
    @Column(name = "QUERY_CATEGORY")
    private String queryCategory;

    @Column(name = "LOCATION")
    private String location;
    
    @Column(name = "EMAIL")
    private String email;
    
    @Transient
    private String confirmEmail;
    
    @Column(name = "AD_TITLE_OR_LINK")
    private String adTitleOrLink;
    
    @Column(name = "MESSAGE")
    private String message;

    public Integer getContactId() {
        return contactId;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }

    public String getQueryCategory() {
        return queryCategory;
    }

    public void setQueryCategory(String queryCategory) {
        this.queryCategory = queryCategory;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getConfirmEmail() {
        return confirmEmail;
    }

    public void setConfirmEmail(String confirmEmail) {
        this.confirmEmail = confirmEmail;
    }

    public String getAdTitleOrLink() {
        return adTitleOrLink;
    }

    public void setAdTitleOrLink(String adTitleOrLink) {
        this.adTitleOrLink = adTitleOrLink;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
}
