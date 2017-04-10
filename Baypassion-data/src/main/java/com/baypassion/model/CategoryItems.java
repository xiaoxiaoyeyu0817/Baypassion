package com.baypassion.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "category_items")
public class CategoryItems implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CATEGORY_ITEM_ID")
    private Integer categoryItemId;

    @Column(name = "CATEGORY_ITEM_NAME")
    private String categoryItemName;

    @Column(name = "CATEGORY_ITEM_FLAG")
    private int categoryItemFlag;

    public Integer getCategoryItemId() {
        return categoryItemId;
    }

    public void setCategoryItemId(Integer categoryItemId) {
        this.categoryItemId = categoryItemId;
    }

    public String getCategoryItemName() {
        return categoryItemName;
    }

    public void setCategoryItemName(String categoryItemName) {
        this.categoryItemName = categoryItemName;
    }

    public int getCategoryItemFlag() {
        return categoryItemFlag;
    }

    public void setCategoryItemFlag(int categoryItemFlag) {
        this.categoryItemFlag = categoryItemFlag;
    }

}
