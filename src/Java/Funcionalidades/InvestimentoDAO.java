package Funcionalidades;

import Oracle.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Usuario.Usuario;

public class InvestimentoDAO {
    private Connection conexao;
    public void cadastrarInvestimento(Investimento investimento){
        PreparedStatement stmt = null;
        try {
            conexao = Conexao.obterConexao();
            String sql = "INSERT INTO INVESTIMENTOS ( id_investimento, nm_investimento, vl_investimento, USUARIO_ID_USUARIO)" + "VALUES (INVESTIMENTOS_SEQ.NEXTVAL, ?, ?, ?)";
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, investimento.getNomeInvestimento());
            stmt.setDouble(2, investimento.getValorInvestimento());
            stmt.setInt(3, investimento.getIdUsuario());
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Não foi possível cadastrar o investimento");
        }
    }
    public double pegarInvestimentos(Usuario usuario) {
        PreparedStatement stmt = null;
        Double todosInvestimentos = (double) 0;
        try{
            conexao = Conexao.obterConexao();
            String sql = "SELECT * FROM INVESTIMENTOS WHERE USUARIO_ID_USUARIO=?";
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, usuario.getIdUsuario());
            stmt.executeQuery();
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                Double valor = rs.getDouble("VL_DESPESA");
                todosInvestimentos += valor;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Não foi possível procurar o investimento");
        }
        return todosInvestimentos;
    }
}