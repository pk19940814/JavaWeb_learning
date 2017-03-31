package com.ATMsoft.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by apple on 2017/3/28.
 */
public class JDBCUtil {
    static {
        try {
            String driverName="com.mysql.jdbc.Driver";
            Class.forName(driverName);

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static Connection getConnection(){
        Connection connection=null;
        try {
            connection= DriverManager.getConnection("jdbc:mysql://127.0.0.1/test?useUnicode=true&characterEncoding" +
                    "=utf8","root","0814");
        }catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }

    public static void close(ResultSet resultSet, Statement statement,Connection connection){
        try {
            if (resultSet!=null)
                resultSet.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        try {
            if (statement!=null)
                statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        try {
            if (connection!=null)
                connection.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
