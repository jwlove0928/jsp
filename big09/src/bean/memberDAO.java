package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class memberDAO {
	//dao의 단계를 조금 효율젹으로 변경.
	
	public void insert(memberDTO dto) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bigdata";
			String user = "root";
			String password = "1234";
			
			Connection con = DriverManager.getConnection(url,user,password);
			String sql = "insert into member values(?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getTel());
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
