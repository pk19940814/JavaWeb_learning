package com.ATMsoft.JDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by apple on 2017/3/28.
 */
public class DaoTest {
    Connection connection;
    Statement statement;
    ResultSet resultSet;

    public Connection getConnection() {
        return connection;
    }

    public Statement getStatement() {
        return statement;
    }

    public ResultSet getResultSet() {
        return resultSet;
    }

    public DaoTest(Connection connection) {
        this.connection = connection;
        try {
            statement=connection.createStatement();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void createTable() throws SQLException{
        statement.executeUpdate("DROP TABLE IF EXISTS `jdbc_test` ");
        String sql="create table jdbc_test(id int, name varchar(100)) ";
        statement.executeUpdate(sql);
        System.out.println("jdbc_test表创建完毕");
    }

    public void insert() throws SQLException{
        String sql1="insert into jdbc_test values(1,'tom')";
        String  sql2="insert into jdbc_test values(2,'st')";
        String sql3="insert into jdbc_test values(3,'999')";
        statement.addBatch(sql1);
        statement.addBatch(sql2);
        statement.addBatch(sql3);

        int[] results=statement.executeBatch();
        for (int i=0;i<results.length;i++){
            System.out.println("第"+(i+1)+"次插入返回"+results[0]+"条结果");
        }
    }

    public void select()throws SQLException{
        String sql1="select id,name from jdbc_test";
        resultSet=statement.executeQuery(sql1);
        System.out.println("---数据可询的结果---");
        System.out.println("id\tname");
        System.out.println("-----------------");
        while (resultSet.next()){
            String id=resultSet.getString("id");
            String name=resultSet.getString("name");
            System.out.println(id+"\t"+name+"\n");
        }
    }

    public static void main(String[] args) {
        Connection connection = JDBCUtil.getConnection();
        DaoTest daoTest = new DaoTest(connection);
        try {
            daoTest.createTable();
            daoTest.insert();
            daoTest.select();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            JDBCUtil.close(daoTest.getResultSet(),daoTest.getStatement(),daoTest.getConnection());
        }

    }
}
