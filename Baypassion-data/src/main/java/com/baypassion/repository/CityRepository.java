package com.baypassion.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.baypassion.model.City;

public interface CityRepository extends JpaRepository<City, Integer> {

}
