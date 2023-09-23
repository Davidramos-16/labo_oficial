/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BD;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Objects.Client;
import java.util.ArrayList;


/**
 *
 * @author dr264
 */
import java.util.ArrayList;
public class Conexion {
    
     private static Connection conn;
    //protected  String HOST = "jdbc:mysql://db-corto-2.cqbzkt2cy0bh.us-east-2.rds.amazonaws.com";
    protected String HOST = "jdbc:mysql://db-corto-2.cqbzkt2cy0bh.us-east-2.rds.amazonaws.com?useSSL=false";
    protected String User = "admin";
    protected String Pwd = "Corto2pln0*";
    protected String driver = "com.mysql.cj.jdbc.Driver";
    protected String string_connect = "jdbc:mysql://db-corto-2.cqbzkt2cy0bh.us-east-2.rds.amazonaws.com?useSSL=false";
    
    ArrayList<Client> ClientRecord = new ArrayList<>(); //Arraylist que almacenara a los clientes obtenidos de BD
    
    
    public Conexion() 
    {
        conn = null;
        
        try
        {
            Class.forName(driver);
            conn = DriverManager.getConnection(HOST, User, Pwd);
            if(conn != null)
            {
                System.out.println("Conexion establecida");
            }
                    
        }
        catch(ClassNotFoundException | SQLException e)
        {
            
            System.out.println("Error al conectar :" + e);
        }
        
        
    }
    
    public Connection getConnection()
    {
        return conn;
    }
    
    public void desconectar()
    {
        conn = null;
        
        if(conn == null)
        {
            System.out.println("Conexion terminada");
        }
    }
   public void select()
   {
       try
       {
             Client newClient = new Client();
           // Define your SQL query
           Statement statement = conn.createStatement();
            
           statement.execute("use clientes;");
           
           // Execute the query and get the result set
           ResultSet resultSet = statement.executeQuery("select *from select_clients;");
           //ResultSet resultSet = statement.executeQuery("DESCRIBE control_clientes; ");

            // Process the result set
            while (resultSet.next()) {
                
                boolean estado = resultSet.getBoolean("estado");
                
                newClient.setId(resultSet.getInt("id_cliente"));
                newClient.setNombre(resultSet.getString("nombre"));
                newClient.setApellido(resultSet.getString("apellido"));
                newClient.setEmail(resultSet.getString("email"));
                newClient.setTelefono(resultSet.getString("telefono"));
                newClient.setSaldo(resultSet.getDouble("saldo"));
                newClient.setEstado((byte)(estado ?1:0));
                
                ClientRecord.add(newClient);
                
                

               
            }
            
            for (Client obj : ClientRecord) {
            System.out.println("ID: " + obj.getId() + ", Name: " + obj.getNombre() + ", Apellido: " + obj.getApellido() );
        }
            
            resultSet.close();
            statement.close();
            conn.close();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
   }
   
   public void insert(String nombre_, String apellido_, String email_, String telefono_, double saldo_, byte estado_ )
   {
        try
       {
             
           // Define your SQL query
           Statement statement = conn.createStatement();
            
           statement.execute("use clientes;");
           
          CallableStatement callableStatement = conn.prepareCall("{CALL insert_client(?, ?, ?, ?, ?,?)}");
            
          callableStatement.setString(1, nombre_);
          callableStatement.setString(2, apellido_);
          callableStatement.setString(3, email_);
          callableStatement.setString(4, telefono_);
          callableStatement.setDouble(5, saldo_);
          callableStatement.setByte(6, estado_);

          callableStatement.execute();
            

                
            
            
            
            callableStatement.close();
            conn.close();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
   }
   
   public void update(int id_ ,String nombre_, String apellido_, String email_, String telefono_, double saldo_, byte estado_ )
   {
        try
       {
             
           // Define your SQL query
           Statement statement = conn.createStatement();
            
           statement.execute("use clientes;");
           
          CallableStatement callableStatement = conn.prepareCall("{CALL update_client(?, ?, ?, ?, ?,?,?)}");
            
          callableStatement.setInt(1, id_);  
          callableStatement.setString(2, nombre_);
          callableStatement.setString(3, apellido_);
          callableStatement.setString(4, email_);
          callableStatement.setString(5, telefono_);
          callableStatement.setDouble(6, saldo_);
          callableStatement.setByte(7, estado_);

          callableStatement.execute();
            

                
            
            
            
            callableStatement.close();
            conn.close();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
   }
   
   public void delete(int id_)
   {
     try
       {
             
           // Define your SQL query
           Statement statement = conn.createStatement();
            
           statement.execute("use clientes;");
           
          CallableStatement callableStatement = conn.prepareCall("{CALL update_client(?)}");
            
          callableStatement.setInt(1, id_);  
          callableStatement.execute();
            

                
            
            
            
            callableStatement.close();
            conn.close();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }  
   }
   
   
}
