package com.baypassion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.City;
import com.baypassion.model.State;
import com.baypassion.repository.CityRepository;
import com.baypassion.repository.StateRepository;
import com.baypassion.service.StateService;

@Service
public class StateServiceImpl implements StateService {

    @Autowired
    private StateRepository staterepository;

    @Autowired
    private CityRepository cityRepository;

    public State getState(Integer stateid) {
        return staterepository.findByStateId(stateid);
    }

    /**
     * Get all cities.
     * 
     */
    public List<City> getAllCities() {
        return cityRepository.findAll();
    }

}
