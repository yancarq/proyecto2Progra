package modelo;
import Clases.Juegos;
import controlador.Conexion;


import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public class modeloJuego extends Conexion{
	
		public ArrayList<Juegos> geatAllJuegos(){
			ArrayList<Juegos> ListaJuegos= new ArrayList<>();
			PreparedStatement pst=null;
			ResultSet rs =null;
			try{
				String sql= "call selectJuegos()";
				pst=getConenection().prepareCall(sql);
				rs= pst.executeQuery();
				while(rs.next()){
					ListaJuegos.add(new Juegos(rs.getInt("id_juego"),rs.getString("nombre_juego"),rs.getString("img_juegos"),rs.getString("genero_juego"),rs.getFloat("precio_juego"),rs.getString("argumento_juego"),rs.getString("requisitos_minimos_juego"),
							rs.getString("requisitos_recomendados_juego"),rs.getString("fecha_creacion_juego"),rs.getString("fecha_lanzamiento_juego")));
					
					
				}
			}catch (Exception e) {
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null) rs.close();
					if(pst!=null)pst.close();
					if(getConenection()!=null)getConenection().close();
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			return ListaJuegos;
		}
		public  Juegos getJuesgos(int id){
			Juegos juegos = null;
			PreparedStatement pst=null;
			ResultSet rs =null;
			try{
				String sql= "call selectByIdJuego(?)";
				pst=getConenection().prepareCall(sql);
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
					if(getConenection()!=null)getConenection().close();
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			return juegos;
		}
		
		/*public static void main(String[] args){
			modeloJuego mj= new modeloJuego();
			for(Juegos j: mj.geatAllJuegos()){
				System.out.println(j.getNombre_juego());
			} 
			
		}*/
		
}





