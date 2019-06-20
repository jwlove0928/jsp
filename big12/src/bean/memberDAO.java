package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	public memberDTO select(memberDTO dto) {
		
		memberDTO dto2 = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bigdata";
			String user = "root";
			String password = "1234";
			
			Connection con = DriverManager.getConnection(url,user,password);
			System.out.println("test1");
			String sql = "select * from member where id =?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("test2");
			ps.setString(1, dto.getId());
			
			ResultSet rs = ps.executeQuery();
			System.out.println("test3");

			while(rs.next()) {
				dto2 = new memberDTO();
				dto2.setId(rs.getString(1));
				System.out.println(dto2.getId());
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto2;
	}
	
}
