package Model;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Christian Sacancela
 */
public class ClienteDao {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean RegistrarCliente(Cliente cl){
        
        String sql = "INSERT INTO clients (ci, nombre, telefono, direccion, razon) VALUES (?, ?, ?, ?, ?)";
        
        try {

            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, cl.getCi());
            ps.setString(2, cl.getNombre());
            ps.setInt(3, cl.getTelefono());
            ps.setString(4, cl.getDireccion());
            ps.setString(5, cl.getRazon());
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            
            JOptionPane.showMessageDialog(null, e.toString());
            return false;
            
        }finally{
            try{
                
                con.close();
            
            }catch(SQLException e){
                
                System.out.println(e.toString());
            
            }
        }
        
    }
   
    public List ListarCliente(){
        
        List<Cliente> ListaCl = new ArrayList();
        String sql = "SELECT * FROM clients";
        
        try{
            
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Cliente cl = new Cliente();
                cl.setId(rs.getInt("id"));
                cl.setCi(rs.getString("ci"));
                cl.setNombre(rs.getString("nombre"));
                cl.setTelefono(rs.getInt("telefono"));
                cl.setDireccion(rs.getString("direccion"));
                cl.setRazon(rs.getString("razon"));
                ListaCl.add(cl);
                
            }  
        
        }catch(SQLException e){
            
            System.out.println(e.toString());
        
        }
        
        return ListaCl;
    
    }
    
    public boolean EliminarCliente(int id){
        
        String sql = "DELETE FROM clients WHERE id = ?";
        
        try{
            
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            return true;
            
        }catch(SQLException e){
            
            System.out.println(e.toString());
            return false;
        
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println(ex.toString());
            }
        }
    }
    
    public boolean ModificarCliente(Cliente cl){
        
        String sql = "UPDATE clients SET ci=?, nombre=?, telefono=?, direccion=?, razon=? WHERE id=?";
        
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, cl.getCi());
            ps.setString(2, cl.getNombre());
            ps.setInt(3, cl.getTelefono());
            ps.setString(4, cl.getDireccion());
            ps.setString(5, cl.getRazon());
            ps.setInt(6, cl.getId());
            ps.execute(); 
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }finally{
            try{
                con.close();
            }catch(SQLException e){
                System.out.println(e.toString());
            }
        }   
        
    }
    
    public Cliente BuscarCliente(String ci){
        Cliente cl = new Cliente();
        String sql = "SELECT * FROM clients WHERE ci = ?";
        
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, ci);
            rs = ps.executeQuery();
            if (rs.next()) {
                cl.setNombre(rs.getString("nombre"));
                cl.setTelefono(rs.getInt("telefono"));
                cl.setDireccion(rs.getString("direccion"));
                cl.setRazon(rs.getString("razon"));
            }
        }catch(SQLException e){
            System.out.println(e.toString());
        }
        return cl;
    }
    
}
