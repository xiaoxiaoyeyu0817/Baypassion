package com.baypassion.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "ad_post")
public class AdPost implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AD_POST_ID")
    private Integer adPostId;

    @Column(name = "TITLE")
    private String title;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "SELLING_PRICE")
    private Integer sellingPrice;

    @Column(name = "LOCATION")
    private String location;

    @Column(name = "MAP_LINK")
    private String mapLink;

    @Column(name = "ZIP_CODE")
    private Integer zipCode;

    @Column(name = "EMAIL_ID")
    private String emailId;

    @Transient
    private String confirmEmail;

    @Column(name = "NUMBER_OF_WEEK")
    private String numberOfWeek;
    
    @Column(name = "MOBILE_NUMBER")
    private String mobileNo;

    @Column(name = "MOBILE_NOTIFICATION")
    private String mobileNotification;

    @Column(name = "DISPLAY_OPTIONS")
    private Boolean displayOptions;

    @Column(name = "VIDEO")
    private String video;

    @Column(name = "NEAR_BY_CITY")
    private String nearByCity;

    @Column(name = "SPONSOR_Ad")
    private String sponsorAd;

    @Column(name = "TERM_OF_USE")
    private Boolean termOfUse;

    @Column(name = "USER_ID")
    private Integer userId;

    @Column(name = "IS_APPROVE")
    private String isApprove;

    @Column(name = "IS_DELETED")
    private Integer isDeleted;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CATEGORY_ITEM_ID")
    private CategoryItems categoryItems;

    @Column(name = "SPONSER_AD_CHECK")
    private Boolean sponserAdCheck;

    @Column(name = "CREATE_DATE")
    private String postedOn;

    @Column(name = "UPDATE_DATE")
    private String updatedOn;

    @Column(name = "IS_EMAIL_VERIFICATION")
    private String isEmailVerification;

    @Column(name = "EXPIRY_DATE")
    private String expiryDate;
    
    @Column(name = "STATE_ID")
    private String stateId;
    

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "postId", cascade = { CascadeType.PERSIST, CascadeType.REMOVE })
    private List<UploadedImage> postImages;
    
    @ManyToMany(cascade = { CascadeType.REMOVE, CascadeType.REFRESH, CascadeType.DETACH })
    @JoinTable(name = "ad_post_city", joinColumns = {
                    @JoinColumn(name = "AD_POST_ID", nullable = false, updatable = false) }, inverseJoinColumns = {
                                    @JoinColumn(name = "CITY_ID", nullable = false, updatable = false) })
    private Set<City> city = new HashSet<City>(0);

    @OneToOne(fetch = FetchType.EAGER, mappedBy = "adPost", cascade = { CascadeType.PERSIST , CascadeType.REMOVE })
    private MoveAd moveAd;
    
    @OneToOne(fetch = FetchType.EAGER, mappedBy = "adPost", cascade = { CascadeType.PERSIST, CascadeType.REMOVE })
    private AutoRepost autoRepost;
    
    public String getStateId() {
        return stateId;
    }

    public void setStateId(String stateId) {
        this.stateId = stateId;
    }

    public String getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(String expiryDate) {
        this.expiryDate = expiryDate;
    }


    public List<UploadedImage> getPostImages() {
        return postImages;
    }

    public void setPostImages(List<UploadedImage> postImages) {
        this.postImages = postImages;
    }

    public String getPostedOn() {
        return postedOn;
    }

    public void setPostedOn(String postedOn) {
        this.postedOn = postedOn;
    }

    public String getUpdatedOn() {
        return updatedOn;
    }

    public void setUpdatedOn(String updatedOn) {
        this.updatedOn = updatedOn;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /*
     * public City getCity() { return city; }
     * 
     * public void setCity(City city) { this.city = city; }
     */

    public CategoryItems getCategoryItems() {
        return categoryItems;
    }

    public void setCategoryItems(CategoryItems categoryItems) {
        this.categoryItems = categoryItems;
    }

    public Integer getAdPostId() {
        return adPostId;
    }

    public void setAdPostId(Integer adPostId) {
        this.adPostId = adPostId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(Integer sellingPrice) {
        this.sellingPrice = sellingPrice;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getMapLink() {
        return mapLink;
    }

    public void setMapLink(String mapLink) {
        this.mapLink = mapLink;
    }

    public Integer getZipCode() {
        return zipCode;
    }

    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getConfirmEmail() {
        return confirmEmail;
    }

    public void setConfirmEmail(String confirmEmail) {
        this.confirmEmail = confirmEmail;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getMobileNotification() {
        return mobileNotification;
    }

    public void setMobileNotification(String mobileNotification) {
        this.mobileNotification = mobileNotification;
    }

    public Boolean getDisplayOptions() {
        return displayOptions;
    }

    public void setDisplayOptions(Boolean displayOptions) {
        this.displayOptions = displayOptions;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getNearByCity() {
        return nearByCity;
    }

    public void setNearByCity(String nearByCity) {
        this.nearByCity = nearByCity;
    }

    public String getSponsorAd() {
        return sponsorAd;
    }

    public void setSponsorAd(String sponsorAd) {
        this.sponsorAd = sponsorAd;
    }

    public Boolean getTermOfUse() {
        return termOfUse;
    }

    public void setTermOfUse(Boolean termOfUse) {
        this.termOfUse = termOfUse;
    }

    public String getIsApprove() {
        return isApprove;
    }

    public void setIsApprove(String isApprove) {
        this.isApprove = isApprove;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Boolean getSponserAdCheck() {
        return sponserAdCheck;
    }

    public void setSponserAdCheck(Boolean sponserAdCheck) {
        this.sponserAdCheck = sponserAdCheck;
    }

    public String getIsEmailVerification() {
        return isEmailVerification;
    }

    public void setIsEmailVerification(String isEmailVerification) {
        this.isEmailVerification = isEmailVerification;
    }



    public Set<City> getCity() {
        return city;
    }

    public void setCity(Set<City> city) {
        this.city = city;
    }

    public MoveAd getMoveAd() {
        return moveAd;
    }

    public void setMoveAd(MoveAd moveAd) {
        this.moveAd = moveAd;
    }

    public AutoRepost getAutoRepost() {
        return autoRepost;
    }

    public void setAutoRepost(AutoRepost autoRepost) {
        this.autoRepost = autoRepost;
    }

	public String getNumberOfWeek() {
		return numberOfWeek;
	}

	public void setNumberOfWeek(String numberOfWeek) {
		this.numberOfWeek = numberOfWeek;
	}
}