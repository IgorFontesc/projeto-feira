package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class Produto {
	
		private int id;
		private String nome;
		private String preco;
		private int quantidade;
		private int total;
		

	public int getId() {
	return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}
	public int getQuantidade() {
	return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
	
	
	
		public boolean cadastrar() throws ClassNotFoundException, SQLException {
			
		try {
			
			ConectandoBd bd = new ConectandoBd();
			Connection conexao = bd.feiraOnline();
			
			String sql = "insert into tblProdutos (nome, preco) values (?, ?)";
			
			PreparedStatement statement = (PreparedStatement) conexao.prepareStatement(sql);
			statement.setString(1, this.nome);
			statement.setString(2, this.preco);
			
			statement.execute();
			statement.close();
			
		}catch (Exception e){
			System.out.println(e.getMessage());
			return false;
		}
		return true;
		
		
		}
		
		
		public void excluirProduto (int idProduto){
			
			try	{
				ConectandoBd bd = new ConectandoBd();
				Connection conexao = bd.feiraOnline();
				
				String sql = "delete from tblProdutos where idProduto =" + idProduto;
				
				PreparedStatement statement = (PreparedStatement) conexao.prepareStatement(sql);
				
				statement.execute();
				
				}catch (Exception e) {
					
				
				}
			
			}	
		
		
		
}

