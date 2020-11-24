package com.onlinevisitingcard.dao;

import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

import com.onlinevisitingcard.entity.Login;
import com.onlinevisitingcard.util.DBConnectionUtil;

public class LoginDaoImpl implements LoginDao{

	@Override
	public String authenticate(Login login) {
		String sql="select * from login where email=? and password=?";
		try{
			Connection connection=DBConnectionUtil.openConnection();
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, login.getEmail());
			ps.setString(2,login.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				return "true";
			}
			else{
				return "false";
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "error";
	}
		

}