package com.baypassion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.model.City;
import com.baypassion.model.Country;
import com.baypassion.model.State;
import com.baypassion.repository.CityRepository;
import com.baypassion.service.CityService;
import com.baypassion.service.CountryService;
import com.baypassion.service.StateService;

@RestController
public class CountryController {

    @Autowired
    private CountryService countryService;

    @Autowired
    private StateService stateService;
    /*
    @Autowired
    private CityRepository cityRepo;
*/
    @Autowired
    private CityService cityService;

    /**
     * Get All Country
     * 
     * @return
     */
    @RequestMapping(value = "/getAllCountry", method = RequestMethod.GET)
    public List<Country> getAllCountry() {
        return countryService.getAllCountry();
    }

    @RequestMapping(value = "/getState", method = RequestMethod.GET)
    public State getState(@RequestParam Integer stateId) {
       /* Integer Id = 1;
        Integer id =  cityRepo.getState(Id);*/
        return stateService.getState(stateId);
    }

    /**
     * Get all cities.
     * 
     * @return
     */
    @RequestMapping(value = "/getAllCities", method = RequestMethod.GET)
    public List<City> getAllCities() {
        return cityService.getAllCities();
    }

}
