package com.coo.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.ArrayList;

import org.junit.Test;

import com.coo.notice.NoticeDAO;
import com.coo.notice.NoticeDTO;
import com.coo.util.DBConnector;

public class NoticeDAO_Test {

	@Test
	public void test()  throws Exception{
		NoticeDAO dao = new NoticeDAO();
		NoticeDTO dto = new NoticeDTO();
		Connection con = DBConnector.getConnection();
		
		int num = dao.delete(con, 36);
		
		assertEquals(1, num);
		
	}
	
//	@Test
//	public void test2() throws Exception{
//		Connection con = DBConnector.getConnection();
//		NoticeDAO dao = new NoticeDAO();
//		NoticeDTO dto=null;
//		int result = 0;
//		for (int i = 1; i < 20; i++) {
//			dto = new NoticeDTO();
//			dto.setTitle("제목을정하는건어려워 "+i);
//			dto.setWriter("작성자"+i);
//			dto.setContents("ㄴㅁ쟈ㅡㅇ2ㅜㅏ1ㅓ2ㅜㅏㅓ루ㅏ13ㅓㅇ1ㅏ23으1ㅣ2ㅏ ㅇ1ㅣ2ㅏㅢ차1ㅢ2ㅏ드1ㅣ2ㅏ3ㅡ1ㅣ2ㅏ으1ㅣ2ㅏㅡ1ㅣ2ㅏ3ㅢ1ㅏ2ㅡ이1ㅏ2ㅢ3ㅏ1ㅡ2ㅣㅏ드1ㅣㅏㅡㅊ1ㅣㅏ2ㅡㄷ미저3ㅜㅁ너ㅜ림젇");
//			result = dao.insert(con, dto);
//			Thread.sleep(500);
//		}
//		
//		
//		
//		assertEquals(1, result);
//	}

}
