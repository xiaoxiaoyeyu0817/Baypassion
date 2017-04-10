package com.baypassion.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.baypassion.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    /**
     * Get User By Email And Password
     * 
     * @param email
     * @param password
     * @return
     */
    User findByEmail(String email);

    User findByEmailAndPassword(String email, String password);

    User findByEmailAndPasswordAndIsAdmin(String email, String password, String isAdmin);

    List<User> findByIsAdmin(String status);

}
