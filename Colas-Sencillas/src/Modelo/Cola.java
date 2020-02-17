/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Usuario
 */
public class Cola {

    private Nodo cabeza;

    public Cola() {
        this.cabeza = null;
    }

    public Nodo insertar(int info) {
        Nodo cab = cabeza;
        Nodo actual = null;

        while (cab != null) {
            actual = cab;
            cab = cab.sig;
        }

        Nodo nuevo = new Nodo(info);

        if (actual == null) {
            nuevo.sig = cabeza;
            cabeza = nuevo;
        } else if (cab == null) {
            actual.sig = nuevo;
        }
        return cabeza;
    }

    public boolean retirar() {

        Nodo cab1 = cabeza;

        Nodo actual = null;
        Nodo cab = cabeza;

        /*
        while (cab != null) {
            actual = cab;
            cab = cab.sig;
        }
         */
        if (cabeza == null) {
            return false;
        } else if (cabeza.sig != null) {

            if (cab.info > 3) {

                int info = cab.info - 3;

                while (cab != null) {
                    actual = cab;
                    cab = cab.sig;
                }

                Nodo nuevo = new Nodo(info);

                if (cab == null) {
                    actual.sig = nuevo;
                }
            }

            Nodo aux = cab1.sig;
            cabeza = aux;

        } else if (cabeza.sig == null) {
            if (cabeza.info > 3) {
                cabeza.info -= 3;
            } else {
                cabeza = null;
            }
        }
        return true;
    }

    public String imprimir() {
        Nodo cab = cabeza;
        String cadena = "";

        while (cab != null) {
            cadena += cab.info + ", ";
            cab = cab.sig;
        }
        return cadena;
    }

    public Nodo getCabeza() {
        return cabeza;
    }
}
