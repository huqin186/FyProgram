package com.fuyuan.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.fuyuan.entity.Page;
import com.fuyuan.entity.ServiceBean;
import com.fuyuan.util.DbUtil;

@Repository
public class ServiceDaoImp {
	
	public int search(ServiceBean service, ArrayList<ServiceBean> array, Page page) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
        	//
        	String sql = " select *";
        	String where_field = "";
        	String group_field = "";
        	if (service.getCenterType() != null && !service.getCenterType().isEmpty()){
        		where_field += " where CenterType = \"" + service.getCenterType() + "\"";
			}
        	if (service.getServiceName() != null && !service.getServiceName().isEmpty()){
        		where_field += where_field.contains(" where")?" and":" where";
        		where_field += " ServiceName like \"%" + service.getServiceName() + "%\"";
			}
        	sql += " from t_service" +where_field+ " limit 100";
        	System.out.println(sql);
            con = DbUtil.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
            	ServiceBean ser = new ServiceBean();
            	ser.setServiceId(rs.getInt("ServiceId"));
            	ser.setServiceName(rs.getString("ServiceName"));
            	ser.setCenterType(rs.getString("CenterType"));
            	array.add(ser);
            }
            //
            String sqlCount = " select count(*) from t_customer";
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

}
