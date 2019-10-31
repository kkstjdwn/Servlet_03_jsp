package com.coo.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Random;

import org.junit.Test;

import com.coo.point.PointDAO;
import com.coo.point.PointDTO;
import com.coo.util.DBConnector;

public class PointDAOTest {
//	
//	@Test
//	public void test2() throws Exception{
//		Connection con = DBConnector.getConnection();
//		
//		assertNotNull(con);
//		
//		con.close();
//		
//	}
//
//	@Test
//	public void test() throws Exception{
//		
//		PointDAO dao = new PointDAO();
//		
//		Connection con = DBConnector.getConnection();
//		
//		PointDTO dto = new PointDTO();
//		dto.setNum(1256);
//		
//		int result = dao.delete(con, dto);
//		
//		//단정문
//		assertEquals(1, result);
//		
//		con.close();
//	}
//	
//	@Test
//	public void test3() throws Exception{
//		
//		PointDAO dao = new PointDAO();
//		int num = 26;
//		Connection con = DBConnector.getConnection();
//		PointDTO dto = dao.selectOne(con, num);
//		
//		assertNotNull(dto);
//		
//		con.close();
//	}
//	
//	@Test
//	public void test4() throws Exception{
//		
//		
//		PointDAO dao = new PointDAO();
//		Connection con = DBConnector.getConnection();
//		ArrayList<PointDTO> ar = dao.selectList(con);
//		//assertNull(ar.get(0));
//		assertEquals(0, ar.size());
//		
//		con.close();
//		
//	}
//	
//	@Test
//	public void test5() throws Exception{
//		PointDAO dao = new PointDAO();
//		Connection con = DBConnector.getConnection();
//		
//		for (int i = 0; i < 20; i++) {
//			Random rd = new Random();
//			PointDTO dto = new PointDTO();
//			dto.setName(i+"칭구");
//			dto.setKor(rd.nextInt(101));
//			dto.setEng(rd.nextInt(101));
//			dto.setMath(rd.nextInt(101));
//			dto.setSum(dto.getKor()+dto.getEng()+dto.getMath());
//			dto.setAvg(dto.getSum()/3.0);
//			dao.insert(con, dto);
//			Thread.sleep(100);
//		}
//		
//		
//		
//	}
	
	@Test
	public void test() throws Exception{
		PointDAO dao = new PointDAO();
		Connection con = DBConnector.getConnection();
		PointDTO dto = new PointDTO();
		int result = dao.update(con, dto);
		
		assertNotEquals(1, result);
		
	}
	
	
	
	
}
