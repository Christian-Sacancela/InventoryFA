package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Christian Sacancela
 */
public class LoginDao {
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    
    public login log(String correo, String pass){
        
        login l = new login();
        String sql = "SELECT * FROM users WHERE correo = ? AND pass = ?";
        
        try { 
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            
            if(rs.next()){
                l.setId(rs.getInt("id"));
                l.setName(rs.getNString("name"));
                l.setCorreo(rs.getNString("correo"));
                l.setPass(rs.getNString("pass"));
                l.setRol(rs.getString("rol"));
            }
            
        }catch (SQLException e){
            System.out.println(e.toString());
        }
        
        return l;
    
    }
    
    public boolean Registrar(login reg){
        String sql = "INSERT INTO users (name, correo, pass, rol) VALUES (?,?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, reg.getName());
            ps.setString(2, reg.getCorreo());
            ps.setString(3, reg.getPass());
            ps.setString(4, reg.getRol());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        }
    }
    
    
}
