package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class CommentDAO {
	public boolean insert(String content, Integer star, String author) throws NamingException, SQLException {
		Connection conn = ConnectionPool.get();
		PreparedStatement stmt = null;
		try {
			String sql = "INSERT INTO comment(content, star, author) VALUES(?, ?, ?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, content);
			stmt.setInt(2, star);
			stmt.setString(3, author);
			int count = stmt.executeUpdate();
			return (count == 1) ? true : false;
			
		} finally {
			if (stmt != null) stmt.close(); 
			if (conn != null) conn.close();
		}
	}
	
	public ArrayList<CommentObj> getList() throws NamingException, SQLException {
		Connection conn = ConnectionPool.get();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM comment ORDER BY id DESC";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			ArrayList<CommentObj> comments = new ArrayList<CommentObj>();
			while(rs.next()) {
				comments.add(new CommentObj(rs.getString("id"), rs.getString("content"), rs.getInt("star"), 
						rs.getString("author")));
			}
			return comments;
			
		} finally {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
	}
}
