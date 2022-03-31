//Los observables sirven para dar aviso en cada cambio al socket

package socket;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Observable;

/**
 *
 * @author annelis
 */
public class Servidor extends Observable implements Runnable {

    private int puerto;
    
    public Servidor(int puerto){
        this.puerto = puerto;
    }
    
    @Override
    public void run() {

        ServerSocket servidor = null;
        Socket flujoDatos = null;
        DataInputStream entrada;
        DataOutputStream salida;
        
        try{
            //creacion del socket 
            servidor = new ServerSocket(puerto);
            System.out.println("Servidor encendido");
            
            //estara escuchando peticiones
            while(true){
                
                //espera a que el cliente se conecte
                flujoDatos = servidor.accept();
                
                System.out.println("Cliente conectado");
                entrada = new DataInputStream(flujoDatos.getInputStream());
                
                //lee mensaje que envia
                String mensaje = entrada.readUTF();
                System.out.println(mensaje);
                
                //metodo de observable que notifica cuando algo cambia
                this.setChanged();
                this.notifyObservers(mensaje);
                this.clearChanged();
                
                
                //enviar mensaje
                System.out.println("Si funciona");
                
                //cerrar socket
                flujoDatos.close();
                System.out.println("Cliente desconectado");
                
            }
            
        }catch(Exception e){
        }

    }
}

   
