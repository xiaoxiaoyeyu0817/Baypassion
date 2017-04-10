package com.baypassion.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.baypassion.model.CategoryItems;

public interface CategoryItemRepository extends JpaRepository<CategoryItems, Integer> {

}
