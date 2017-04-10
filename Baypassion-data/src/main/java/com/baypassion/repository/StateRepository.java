package com.baypassion.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.baypassion.model.State;

public interface StateRepository extends JpaRepository<State, Integer> {

    public State findByStateId(Integer stateid);
}
