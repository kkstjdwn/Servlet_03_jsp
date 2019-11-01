package com.coo.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	Connection con;
	PreparedStatement st;
	ResultSet rs;
	String sql;
	int result;
	
	public MemberDAO() {
		con=null;
		st=null;
		rs=null;
		sql=null;
		result = 0;

	}
	
	
	public int memberJoin(Connection con, MemberDTO dto) throws Exception{
		
		this.sql = "insert into member values(?,?,?,?,?,?)";
		st = con.prepareStatement(sql);
		st.setString(1, dto.getId());
		st.setString(2, dto.getPw());
		st.setString(3, dto.getName());
		st.setString(4, dto.getEmail());
		st.setString(5, dto.getPhone());
		st.setInt(6, 3);
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	public MemberDTO memberLogin(Connection con, String id, String pw) throws Exception{
		MemberDTO dto=null;
		
		this.sql = "select * from member where id=? and pw = ?";
		this.st = con.prepareStatement(sql);
		st.setString(1, id);
		st.setString(2, pw);
		this.rs = st.executeQuery();
		if(rs.next()) {
			dto = new MemberDTO();
			dto.setId(rs.getString(1));
			dto.setPw(rs.getString(2));
			dto.setName(rs.getString(3));
			dto.setPhone(rs.getString(4));
			dto.setEmail(rs.getString(5));
			dto.setLev(rs.getInt(6));
			
		}
		
		rs.close();
		st.close();
		
		
		return dto;
	}
	
	public int memberUpdate(Connection con,MemberDTO dto) throws Exception{
		
		this.sql = "update member  set pw = ?, name = ?, email=?, phone =?, lev = ? where id = ?";
		st = con.prepareStatement(sql);
		st.setString(1, dto.getPw());
		st.setString(2, dto.getName());
		st.setString(3, dto.getEmail());
		st.setString(4, dto.getPhone());
		st.setInt(5, dto.getLev());
		st.setString(6, dto.getId());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}

}
