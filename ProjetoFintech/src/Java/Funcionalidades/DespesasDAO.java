package Funcionalidades;

import Oracle.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Usuario.Usuario;

public class DespesasDAO {
    private Connection conexao;

    public void cadastrar(Despesas despesas) {
        PreparedStatement stmt = null;
        try {
            conexao = Conexao.obterConexao();
            String sql = "INSERT INTO DESPESAS ( id_despesa, nm_despesa, vl_despesa, Usuario_id_usuario) VALUES (SEQ_DESPESAS.NEXTVAL, ?, ?, ?)";
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, despesas.getNomeDespesa());
            stmt.setDouble(2, despesas.getvalorDespesa());
            stmt.setInt(3, despesas.getIdUsuario());
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Não foi possivel cadastrar a despesa");
        } finally {
            try {
                stmt.close();
                conexao.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public double pegarDespesas(Usuario usuario) {
        PreparedStatement stmt = null;
        Double todasDespesas = 0.00;
        try {
            conexao = Conexao.obterConexao();
            String sql = "SELECT * FROM DESPESAS WHERE USUARIO_ID_USUARIO=?";
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, usuario.getIdUsuario());
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                Double valor = rs.getDouble("VL_DESPESA");
                todasDespesas += valor;
            }


        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Não foi possível procurar o investimento");
        }
        return todasDespesas;
    }
}