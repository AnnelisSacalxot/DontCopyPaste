/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package parteGrafica;

import java.util.Observable;
import java.util.Observer;
import socket.Cliente;
import socket.Servidor;

/**
 *
 * @author annelis
 */
public class ClienterForm extends javax.swing.JFrame implements Observer {

    /**
     * Creates new form ServidorForm
     */
    public ClienterForm() {
        initComponents();
       this.setLocationRelativeTo(null);
       
       this.getRootPane().setDefaultButton(this.AnalizarjButton);
       
       //para ejecutar con los sockets
       Servidor servidor = new Servidor(5000);
       servidor.addObserver(this);
       Thread hilo = new Thread(servidor);
       hilo.start();
       
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        AbrirjButton = new javax.swing.JButton();
        GuardarjButton = new javax.swing.JButton();
        File1Button = new javax.swing.JButton();
        File2jButton = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        AnalizarjButton = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 255, 204));

        AbrirjButton.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        AbrirjButton.setText("Abrir proyecto");
        AbrirjButton.setToolTipText("");

        GuardarjButton.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        GuardarjButton.setText("Guardar");

        File1Button.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        File1Button.setText("Choose File 1");
        File1Button.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                File1ButtonActionPerformed(evt);
            }
        });

        File2jButton.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        File2jButton.setText("Choose File 2");

        jLabel1.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        jLabel1.setText("Proyecto 1");

        jLabel2.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        jLabel2.setText("Proyecto 2");

        AnalizarjButton.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        AnalizarjButton.setText("Analizar");
        AnalizarjButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                AnalizarjButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(55, 55, 55)
                .addComponent(File1Button)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 73, Short.MAX_VALUE)
                .addComponent(File2jButton)
                .addGap(70, 70, 70))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(67, 67, 67)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addGap(85, 85, 85))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(AbrirjButton)
                        .addGap(31, 31, 31)
                        .addComponent(GuardarjButton))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(149, 149, 149)
                        .addComponent(AnalizarjButton, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(AbrirjButton)
                    .addComponent(GuardarjButton))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 69, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(File1Button)
                    .addComponent(File2jButton))
                .addGap(47, 47, 47)
                .addComponent(AnalizarjButton)
                .addGap(39, 39, 39))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void File1ButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_File1ButtonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_File1ButtonActionPerformed

    private void AnalizarjButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_AnalizarjButtonActionPerformed
        // configurar para que me abra la ventana de Cliente Cargado
        ClienteCargadoForm abrirVentana = new ClienteCargadoForm(); 
        abrirVentana.setVisible(true);
        
        this.dispose();
        
        //si existe algun error se envia al servidor 
        //Cliente notificacion = new Cliente(6000, mensaje);
    }//GEN-LAST:event_AnalizarjButtonActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ClienterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ClienterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ClienterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ClienterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ClienterForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton AbrirjButton;
    private javax.swing.JButton AnalizarjButton;
    private javax.swing.JButton File1Button;
    private javax.swing.JButton File2jButton;
    private javax.swing.JButton GuardarjButton;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    // End of variables declaration//GEN-END:variables

    @Override
    public void update(Observable o, Object arg) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}