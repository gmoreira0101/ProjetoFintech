package Funcionalidades;

import Oracle.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Usuario.Usuario;

public class GanhosExtrasDAO {
    private Connection conexao;

    public void cadastrarGanho(GanhosExtras ganhosExtras){
        PreparedStatement stmt = null;
        try {
            conexao = Conexao.obterConexao();
            String sql = "INSERT INTO ganhosextras ( id_ganho, nm_ganho, vl_ganho, Usuario_id_usuario) VALUES (1, a, 10, 1)";
            stmt = conexao.prepareStatement(sql);
            //stmt.setString(1, ganhosExtras.getNomeGanho());
            //stmt.setDouble(2, ganhosExtras.getValorGanho());
            //stmt.setInt(3,ganhosExtras.getIdUsuario());
        }catch (SQLException e){
            e.printStackTrace();
            System.err.println("Não foi possivel Cadastrar o ganho");
        } finally {
            try {
                stmt.close();
                conexao.close();
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
    }
    public double pegarGanho(Usuario usuario) {
        PreparedStatement stmt = null;
        double todosGanhos = 0.00;
        try{
            conexao = Conexao.obterConexao();
            String sql = "select * from ganhosextras where USUARIO_ID_USUARIO=?";
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, usuario.getIdUsuario());
            stmt.executeQuery();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                Double valor = rs.getDouble("VL_GANHO");
                todosGanhos += valor;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Não foi possível procurar o investimento");
        }
        return todosGanhos;
    }
}