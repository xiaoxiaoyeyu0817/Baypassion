package com.baypassion.service;

import com.baypassion.model.User;

public interface UserService {

    public User saveUser(User user);

    public User findByEmailAndPassword(User user);

    public User findByUserId(User user);

    /**
     * Update user info.
     */
    public Boolean updateUserInfo(User user);

    public void verifyPost(Integer postId);

    /**
     * Verify Email
     * 
     * @param email
     * @return
     */
    public boolean isUserExist(String email);
}
