package modelo;
import Clases.Imagenes;
import Clases.Juegos;

import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;



public class modeloJuego extends Conexion{
	
		public ArrayList<Juegos> geatAllJuegos(){
			ArrayList<Juegos> ListaJuegos= new ArrayList<>();
			Statement pst=null;
			ResultSet rs =null;
			try{
				String sql= "call selectJuegos()";
				pst=getConexion().createStatement();
				rs= pst.executeQuery(sql);
				while(rs.next()){
					ListaJuegos.add(new Juegos(rs.getInt("id_juego"),rs.getString("nombre_juego"),rs.getString("img_juegos"),rs.getString("genero_juego"),rs.getFloat("precio_juego"),rs.getString("argumento_juego"),rs.getString("requisitos_minimos_juego"),
							rs.getString("requisitos_recomendados_juego"),rs.getString("fecha_creacion_juego"),rs.getString("fecha_lanzamiento_juego")));
					
					
				}
			}catch (Exception e) {
				System.out.println("No se pudo cargar la informacion");
				e.printStackTrace();
				
			}finally{
				try{
					if(rs!=null) rs.close();
					if(pst!=null)pst.close();
					if(getConexion()!=null)getConexion().close();
					
				}catch (Exception e) {
					e.printStackTrace();System.out.println("aquii"+2);
				}
			}
			return ListaJuegos;
		}
		public  Juegos getJuegos(int id){
			Juegos juegos = null;
			PreparedStatement pst=null;
			ResultSet rs =null;
			try{
				String sql= "call selectByIdJuego(?)";
				pst=getConexion().prepareCall(sql);
				pst.setInt(1, id);
				rs= pst.executeQuery();
				while(rs.next()){
					juegos =new Juegos(rs.getInt("id_juego"),rs.getString("nombre_juego"),rs.getString("img_juegos"),rs.getString("genero_juego"),rs.getFloat("precio_juego"),rs.getString("argumento_juego"),rs.getString("requisitos_minimos_juego"),
							rs.getString("requisitos_recomendados_juego"),rs.getString("fecha_creacion_juego"),rs.getString("fecha_lanzamiento_juego"));
					
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null) rs.close();
					if(pst!=null)pst.close();
					if(getConexion()!=null)getConexion().close();
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			return juegos;
		}
		public  ArrayList<Imagenes>  getImagenJuegos(int id){
			ArrayList<Imagenes> img= new ArrayList<>();
			PreparedStatement pst=null;
			ResultSet rs =null;
			try{
				String sql= "call selectByIdImagenJuego(?)";
				pst=getConexion().prepareCall(sql);
				pst.setInt(1, id);
				rs= pst.executeQuery();
				while(rs.next()){
					img.add(new Imagenes(rs.getInt("id_imagen"),rs.getString("nombre_imagen"),rs.getString("url_imagen"),rs.getInt("id_juego")));
						
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null) rs.close();
					if(pst!=null)pst.close();
					if(getConexion()!=null)getConexion().close();
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			return img;
		}
		

}





