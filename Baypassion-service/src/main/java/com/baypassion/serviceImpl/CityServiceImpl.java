package com.baypassion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.City;
import com.baypassion.repository.CityRepository;
import com.baypassion.service.CityService;

@Service
public class CityServiceImpl implements CityService {

    @Autowired
    private CityRepository cityRepository;

    /**
     * Get all cities.
     * 
     */
    public List<City> getAllCities() {
        return cityRepository.findAll();
    }

	public City getCity(Integer cityId) {
		return cityRepository.findOne(cityId);
	}

}
