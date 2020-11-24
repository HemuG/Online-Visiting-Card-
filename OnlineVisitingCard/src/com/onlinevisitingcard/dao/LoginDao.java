package com.onlinevisitingcard.dao;

import com.onlinevisitingcard.entity.Login;

public interface LoginDao {
	String authenticate(Login login);
}
