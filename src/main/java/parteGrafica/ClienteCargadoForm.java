/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package parteGrafica;

/**
 *
 * @author annelis
 */
public class ClienteCargadoForm extends javax.swing.JFrame {

    /**
     * Creates new form ClienteForm
     */
    public ClienteCargadoForm() {
        initComponents();
        this.setLocationRelativeTo(null);
    }

    ClienteCargadoForm(ClienterForm aThis, boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jRadioButton1 = new javax.swing.JRadioButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        ConsolaMuestraTextArea = new javax.swing.JTextArea();
        jLabel1 = new javax.swing.JLabel();
        EjecutarjButton = new javax.swing.JButton();
        AbrirjButton = new javax.swing.JButton();
        GuardarButton = new javax.swing.JButton();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        ReporteDefjTabbed = new javax.swing.JTabbedPane();
        jTabbedPane3 = new javax.swing.JTabbedPane();
        jTabbedPane4 = new javax.swing.JTabbedPane();
        regresarButton = new javax.swing.JButton();

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jScrollPane1.setViewportView(jTextArea1);

        jRadioButton1.setText("jRadioButton1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        ConsolaMuestraTextArea.setColumns(20);
        ConsolaMuestraTextArea.setRows(5);
        jScrollPane2.setViewportView(ConsolaMuestraTextArea);

        jLabel1.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        jLabel1.setText("Consola");

        EjecutarjButton.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        EjecutarjButton.setText("Ejecutar");
        EjecutarjButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                EjecutarjButtonActionPerformed(evt);
            }
        });

        AbrirjButton.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        AbrirjButton.setText("Abrir proyecto");
        AbrirjButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                AbrirjButtonActionPerformed(evt);
            }
        });

        GuardarButton.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        GuardarButton.setText("Guardar ");

        jTabbedPane1.setFont(new java.awt.Font("Abyssinica SIL", 0, 14)); // NOI18N
        jTabbedPane1.addTab("Reportes.def", ReporteDefjTabbed);
        jTabbedPane1.addTab("Resultados.json", jTabbedPane3);
        jTabbedPane1.addTab("Reportes", jTabbedPane4);

        regresarButton.setFont(new java.awt.Font("Abyssinica SIL", 1, 14)); // NOI18N
        regresarButton.setText("Regresar");
        regresarButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                regresarButtonActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(AbrirjButton)
                        .addGap(31, 31, 31)
                        .addComponent(GuardarButton))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 484, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(49, 49, 49)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(220, 220, 220)
                        .addComponent(EjecutarjButton)))
                .addContainerGap(14, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 475, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(regresarButton)
                .addGap(29, 29, 29))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(AbrirjButton)
                    .addComponent(GuardarButton))
                .addGap(18, 18, 18)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 144, Short.MAX_VALUE)
                .addGap(18, 18, 18)
                .addComponent(EjecutarjButton)
                .addGap(10, 10, 10)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(3, 3, 3)
                .addComponent(regresarButton))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void EjecutarjButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_EjecutarjButtonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_EjecutarjButtonActionPerformed

    private void AbrirjButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_AbrirjButtonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_AbrirjButtonActionPerformed

    private void regresarButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_regresarButtonActionPerformed
        // Volver a la ventana principal de Cliente
        ClienterForm regresar = new ClienterForm();
        regresar.setVisible(true);
        
        this.dispose();
    }//GEN-LAST:event_regresarButtonActionPerformed

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
            java.util.logging.Logger.getLogger(ClienteCargadoForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ClienteCargadoForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ClienteCargadoForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ClienteCargadoForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ClienteCargadoForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton AbrirjButton;
    private javax.swing.JTextArea ConsolaMuestraTextArea;
    private javax.swing.JButton EjecutarjButton;
    private javax.swing.JButton GuardarButton;
    private javax.swing.JTabbedPane ReporteDefjTabbed;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JRadioButton jRadioButton1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTabbedPane jTabbedPane3;
    private javax.swing.JTabbedPane jTabbedPane4;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JButton regresarButton;
    // End of variables declaration//GEN-END:variables
}
