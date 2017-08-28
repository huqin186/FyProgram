package com.zykie.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.zykie.model.CustomerBean;
import com.zykie.model.Page;
import com.zykie.util.DbUtil;

@Repository
public class CustomerDaoImp {
	
	public int find(CustomerBean customer, ArrayList<CustomerBean> array, Page page) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
        	//
        	String sql = " select *";
        	String where_field = "";
        	String group_field = "";
        	if (customer.getCustomerName() != null && !customer.getCustomerName().isEmpty()){
        		where_field += " where CustomerName like \"%" + customer.getCustomerName() + "%\"";
			}
        	if (customer.getReceiverName() != null && !customer.getReceiverName().isEmpty()){
        		where_field += where_field.contains(" where")?" and":" where";
        		where_field += " ReceiverName like \"%" + customer.getReceiverName() + "%\"";
			}
        	if (customer.getTelephone() != null && !customer.getTelephone().isEmpty()){
        		where_field += where_field.contains(" where")?" and":" where";
        		where_field += " Telephone like \"%" + customer.getTelephone() + "%\"";
			}
        	if (page.getSidx() != null && !page.getSidx().isEmpty()){
        		group_field += " order by "+page.getSidx() + " " + page.getSord();
			}
        	sql += " from t_customer" + group_field +where_field+ " limit " + page.getStartRow()+","+page.getRows();
        	System.out.println(sql);
            con = DbUtil.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
            	CustomerBean cus = new CustomerBean();
            	cus.setCustomerId(rs.getInt("CustomerId"));
            	cus.setCustomerName(rs.getString("CustomerName"));
            	cus.setReceiverId(rs.getInt("ReceiverId"));
            	cus.setReceiverName(rs.getString("ReceiverName"));
            	cus.setAddress(rs.getString("Address"));
            	cus.setTelephone(rs.getString("Telephone"));
            	cus.setContactTime(rs.getTimestamp("ContactTime"));
            	cus.setDueDate(rs.getTimestamp("DueDate"));
            	array.add(cus);
            }
            //
            String sqlCount = " select count(*) from t_customer"+where_field;
            System.out.println(sqlCount);
			rs = stmt.executeQuery(sqlCount);
			int count = 0;
			if(rs.next()){
				count = rs.getInt(1);
			}
			return count;
        } catch (SQLException e) {
            System.out.println("数据库访问异常!");
            throw new RuntimeException(e);
        } finally {
        	DbUtil.closeAll(rs, stmt, con);
        }
    }
	
	public CustomerBean findById(int customerId) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
        	//
        	String sql = "select * from t_customer where CustomerId="+customerId;
            con = DbUtil.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            CustomerBean cus = new CustomerBean();
            while (rs.next()) {
            	cus.setCustomerId(rs.getInt("CustomerId"));
            	cus.setCustomerName(rs.getString("CustomerName"));
            	cus.setReceiverId(rs.getInt("ReceiverId"));
            	cus.setReceiverName(rs.getString("ReceiverName"));
            	cus.setAddress(rs.getString("Address"));
            	cus.setTelephone(rs.getString("Telephone"));
            	cus.setDueDate(rs.getTimestamp("DueDate"));
            	cus.setRemark(rs.getString("Remark"));
            }
			return cus;
        } catch (SQLException e) {
            System.out.println("数据库访问异常!");
            throw new RuntimeException(e);
        } finally {
        	DbUtil.closeAll(rs, stmt, con);
        }
    }

}
