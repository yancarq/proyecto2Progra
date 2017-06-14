package modelo;

import java.sql.DriverManager;
import java.sql.Connection;

public class Conexion {
		private String username="root";
		private String password="123456789";
		private String hostname="localhost";
		private String port="3306";
		private String dataBase="carritojsp";
		
		private String classname = "com.mysql.jdbc.Driver";
		private String url="jdbc:mysql://localhost:3306/carritojsp";
		private Connection conn;
		
		
		public Conexion(){
			 conn=null;
				
			try{
				
				System.out.println("la conexion con la base datos");
				Class.forName(classname);
			}catch (Exception e) {
				e.printStackTrace();
			}try{
				System.out.println("la 222 con la base datos");
				this.conn= DriverManager.getConnection(url,username,password);
				System.out.println("Se Establecio la conexion con la base datos");
			}catch (Exception e) {
				System.out.println("No se Establecio la conexion con la base datos");
				System.out.println(e.getMessage());
			}
			
		}
		public Connection getConexion(){
			return this.conn;
		}
}
