package com.zykie.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Repository;

import com.zykie.model.UserBean;
import com.zykie.util.DbUtil;

@Repository
public class UserDaoImp {
	
	public void findByUserName( UserBean userBean) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
        	String sql = "select * from ts_user";
            con = DbUtil.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
            	
            }
        } catch (SQLException e) {
            System.out.println("数据库访问异常!");
            throw new RuntimeException(e);
        } finally {
        	DbUtil.closeAll(rs, stmt, con);
        }
    }
	
	

}
