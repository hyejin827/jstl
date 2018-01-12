package com.jstl.test.dao;

import java.util.ArrayList;

import com.jstl.test.vo.UserClass;

public interface UserDao {
	ArrayList<UserClass> selectUserList();
}
