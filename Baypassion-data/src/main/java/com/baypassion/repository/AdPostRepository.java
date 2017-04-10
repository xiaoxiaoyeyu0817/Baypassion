package com.baypassion.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.baypassion.model.AdPost;

public interface AdPostRepository extends JpaRepository<AdPost, Integer> {

    @Query("SELECT ad.adPostId, ad.title FROM AdPost ad where ad.isDeleted=0 ORDER BY ad.adPostId DESC")
    public List<AdPost> getAllAdPostIdAndTitleOrderByAdPostIdDesc();

    /**
     * Get All Post By categoryItem
     * 
     * @param categoryItem
     * @return
     */
    public List<AdPost> findAdPostByCategoryItemsCategoryItemId(Integer categoryItem);

    /**
     * Get All Post By cityId And categoryItemId
     * 
     * @param cityId
     * @param categoryItemId
     * @return
     */
    public List<AdPost> findAdPostByCityCityIdAndCategoryItemsCategoryItemIdOrderByAdPostIdDesc(Integer city,
                    Integer categoryItem);

    /**
     * Get user post by user id.
     */
    public List<AdPost> findByUserId(Integer userId);
}