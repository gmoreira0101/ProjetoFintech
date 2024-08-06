package Usuario;
import Oracle.Conexao;

import java.sql.*;
import java.time.LocalDate;

public class UsuarioDAO {
    public UsuarioDAO(){

    }
    private Connection conexao;
    public void cadastrar(Usuario usuario){
        PreparedStatement stmt = null;
        try {
            //Class.forName("oracle.jdbc.driver.OracleDriver");
            conexao = Conexao.obterConexao();
            String sql = "INSERT INTO USUARIO ( id_usuario, nr_cpf, vl_salario, nm_usuario, dt_aniversario, ds_email, ds_senha ) VALUES (SEQ_USUARIO.NEXTVAL, ?, ?, ?, ?, ?, ?)";
            stmt = conexao.prepareStatement(sql);
            stmt.setLong(1, usuario.getNumeroCPF());
            stmt.setDouble(2, usuario.getSalario());
            stmt.setString(3, usuario.getNomeUsuario());
            Date dataAniversario = Date.valueOf(usuario.getDataAniversario());
            stmt.setDate(4, dataAniversario);
            stmt.setString(5, usuario.getEmail());
            stmt.setString(6, usuario.getSenha());

            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Não foi possivel Cadastrar o cliente");
        } finally {
            try {
                stmt.close();
                conexao.close();
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
    }

    public boolean Login(String user, String password) {
        String sql = "SELECT * FROM USUARIO WHERE DS_EMAIL=? AND DS_SENHA=?";
        try (Connection conexao = Conexao.obterConexao();
             PreparedStatement stmt = conexao.prepareStatement(sql)) {

            stmt.setString(1, user);
            stmt.setString(2, password);

            try (ResultSet rst = stmt.executeQuery()) {
                if (rst.next()) {
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Não foi possível realizar o login do cliente");
        }
        return false;
    }
    public Usuario getUsuario(String user, String password){
        Usuario usuario = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conexao = Conexao.obterConexao();
            String sql = "SELECT * FROM USUARIO WHERE DS_EMAIL=? AND DS_SENHA=?";
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1,user);
            stmt.setString(2, password);
            rs = stmt.executeQuery();
            if (rs.next()){
                int idUsuario = rs.getInt("ID_USUARIO");
                String nomeUsuario = rs.getString("NM_USUARIO");
                long numeroCPF = rs.getLong("NR_CPF");
                double salario = rs.getDouble("VL_SALARIO");
                String email = rs.getString("DS_EMAIL");
                String senha = rs.getString("DS_SENHA");
                LocalDate dataAniversario = rs.getDate("DT_ANIVERSARIO").toLocalDate();
                usuario = new Usuario(idUsuario, nomeUsuario, numeroCPF, salario, email, senha, dataAniversario);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            if (rs != null){
                try {
                    rs.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
            if (stmt != null){
                try {
                    stmt.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }
        }
        return usuario;
    }
}
