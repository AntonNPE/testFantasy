package web.model.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ManagementSystem {

    private static Connection con;
    private static ManagementSystem mn;

    private ManagementSystem() throws SQLException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/fantasy";
            con = DriverManager.getConnection(url, "root", "root");
        } catch (ClassNotFoundException ex) {
            //log4j
        }
    }


    public static synchronized Connection getCn() throws SQLException {

        if (mn == null) {
            mn = new ManagementSystem();
            return con;
        }
        return con;
    }

}
