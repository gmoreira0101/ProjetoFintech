package Funcionalidades;

import java.time.LocalDate;

public class Despesas {
    private int idDespesa;
    private String nomeDespesa;
    private double valorDespesa;

    private int idUsuario;


    public Despesas() {

    }
    public Despesas(String nomeDespesa, double valor, int idUsuario) {
        this.nomeDespesa = nomeDespesa;
        this.valorDespesa = valor;
        this.idUsuario = idUsuario;
    }

    public int getIdDespesa() {
        return idDespesa;
    }

    public void setIdDespesa(int idDespesa) {
        this.idDespesa = idDespesa;
    }

    public String getNomeDespesa() {
        return nomeDespesa;
    }

    public void setNomeDespesa(String nomeDespesa) {
        this.nomeDespesa = nomeDespesa;
    }
    public double getvalorDespesa() {
        return valorDespesa;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void valorDespesa(double valor) {
        this.valorDespesa = valor;
    }
    public boolean DespesaMaior;
}
