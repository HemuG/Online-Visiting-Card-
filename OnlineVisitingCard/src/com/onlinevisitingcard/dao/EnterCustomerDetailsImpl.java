package com.onlinevisitingcard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.mysql.jdbc.Statement;
import com.onlinevisitingcard.entity.EnterCustomerDetails;
import com.onlinevisitingcard.util.DBConnectionUtil;

public class EnterCustomerDetailsImpl implements EnterCustomerDetailsDao{
	Connection connetion=null;
	ResultSet resultSet=null;
	PreparedStatement ps=null;
	Statement statement=null;


	@Override
	public boolean save(EnterCustomerDetails e) {
		boolean flag=false;
		int i = Integer.parseInt(e.getCopies());
		int k=i*10;
		try {
			String sql="insert into customerdetails(name,email,address,mobileno,company,copies,price,website,work,height,age,weight)values('"+e.getName()+"','"+e.getEmail()+"','"+e.getAddress()+"','"+e.getMobileno()+"','"+e.getCompany()+"','"+e.getCopies()+"','"+k+"','"+e.getWebsite()+"','"+e.getWork()+"','"+e.getHeight()+"','"+e.getAge()+"','"+e.getWeight()+"')";
			connetion=DBConnectionUtil.openConnection();
			ps=connetion.prepareStatement(sql);
			ps.executeUpdate();
			flag=true;
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	
}
