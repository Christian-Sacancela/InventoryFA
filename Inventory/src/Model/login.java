package Model;

/**
 *
 * @author Christian Sacancela
 */
public class login {
    
    private int id;
    private String name;
    private String correo;
    private String pass;
    private String rol;

    public login() {
    }

    public login(int id, String name, String correo, String pass, String rol) {
        this.id = id;
        this.name = name;
        this.correo = correo;
        this.pass = pass;
        this.rol = rol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
    
    
    
    
}
