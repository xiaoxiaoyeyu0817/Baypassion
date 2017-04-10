package com.baypassion.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.baypassion.model.ProhibitWord;

public interface ProhibitWordsRepository extends JpaRepository<ProhibitWord, Integer> {

    /**
     * Get word list on the basis of isDeleted.
     * 
     * @return list
     */
    @Query("SELECT  p.wordName FROM ProhibitWord p where p.isDeleted=0")
    List<ProhibitWord> findAllWordsByIsDeleted();

    /**
     * Get word list on the basis of isDeleted.
     * 
     * @param zero
     * @return list
     */
    List<ProhibitWord> findByIsDeleted(Integer zero);

}
