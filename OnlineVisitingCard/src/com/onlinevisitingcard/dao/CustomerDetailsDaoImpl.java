package com.onlinevisitingcard.dao;

import java.util.ArrayList;
import java.util.*;
import java.sql.*;
import com.onlinevisitingcard.entity.CustomerDetails;
import com.onlinevisitingcard.util.DBConnectionUtil;

public class CustomerDetailsDaoImpl implements CustomerDetailsDao {

	
		Connection connection=null;
		Statement statement=null;
		ResultSet resultSet=null;
	@Override
	public List<CustomerDetails> get() {
		List<CustomerDetails> list=null;
		CustomerDetails customerdetails=null;
		try {
			list=new ArrayList<CustomerDetails>();
			String sql="select * from customerdetails order by date_time desc";
			connection=DBConnectionUtil.openConnection();
			statement=connection.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next()) {
				customerdetails=new CustomerDetails();
				customerdetails.setName(resultSet.getString("name"));
				customerdetails.setEmail(resultSet.getString("email"));
				customerdetails.setAddress(resultSet.getString("address"));
				customerdetails.setCompany(resultSet.getString("company"));
				customerdetails.setCopise(resultSet.getInt("copies"));
				customerdetails.setMobileno(resultSet.getString("mobileno"));
				customerdetails.setPrice(resultSet.getInt("price"));
				customerdetails.setWebsite(resultSet.getString("website"));
				customerdetails.setWork(resultSet.getString("work"));
				customerdetails.setHeight(resultSet.getString("height"));
				customerdetails.setAge(resultSet.getString("age"));
				customerdetails.setWeight(resultSet.getString("weight"));
				list.add(customerdetails);
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}





}
