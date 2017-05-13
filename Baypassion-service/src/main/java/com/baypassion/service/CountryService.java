package com.baypassion.service;

import java.util.List;

import com.baypassion.model.Country;

public interface CountryService {

    /**
     * Get All Country
     * 
     * @return
     */
    public List<Country> getAllCountry();
    
    public Country getCountry(Integer countryId);
}
