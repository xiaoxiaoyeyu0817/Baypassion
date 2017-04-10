package com.baypassion.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "auto_repost")
public class AutoRepost implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AUTO_REPOST_ID")
    private Integer autoRepostId;

    @Column(name = "AUTO_REPOST_AD_CHECK")
    private Boolean autoRepostAdCheck;

    @Column(name = "LISTING_EVERY_DAYS")
    private Integer listingEveryDays;

    @Column(name = "AFTER_HOURS")
    private Integer afterHour;

    @Column(name = "NUMBER_OF_TIMES")
    private Double numberOfTimes;
    
    @Column(name = "INITIAL_NUMBER")
    private Double initalNumber;

    @Column(name = "CREATED_DATE")
    private Date createDate;

    @JsonBackReference
    @OneToOne(fetch = FetchType.EAGER, cascade = { CascadeType.MERGE, CascadeType.REMOVE, CascadeType.REFRESH,
                    CascadeType.DETACH })
    @JoinColumn(name = "AD_POST_ID", referencedColumnName = "AD_POST_ID")
    private AdPost adPost;

    public Integer getAutoRepostId() {
        return autoRepostId;
    }

    public void setAutoRepostId(Integer autoRepostId) {
        this.autoRepostId = autoRepostId;
    }

    public Boolean getAutoRepostAdCheck() {
        return autoRepostAdCheck;
    }

    public void setAutoRepostAdCheck(Boolean autoRepostAdCheck) {
        this.autoRepostAdCheck = autoRepostAdCheck;
    }

    public Integer getListingEveryDays() {
        return listingEveryDays;
    }

    public void setListingEveryDays(Integer listingEveryDays) {
        this.listingEveryDays = listingEveryDays;
    }

    public Integer getAfterHour() {
        return afterHour;
    }

    public void setAfterHour(Integer afterHour) {
        this.afterHour = afterHour;
    }

    public Double getNumberOfTimes() {
        return numberOfTimes;
    }

    public void setNumberOfTimes(Double numberOfTimes) {
        this.numberOfTimes = numberOfTimes;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public AdPost getAdPost() {
        return adPost;
    }

    public void setAdPost(AdPost adPost) {
        this.adPost = adPost;
    }

	public Double getInitalNumber() {
		return initalNumber;
	}

	public void setInitalNumber(Double initalNumber) {
		this.initalNumber = initalNumber;
	}

}
