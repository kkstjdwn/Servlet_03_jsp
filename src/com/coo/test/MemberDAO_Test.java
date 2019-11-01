package com.coo.test;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

import com.coo.member.MemberDAO;
import com.coo.member.MemberDTO;
import com.coo.util.DBConnector;

public class MemberDAO_Test {

	@Test
	public void test() throws Exception{
		Connection con = DBConnector.getConnection();
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		/**회원가입*/
//		dto.setId("coo");
//		dto.setPw("coo");
//		dto.setName("coo");
//		dto.setEmail("coo@coo.com");
//		dto.setPhone("0-26-79");
//		dto.setLev(4);
//		
//		int result = dao.memberJoin(con, dto);
//		
//		assertEquals(1, result);
		
		
		/**로그인*/
//		dto = dao.memberLogin(con, "coo22", "coo");
//		
//		assertNotNull(dto);

		/**업데이트*/
		dto = dao.memberLogin(con, "coo", "coo");
		dto.setPw("coo2");
		int result = dao.memberUpdate(con, dto);
		
		assertEquals(1, result);
	}

}
