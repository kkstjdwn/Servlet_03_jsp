package com.coo.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class NoticeDAO {
	
	NoticeDTO dto;
	Connection con;
	PreparedStatement st;
	ResultSet rs;
	String sql;
	int result;
	
	public NoticeDAO() {
	this.dto = null;
	this.con = null;
	this.st = null;
	this.rs = null;
	this.sql = null;
	this.result = 0;
	
	}
	
	
	public ArrayList<NoticeDTO> selectList(Connection con) throws Exception{
		ArrayList<NoticeDTO> ar = new ArrayList<NoticeDTO>();
		this.sql = "select * from notice order by num desc";
		this.st = con.prepareStatement(sql);
		this.rs = st.executeQuery();
		
		while (rs.next()) {
			this.dto = new NoticeDTO();
			
			dto.setNum(rs.getInt(1));
			dto.setTitle(rs.getString(2));
			dto.setWriter(rs.getString(3));
			dto.setContents(rs.getString(4));
			dto.setReg_date(rs.getDate(5));
			dto.setHit(rs.getInt(6));
			
			ar.add(dto);
			
		}
		
		rs.close();
		st.close();
		
		return ar;
		
	}
	
	public int noticeWrite(Connection con, NoticeDTO dto) throws Exception{
		
		sql = "insert into notice values(board_seq.nextval, ?, ?, ?, sysdate,0)";
		this.st = con.prepareStatement(sql);
		st.setString(1, dto.getTitle());
		st.setString(2, dto.getWriter());
		st.setString(3, dto.getContents());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	
	
	public NoticeDTO selectOne(Connection con,int num) throws Exception{
		
		this.sql = "select * from notice where num = ?";
		
		this.st = con.prepareStatement(sql);
		
		st.setInt(1, num);
		
		this.rs = st.executeQuery();
		
		if (rs.next()) {
			
			this.dto = new NoticeDTO();
			dto.setNum(num);
			dto.setTitle(rs.getString(2));
			dto.setWriter(rs.getString(3));
			dto.setContents(rs.getString(4));
			dto.setReg_date(rs.getDate(5));
			dto.setHit(rs.getInt(6));
			
		}
		
		rs.close();
		st.close();
		
		
		return dto;
	}
	
	public int update(Connection con, NoticeDTO dto) throws Exception{
		
		this.sql = "update notice set title=?, contents=? where num =?";
		this.st = con.prepareStatement(sql);
		st.setString(1, dto.getTitle());
		st.setString(2, dto.getContents());
		st.setInt(3, dto.getNum());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	public int delete(Connection con, int num) throws Exception{
		
		this.sql = "delete notice where num = ?";
		this.st = con.prepareStatement(sql);
		st.setInt(1, num);
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}

}
