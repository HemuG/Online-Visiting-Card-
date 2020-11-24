package com.onlinevisitingcard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;
import com.onlinevisitingcard.entity.Register;
import com.onlinevisitingcard.util.DBConnectionUtil;

public class RegisterDaoImpl implements RegisterDao{
	Connection connetion=null;
	ResultSet resultSet=null;
	PreparedStatement ps=null;
	Statement statement=null;
	@Override
	public boolean save(Register r) {
		boolean flag=false;
		try {
			String sql="INSERT INTO login(name,email,password)VALUES('"+r.getName()+"','"+r.getEmail()+"','"+r.getPassword()+"')";
			connetion=DBConnectionUtil.openConnection();
			ps=connetion.prepareStatement(sql);
			ps.executeUpdate();
			flag=true;
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return flag;
	}
	

}
