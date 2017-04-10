package com.baypassion.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.baypassion.model.Country;

public interface CountryRepository extends JpaRepository<Country, Integer> {

}
