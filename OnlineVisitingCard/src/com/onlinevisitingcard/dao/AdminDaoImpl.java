package com.onlinevisitingcard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.onlinevisitingcard.entity.AdminLogin;
import com.onlinevisitingcard.util.DBConnectionUtil;

public class AdminDaoImpl implements AdminDao {

	@Override
	public String authenticate(AdminLogin adminlogin) {
		String sql="select * from admin where email=? and password=?";
		try {
			Connection connection=DBConnectionUtil.openConnection();
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, adminlogin.getEmail());
			ps.setString(2, adminlogin.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return "true";
			}
			else {
				return "false";
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return "error";
	}
	

}
