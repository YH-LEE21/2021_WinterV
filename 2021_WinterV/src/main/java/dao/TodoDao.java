package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import vo.Todo;

public class TodoDao {
	public void insertTodo(Todo todo) {
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3306/uc", "root", "java1004");
			stmt = conn.prepareStatement("insert into todo(day,memo) values(?,?)");
			stmt.setString(1, todo.getDay());
			stmt.setString(2, todo.getMemo());
			//stmt debug
			System.out.println(stmt+" <-- stmt");
			int row = stmt.executeUpdate();
			if(row == 1) {
				System.out.println(todo.getMemo()+" <--메모 입력성공");
			}else {
				System.out.println(todo.getMemo()+" <--메모 입력실패");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
