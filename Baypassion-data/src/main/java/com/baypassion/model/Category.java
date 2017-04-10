package com.baypassion.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")

public class Category implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CATEGORY_ID")
    private Integer categoryId;

    @Column(name = "CATEGORY_NAME")
    private String categoryName;

    @Column(name = "CATEGORY_FLAG")
    private int categoryFlag;

    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "CATEGORY_ID")
    private List<CategoryItems> categoryItems;

    public List<CategoryItems> getCategoryItems() {
        return categoryItems;
    }

    public void setCategoryItems(List<CategoryItems> categoryItems) {
        this.categoryItems = categoryItems;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getCategoryFlag() {
        return categoryFlag;
    }

    public void setCategoryFlag(int categoryFlag) {
        this.categoryFlag = categoryFlag;
    }

}
