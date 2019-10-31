package com.coo.point;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PointDAO {
	PreparedStatement st;
	ResultSet rs;
	String sql;
	int result;
	
	
	public PointDAO() {
		
		this.st = null;
		this.rs = null;
		this.sql=null;
		this.result=0;
		
	}
	// insert
	public int insert(Connection con, PointDTO dto) throws Exception{
		
		
		
		sql = "insert into point values(pt_seq.nextval,?,?,?,?,?,?)";
		
		st = con.prepareStatement(sql);
		
		st.setString(1, dto.getName());
		st.setInt(2, dto.getKor());
		st.setInt(3, dto.getEng());
		st.setInt(4, dto.getMath());
		st.setInt(5, dto.getSum());
		st.setDouble(6, dto.getAvg());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	// delete
	
	public int delete(Connection con, PointDTO dto) throws Exception{
		
		this.sql = "delete point where num = ?";
		
		this.st = con.prepareStatement(sql);
		
		st.setInt(1, dto.getNum());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	// selectOne
	
	public PointDTO selectOne(Connection con, int num) throws Exception{
		PointDTO dto=null;
		
		this.sql = "select * from point where num =?";
		
		this.st = con.prepareStatement(sql);
		
		st.setInt(1, num);
		
		this.rs = st.executeQuery();
		
		if (rs.next()) {
			dto = new PointDTO();
			dto.setNum(rs.getInt("num"));
			dto.setName(rs.getString("name"));
			dto.setKor(rs.getInt(3));
			dto.setEng(rs.getInt(4));
			dto.setMath(rs.getInt(5));
			dto.setSum(rs.getInt(6));
			dto.setAvg(rs.getDouble(7));
			
		}
		
		
		rs.close();
		st.close();
		
		
		return dto;
	}
	
	
	//selectList
	
	public ArrayList<PointDTO> selectList(Connection con) throws Exception{
		
		ArrayList<PointDTO> ar= new ArrayList<PointDTO>();
		
		this.sql = "select * from point order by num desc";
		this.st = con.prepareStatement(sql);
		this.rs = st.executeQuery();
		while (rs.next()) {
			PointDTO dto = new PointDTO();
			dto.setNum(rs.getInt(1));
			dto.setName(rs.getString(2));
			dto.setKor(rs.getInt(3));
			dto.setEng(rs.getInt(4));
			dto.setMath(rs.getInt(5));
			dto.setSum(rs.getInt(6));
			dto.setAvg(rs.getDouble(7));
			ar.add(dto);
		}
		
		
		rs.close();
		st.close();
		
		return ar;
		
	}
	
	
	//update
	
	public int update(Connection con, PointDTO dto) throws Exception{
		
		this.sql = "update point set name = ?, kor = ?, eng = ?, math = ?, sum = ?, avg = ? where num = ?";
		
		this.st = con.prepareStatement(sql);
		st.setString(1, dto.getName());
		st.setInt(2, dto.getKor());
		st.setInt(3, dto.getEng());
		st.setInt(4, dto.getMath());
		st.setInt(5, dto.getSum());
		st.setDouble(6, dto.getAvg());
		st.setInt(7, dto.getNum());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	
	
	
	
}
