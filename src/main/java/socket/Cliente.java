package socket;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Cliente implements Runnable{
    
    private int puerto;
    private String mensaje;
    
    //constructor
    public Cliente(int puerto, String mensaje){
        this.puerto = puerto;
        this.mensaje = mensaje;
    }

    @Override
    public void run() {
       
        final String host = "127.0.0.1";
        //el puerto del servidor
      //  final int puerto = 5000;
        DataInputStream entrada;
        DataOutputStream salida;
        
        try{
             
            Socket flujoDatos = new Socket(host, puerto);
            
            entrada = new DataInputStream(flujoDatos.getInputStream());
            salida = new DataOutputStream(flujoDatos.getOutputStream());
            
           salida.writeUTF(mensaje);
            
           flujoDatos.close();
            
        }catch(IOException ex){
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null , ex);
        }
        
        
        
    }
    

}
