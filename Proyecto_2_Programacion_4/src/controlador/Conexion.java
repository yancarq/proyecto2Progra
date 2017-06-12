package controlador;

import java.sql.DriverManager;
import java.sql.Connection;

public class Conexion {
		private String username="root";
		private String password="123456789";
		private String hostname="localhost";
		private String port="3306";
		private String dataBase="carritojsp";
		
		private String className="com.mysql.jdbc.Driver";
		private String url="jdbc:mysql://"+hostname+":"+port+"/"+dataBase;
		private Connection conn;
		
		
		public Conexion(){
			try{
				Class.forName(className);
				conn= DriverManager.getConnection(url,username,password);
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
		}
		public Connection getConenection(){
			return this.conn;
		}
}
