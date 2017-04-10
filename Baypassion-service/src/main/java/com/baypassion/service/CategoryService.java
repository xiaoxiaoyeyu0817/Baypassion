package com.baypassion.service;

import java.util.List;

import com.baypassion.model.Category;

public interface CategoryService {
    /**
     * Get All Category
     * 
     * @return
     */
    public List<Category> getAllCtaegory();

    /**
     * Get Category By categoryId
     * 
     * @param categoryId
     * @return
     */
    public Category getCategoryById(Integer categoryId);

}
