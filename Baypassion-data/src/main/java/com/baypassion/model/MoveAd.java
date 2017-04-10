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
@Table(name = "move_ad")
public class MoveAd implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MOVE_AD_ID")
    private Integer moveAdId;

    @Column(name = "MOVE_CHECK_BOX")
    private Boolean moveAdToTopCheck;

    @Column(name = "NEXT_PER_HOUR")
    private String nextPerHour;

    @Column(name = "PRICE")
    private Double price;

    @Column(name = "CREATED_DATE")
    private Date createDate;

    @JsonBackReference
    @OneToOne(fetch = FetchType.EAGER, cascade = { CascadeType.MERGE, CascadeType.REMOVE, CascadeType.REFRESH,
                    CascadeType.DETACH })
    @JoinColumn(name = "AD_POST_ID", referencedColumnName = "AD_POST_ID" , nullable=false , updatable = false)
    private AdPost adPost;

    public Boolean getMoveAdToTopCheck() {
        return moveAdToTopCheck;
    }

    public void setMoveAdToTopCheck(Boolean moveAdToTopCheck) {
        this.moveAdToTopCheck = moveAdToTopCheck;
    }

    public Integer getMoveAdId() {
        return moveAdId;
    }

    public void setMoveAdId(Integer moveAdId) {
        this.moveAdId = moveAdId;
    }

    public String getNextPerHour() {
        return nextPerHour;
    }

    public void setNextPerHour(String nextPerHour) {
        this.nextPerHour = nextPerHour;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
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

}
