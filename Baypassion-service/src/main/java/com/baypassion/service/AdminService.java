package com.baypassion.service;

import java.util.List;

import com.baypassion.model.User;

public interface AdminService {

    public Boolean authenticateAdmin(User user);

    public List<User> fetchUsers();

}
