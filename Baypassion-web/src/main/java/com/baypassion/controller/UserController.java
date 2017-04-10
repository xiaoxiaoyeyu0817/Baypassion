package com.baypassion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baypassion.model.User;
import com.baypassion.service.UserService;

/**
 * @author aartek
 *
 */
@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public User saveUserDetail(@RequestBody User user) {
        return userService.saveUser(user);

    }

    /**
     * Login Method
     * 
     * @param user
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public User login(@RequestBody User user) {
        if (userService.findByEmailAndPassword(user) != null) {
            return userService.findByEmailAndPassword(user);
        }
        return null;
    }

    /**
     * Method to change Password using User object
     * 
     * @param user
     * @return boolean
     */
    @RequestMapping(value = "/changePassword", method = RequestMethod.POST)
    public boolean changePassword(@RequestBody User user) {

        if (user.getUserId() != null) {
            User oldUser = userService.findByUserId(user);
            oldUser.setPassword(user.getPassword());
            userService.saveUser(oldUser);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /**
     * Update user info.
     * 
     * @param user
     */
    @RequestMapping(value = "/updateUserInfo", method = RequestMethod.PUT)
    public Boolean updateUserInfo(@RequestBody User user) {
        return userService.updateUserInfo(user);
    }

    @RequestMapping(value = "/VarifyPost", method = RequestMethod.POST)
    public void verifyPost(@RequestParam Integer postId) {
        userService.verifyPost(postId);
    }

    /**
     * Verify Email Address
     * 
     * @param email
     * @return
     */
    @RequestMapping(value = "/verifyEmail", method = RequestMethod.GET)
    public Boolean verifyEmail(@RequestParam(required = true) String email) {
        return userService.isUserExist(email);

    }
}
