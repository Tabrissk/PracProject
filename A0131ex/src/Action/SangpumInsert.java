package Action;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import DTO.SangpumDto;

import DAO.SangpumModelDAO;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;


public class SangpumInsert implements CommandInter{
	
/*SangpumImpl.java는 commandInter의 showdata를 확장했는데 insert용 showdata를 하나 더 만듬
 * */
	static SangpumInsert impl = new SangpumInsert();
	public static SangpumInsert instance() { 
		return impl;
		//ControllerServlet에서 SangpumImpl.instance()로    SangpumImpl의 객체를 return함
	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		SangpumModelDAO model = SangpumModelDAO.instance();
		SangpumDto ddto= new SangpumDto();
		String insertnum = new String(request.getParameter("insertnum").getBytes("8859_1"),"UTF-8");
		String insertname = new String(request.getParameter("insertname").getBytes("8859_1"),"UTF-8");
		String insertpass = new String(request.getParameter("insertpass").getBytes("8859_1"),"UTF-8");
		String insertsubject = new String(request.getParameter("insertsubject").getBytes("8859_1"),"UTF-8");
		String insertcontent = new String(request.getParameter("insertcontent").getBytes("8859_1"),"UTF-8");
		
		ddto.setBoard1_NUM(insertnum);
		ddto.setBoard1_NAME(insertname);
		ddto.setBoard1_PASS(insertpass);;
		ddto.setBoard1_SUBJECT(insertsubject);
		ddto.setBoard1_CONTENT(insertcontent);
		
		model.insertSangpum(ddto);

		System.out.println("SangpumImpl에서 SangpumModel의 insert을 실행시킴 ");
		return "ysangpum_afterwork.jsp";
	}

	


}




