package com.baypassion.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baypassion.model.Category;
import com.baypassion.service.CategoryService;

@RestController
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    /**
     * Get All Category
     * 
     * @return List<Category>
     */
    @RequestMapping(value = "/getAllCategory", method = RequestMethod.GET)
    public List<Category> getAllCategory() {
        return categoryService.getAllCtaegory();

    }

    /**
     * Get Category By categoryId
     * 
     * @param categoryId
     * @return
     */
    @RequestMapping(value = "/getCategory", method = RequestMethod.GET)
    public Category getCategory(@RequestParam Integer categoryId) {
        return categoryService.getCategoryById(categoryId);

    }

}
