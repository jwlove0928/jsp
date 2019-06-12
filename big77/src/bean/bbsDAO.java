package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class bbsDAO {
	DBConnectionMgr mgr;
	
	public bbsDAO() {
		mgr = DBConnectionMgr.getInstance();
	}
	public void insert(bbsDTO dto) throws Exception {
		
		Connection con = mgr.getConnection();
		
		String sql = "insert into bbs values(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getTitle());
		ps.setString(3, dto.getContent());
		ps.setString(4, dto.getEtc());
		
		ps.executeUpdate();
	}
	
	public void update(bbsDTO dto) throws Exception {
		
		Connection con = mgr.getConnection();
		
		String sql = "update bbs set title =?, content =?, etc=? where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getTitle());
		ps.setString(2, dto.getContent());
		ps.setString(3, dto.getEtc());
		ps.setString(4, dto.getId());
		
		ps.executeUpdate();
	}
	
	public void delete(bbsDTO dto) throws Exception {
		
		Connection con = mgr.getConnection();
		
		String sql = "delete from bbs where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getId());
		
		ps.executeUpdate();
	}
	
	public bbsDTO select(bbsDTO dto) throws Exception {
		
		bbsDTO dto2 = null;
		Connection con = mgr.getConnection();
		
		String sql = "select * from bbs where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			dto2 = new bbsDTO();
			dto.setId(rs.getString(1));
			dto.setTitle(rs.getString(2));
			dto.setContent(rs.getString(3));
			dto.setEtc(rs.getString(4));
		}
		return dto2;
	}
}