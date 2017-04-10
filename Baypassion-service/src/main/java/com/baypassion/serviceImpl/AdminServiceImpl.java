package com.baypassion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.User;
import com.baypassion.repository.UserRepository;
import com.baypassion.service.AdminService;
import com.baypassion.utils.IConstant;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private UserRepository userRepository;

    public Boolean authenticateAdmin(User user) {
        Boolean status = false;
        if (userRepository.findByEmailAndPasswordAndIsAdmin(user.getEmail(), user.getPassword(),
                        user.getIsAdmin()) != null) {
            status = true;
        }
        return status;
    }

    public List<User> fetchUsers() {
        return userRepository.findByIsAdmin(IConstant.NO);
    }

}
