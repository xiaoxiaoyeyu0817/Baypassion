package com.baypassion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.Country;
import com.baypassion.repository.CountryRepository;
import com.baypassion.service.CountryService;

@Service
public class CountryServiceImpl implements CountryService {

    @Autowired
    private CountryRepository countryRepo;

    /**
     * Get All Country
     */
    public List<Country> getAllCountry() {
        return countryRepo.findAll();
    }
}
