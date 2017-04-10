package com.baypassion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.Category;
import com.baypassion.repository.CategoryRepository;
import com.baypassion.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    /**
     * Get All Category
     */
    public List<Category> getAllCtaegory() {
        return categoryRepository.findAll();
    }

    /**
     * Get Category By categoryId
     */

    public Category getCategoryById(Integer categoryId) {
        return categoryRepository.findOne(categoryId);
    }

}
