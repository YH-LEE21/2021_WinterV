package vo;
import java.sql.*;

public class BoardMain {
	
	private  String driver = "org.mariadb.jdbc.Driver";
    public Connection con;
    public PreparedStatement pstmt;
    public ResultSet rs;
    
    
    public BoardMain() {
         try {
            Class.forName(driver);
            con = DriverManager.getConnection(
                    "jdbc:mariadb://127.0.0.1:3306/uc",
                    "root",
                    "java1004");
            if( con != null ) {
                System.out.println("DB 접속 성공");
            }
            
        } catch (ClassNotFoundException e) { 
            System.out.println("드라이버 로드 실패");
        } catch (SQLException e) {
            System.out.println("DB 접속 실패");
            e.printStackTrace();
        }
    }
    
/*	
	public static void main(String[] args) throws Exception{
		BoardMain dbcon    = new BoardMain();
		
		PreparedStatement stmt = null;
		
		stmt = dbcon.con.prepareStatement("select no,category,title,writer,createdate from board");
		
		//ResultSet : select 쿼리의 추출 결과물을 가지는 데이터 타입
		ResultSet rs = null;
		rs = stmt.executeQuery();
		boolean row = rs.next();
		System.out.println(row);
		System.out.println(rs.getInt("no"));
		System.out.println(rs.getString("category"));
		System.out.println(rs.getString("writer"));
		System.out.println(rs.getString("createdate"));
		
		row = rs.next();
		System.out.println(row);
		//2행
		System.out.println(rs.getInt("no"));
		System.out.println(rs.getString("category"));
		System.out.println(rs.getString("writer"));
		System.out.println(rs.getString("createdate"));
	}
	*/
}

