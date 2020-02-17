package Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Usuario
 */
public class main {

    static void retirar(Cola nCola) {
        nCola.retirar();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Cola nCola = new Cola();
        String info = "";
        int arreglo[] = {1, 1, 1, 1, 1};
        nCola.insertar(20);
        System.out.println(nCola.imprimir());
        for (int i = 0; i < 6; i++) {
            retirar(nCola);
            System.out.println(nCola.imprimir());
        }
    }
}
