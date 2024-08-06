package Funcionalidades;

public class GanhosExtras {
    private int idGanho;
    private String nomeGanho;
    private double valorGanho;
    private int idUsuario;

    public GanhosExtras(String nomeGanho, double valorGanho, int idUsuario) {
        this.nomeGanho = nomeGanho;
        this.valorGanho = valorGanho;
        this.idUsuario = idUsuario;
    }

    public int getIdGanho() {
        return idGanho;
    }

    public void setIdGanho(int idGanho) {
        this.idGanho = idGanho;
    }

    public String getNomeGanho() {
        return nomeGanho;
    }

    public void setNomeGanho(String nomeGanho) {
        this.nomeGanho = nomeGanho;
    }

    public double getValorGanho() {
        return valorGanho;
    }

    public void setValorGanho(double valorGanho) {
        this.valorGanho = valorGanho;
    }
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

}
