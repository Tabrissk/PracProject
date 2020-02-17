package Action;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import DTO.SangpumDto;

import DAO.SangpumModelDAO;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;


public class SangpumUpdate implements CommandInter{
	
/*SangpumImpl.java는 commandInter의 showdata를 확장했는데 insert용 showdata를 하나 더 만듬
 * */
	static SangpumUpdate impl = new SangpumUpdate();
	public static SangpumUpdate instance() {  
		return impl;
		//ControllerServlet에서 SangpumImpl.instance()로    SangpumImpl의 객체를 return함
	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SangpumModelDAO model = SangpumModelDAO.instance();
		request.setCharacterEncoding("utf-8");
		SangpumDto ddto= new SangpumDto();
		String updatenum = new String(request.getParameter("updatetnum").getBytes("8859_1"),"UTF-8");
		String updatename = new String(request.getParameter("updatename").getBytes("8859_1"),"UTF-8");
		String updatepass = new String(request.getParameter("updatepass").getBytes("8859_1"),"UTF-8");
		String updatesubject = new String(request.getParameter("updatesubject").getBytes("8859_1"),"UTF-8");
		String updatecontent = new String(request.getParameter("updatecontent").getBytes("8859_1"),"UTF-8");
		
		ddto.setBoard1_NUM(updatenum);
		ddto.setBoard1_NAME(updatename);
		ddto.setBoard1_PASS(updatepass);;
		ddto.setBoard1_SUBJECT(updatesubject);
		ddto.setBoard1_CONTENT(updatecontent);
		
		model.updateSangpum(ddto);

		System.out.println("SangpumImpl에서 SangpumModel의 update을 실행시킴 ");
		return "ysangpum_afterwork.jsp";
	}

	


}




