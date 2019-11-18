package com.gg.sef.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ggomes
 */
public class ConnectionFactory {

    public static Connection getConnection(String nome) throws SQLException, ClassNotFoundException {
        Connection a=null;
        if (nome == "mysql" ){
            Class.forName("com.mysql.jdbc.Driver");
            a= DriverManager.getConnection("jdbc:mysql://localhost:3306/sefdb", "root", "mysql");
        }     return a;
       
 }
}