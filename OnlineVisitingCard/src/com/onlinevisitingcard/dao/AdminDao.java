package com.onlinevisitingcard.dao;

import com.onlinevisitingcard.entity.AdminLogin;

public interface AdminDao {
	String authenticate(AdminLogin adminlogin);

}
