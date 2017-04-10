package com.baypassion.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "city")
public class City implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CITY_ID")
    private Integer cityId;

    @Column(name = "CITY_NAME")
    private String cityName;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "city", cascade = { CascadeType.MERGE, CascadeType.REMOVE,
                    CascadeType.REFRESH, CascadeType.DETACH })
    private Set<AdPost> adPost = new HashSet<AdPost>(0);
    
    
    @Column(name="CITY_PRICE")
    private Double cityPrice;

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public Double getCityPrice() {
        return cityPrice;
    }

    public void setCityPrice(Double cityPrice) {
        this.cityPrice = cityPrice;
    }

}