package project;
import java.sql.Connection;
import java.sql.DriverManager;
public class ConnectionProvider {
               public static Connection getCon() {
            	   try
            	   {
            		   Class.forName("com.mysql.jdbc.Driver");
            		   //?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone=CTT
            		   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","root");
            		   
                       return con;
            	   }
            	   catch(Exception e)
            	   {
            		   //System.out.println(e+"\nConnectionrnjgjnetg");
            		  return null;
            	   }
               } 
               
}
