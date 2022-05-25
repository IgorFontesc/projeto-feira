package model;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

public class ConectandoBd {
	
	private String user = "root";
	private String password = "Holzie784598@";
	
			public Connection feiraOnline () throws SQLException, ClassNotFoundException
			{
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				String Url = "jdbc:mysql://localhost/feiraOnline?useTimezone=true&serverTimezone=UTC";
				java.sql.Connection conexao = DriverManager.getConnection(Url,this.user,this.password);
			
				return conexao;
				
			}
				
			
			public Produto buscar(int idProduto) {
				
				Produto pd=new Produto();
				try {
					ConectandoBd bd = new ConectandoBd();
					Connection conexao = bd.feiraOnline();

					
					String sql = "SELECT * FROM tblProdutos where idProduto ="+ idProduto;
					PreparedStatement statement = conexao.prepareStatement(sql);
					//ps.setInt(1, idaux);
					
					ResultSet rs = statement.executeQuery();
					while (rs.next()) {				
						pd.setNome(rs.getString(2)); //resolve o erro do id aparecer no lugar da primeira string
						pd.setPreco(rs.getString(3)); 
						
					}

				} catch (Exception e) {
					System.out.println("Erro em Listar:" + e);
				}
				
				return pd;
			}
			
			
			public void editar(Produto pd)
				{
					try {
						ConectandoBd bd = new ConectandoBd();
						Connection conexao = bd.feiraOnline();
						
						
						String sql = ("Update tblProdutos set nome = ? ,preco = ? where idProduto = ?");
						PreparedStatement statement = (PreparedStatement) conexao.prepareStatement(sql);
						
						statement.setString(1, pd.getNome());
						statement.setString(2, pd.getPreco()); 
						statement.setInt(3, pd.getId());
						
						statement.execute();	
				
					} catch (Exception e) {
						System.out.println("Error:" + e.getMessage());
					}
				}
			
}