package com.baypassion.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baypassion.model.AdPost;
import com.baypassion.model.User;
import com.baypassion.repository.AdPostRepository;
import com.baypassion.repository.UserRepository;
import com.baypassion.service.UserService;
import com.baypassion.utils.IConstant;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AdPostRepository adPostRepository;

    /**
     * Verify email address
     */
    public boolean isUserExist(String email) {
        if (userRepository.findByEmail(email) != null)
            return true;
        else
            return false;
    }

    public User saveUser(User user) {
        return userRepository.save(user);
    }

    /**
     * Get User By Email And Password
     * 
     */
    public User findByEmailAndPassword(User user) {
        return userRepository.findByEmailAndPasswordAndIsAdmin(user.getEmail(), user.getPassword(),IConstant.NO);
    }

    /**
     * Get User By UserId
     * 
     * @param user
     * @return user
     */
    public User findByUserId(User user) {
        return userRepository.findOne(user.getUserId());
    }

    /**
     * Update user info.
     */
    public Boolean updateUserInfo(User user) {
        if (user.getUserId() != null) {
            user.setIsAdmin(IConstant.NO);
            saveUser(user);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    public void verifyPost(Integer postId) {
        AdPost post = adPostRepository.findOne(postId);
        post.setIsEmailVerification(IConstant.YES);
        adPostRepository.save(post);
    }

}