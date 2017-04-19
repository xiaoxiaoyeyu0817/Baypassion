package com.baypassion.serviceImpl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
		//user.setPassword(MD5Encode(user.getPassword()));
		return userRepository.save(user);
	}

//	private static String MD5Encode(String pwd) {
//		try {
//			MessageDigest md = MessageDigest.getInstance("MD5");
//			md.update(pwd.getBytes());
//			byte b[] = md.digest();
//			int i;
//			StringBuffer buf = new StringBuffer("");
//			for (int offset = 0; offset < b.length; offset++) {
//				i = b[offset];
//				if (i < 0) {
//					i += 256;
//				}
//				if (i < 16) {
//					buf.append("0");
//				}
//				buf.append(Integer.toHexString(i));
//			}
//			return buf.toString();
//		} catch (NoSuchAlgorithmException e) {
//			e.printStackTrace();
//			return null;
//		}
//	}

	/**
	 * Get User By Email And Password
	 * 
	 */
	public User findByEmailAndPassword(User user) {
		//user.setPassword(MD5Encode(user.getPassword()));
		return userRepository.findByEmailAndPasswordAndIsAdmin(user.getEmail(), user.getPassword(), IConstant.NO);
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