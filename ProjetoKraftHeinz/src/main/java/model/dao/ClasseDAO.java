package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.conexao.Conexao;

public abstract class ClasseDAO {
	protected String sql;
	protected PreparedStatement ps;
	protected ResultSet rs;
	protected Conexao conexao;
	public ClasseDAO() {
		conexao = new Conexao();
	}
}
