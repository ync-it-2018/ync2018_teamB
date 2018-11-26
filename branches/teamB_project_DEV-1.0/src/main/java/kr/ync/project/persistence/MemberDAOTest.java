//package kr.ync.project.persistence;
//
//import javax.inject.Inject;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import kr.ync.project.domain.MemberVO;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(
//		locations = {"file:src/main/webapp/WEB-INF/Spring/**/root-context.xml"})
//public class MemberDAOTest {
//
//	@Inject
//	private MemberDAO dao;
//	
//	@Test
//	public void testTime() throws Exception {
//		System.out.println(dao.getTime());
//	}
//	
//	@Test
//	public void testInsertMember() throws Exception {
//		MemberVO vo = new MemberVO();
//		
//		vo.setUSER_ID("user00");
//		vo.setUSER_PW("user00");
//		vo.setUSER_EMAIL("user@user.com");
//		vo.setUSER_GRADE(1);
//		
//		dao.insertMember(vo);
//	}
//}
