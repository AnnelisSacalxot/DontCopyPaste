package socket;

import java.util.Observable;

public class Cliente extends Observable implements Runnable {

    private int puerto;

    //constructor
    public Cliente(int puerto){
        this.puerto = puerto;
    }

    @Override
    public void run() {

        //IP
        final String HOST = "";

    }
}
