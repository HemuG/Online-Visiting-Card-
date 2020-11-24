package com.onlinevisitingcard.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.onlinevisitingcard.entity.DisplayCard;
import com.onlinevisitingcard.util.DBConnectionUtil;

public class DiaplayCardDaoImpl implements DisplayCardDao{
	Connection connection=null;
	Statement statement=null;
	ResultSet resultset=null;
	@Override
	public List<DisplayCard> get() {
		List<DisplayCard> list=null;
		DisplayCard displaycard=null;
		try {
			list=new ArrayList<DisplayCard>();
			String sql="SELECT name,email,address,mobileno,company,website,work,weight,height,age FROM customerdetails ORDER BY date_time desc LIMIT 1";
			connection=DBConnectionUtil.openConnection();
			statement=connection.createStatement();
			resultset=statement.executeQuery(sql);
			while(resultset.next()) {
			displaycard=new DisplayCard();
			displaycard.setName(resultset.getString("name"));
			displaycard.setEmail(resultset.getString("email"));
			displaycard.setMobileno(resultset.getString("mobileno"));
			displaycard.setCompany(resultset.getString("company"));
			displaycard.setAddress(resultset.getString("address"));
			displaycard.setWebsite(resultset.getString("website"));
			displaycard.setWork(resultset.getString("work"));
			displaycard.setWeight(resultset.getString("weight"));
			displaycard.setHeight(resultset.getString("height"));
			displaycard.setAge(resultset.getString("age"));
			list.add(displaycard);
		}}
		catch (Exception ex) {
		ex.printStackTrace();
		}
		
		return list;
	}
	

}
