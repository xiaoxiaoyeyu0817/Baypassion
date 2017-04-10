package com.baypassion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.model.User;
import com.baypassion.service.AdminService;

@RestController
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/authenticateAdmin", method = RequestMethod.POST)
    public boolean authenticateLogin(@RequestBody User user) {
        return adminService.authenticateAdmin(user);
    }

    @RequestMapping(value = "/fetchUsers", method = RequestMethod.GET)
    public List<User> fetchAllUser() {
        return adminService.fetchUsers();
    }

}
