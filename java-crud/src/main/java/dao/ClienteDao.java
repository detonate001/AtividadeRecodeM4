package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.MySqlConnection;
import model.Cliente;

public class ClienteDao implements CRUD {
	
	private static Connection connection = MySqlConnection.createConnection();
	private static String sql;
	
	public static void create(Cliente cliente) {
		sql = "INSERT INTO clientes VALUES (null, ?, ?, ?, ?)";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			
			preparedStatement.setString(1, cliente.getCpf());
			preparedStatement.setString(2, cliente.getEmail());
			preparedStatement.setString(4, cliente.getData_nascimento());
			preparedStatement.setString(3, cliente.getSenha());
			
			preparedStatement.executeUpdate();
			
			System.out.println("--correct insert on database");
			
		} catch(SQLException e) {
				
			System.out.println("--incorrect insert on database. " + e.getMessage());
		}
		}
	
	public static void delete(int clienteId) {
		sql = "DELETE FROM clientes WHERE id_cliente = ?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setInt(1, clienteId);
			preparedStatement.executeUpdate();
			
			System.out.println("--Client deleted");
			
			
		}
		
		catch (SQLException e) {
			System.out.println("--Client not deleted(ERROR)");
			
		}
		
	};
	
	public static List<Cliente> find(String pesquisa){
		
		sql = String.format("SELECT * FROM Clientes WHERE email like '%s%%' OR cpf LIKE '%s%%' ", pesquisa, pesquisa);
		List<Cliente> clientes = new ArrayList<Cliente>();
		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			
			while (resultSet.next()) {
				
				Cliente cliente = new Cliente();
				
				cliente.setId_cliente(resultSet.getInt("id_cliente"));
				cliente.setCpf(resultSet.getString("cpf"));
				cliente.setEmail(resultSet.getString("email"));
				cliente.setData_nascimento(resultSet.getString("data_nascimento"));
				cliente.setSenha(resultSet.getString("senha"));
				
				clientes.add(cliente);
			}
			
			System.out.println("--correct find clientes");
			return clientes;
			
		} catch(SQLException e) {
			System.out.println("-- incorrect find clientes. " + e.getMessage());
		}
		
		
		return null;
	}
	
	public static void update(Cliente cliente) {
		sql = "UPDATE clientes SET cpf=?, email=?, senha=?, data_nascimento=? WHERE id_cliente=?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			
			preparedStatement.setString(1, cliente.getCpf());
			preparedStatement.setString(2, cliente.getEmail());
			preparedStatement.setString(4, cliente.getData_nascimento());
			preparedStatement.setString(3, cliente.getSenha());
			preparedStatement.setInt(5, cliente.getId_cliente());
			
			preparedStatement.executeUpdate();
			
			System.out.println("--correct update on database");
			
		} catch(SQLException e) {
				
			System.out.println("--incorrect update on database. " + e.getMessage());
		}
		}
	
	public static Cliente findByPk(int clienteID) {
		sql = String.format("SELECT * FROM Clientes WHERE id_cliente = %d ", clienteID);

		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			Cliente cliente = new Cliente();
			while (resultSet.next()) {
				
					
				cliente.setId_cliente(resultSet.getInt("id_cliente"));
				cliente.setCpf(resultSet.getString("cpf"));
				cliente.setEmail(resultSet.getString("email"));
				cliente.setData_nascimento(resultSet.getString("data_nascimento"));
				cliente.setSenha(resultSet.getString("senha"));
				
			
			}
			
			System.out.println("--correct find by pk clientes");
			return cliente;
	}
		catch(SQLException e) {
			
			System.out.println("--incorrect find by pk clientes " + e.getMessage());}
		return null;
		}
		
	
	
	
		
		
	}

