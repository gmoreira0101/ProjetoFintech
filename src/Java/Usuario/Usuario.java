package Usuario;

import java.time.LocalDate;
import java.util.Calendar;

public class Usuario {
    private int idUsuario;
    private String nomeUsuario;
    private long numeroCPF;
    private double salario;
    private String email;
    private String senha;
    private LocalDate dataAniversario;


    public Usuario(int idUsuario, String nomeUsuario, long numeroCPF, double salario, String email, String senha, LocalDate dataAniversario) {
        this.idUsuario = idUsuario;
        this.nomeUsuario = nomeUsuario;
        this.numeroCPF = numeroCPF;
        this.salario = salario;
        this.email = email;
        this.senha = senha;
        this.dataAniversario = dataAniversario;
    }
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }

    public long getNumeroCPF() {
        return numeroCPF;
    }

    public void setNumeroCPF(long numeroCPF) {
        this.numeroCPF = numeroCPF;
    }
    public double getSalario() {
        return salario;
    }
    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public LocalDate getDataAniversario() {
        return dataAniversario;
    }

    public void setDataAniversario(LocalDate dataAniversario) {
        this.dataAniversario = dataAniversario;
    }
}
