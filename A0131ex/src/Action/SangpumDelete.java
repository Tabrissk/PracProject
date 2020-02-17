package Action;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import DTO.SangpumDto;

import DAO.SangpumModelDAO;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;


public class SangpumDelete implements CommandInter{
	
/*SangpumImpl.java는 commandInter의 showdata를 확장했는데 insert용 showdata를 하나 더 만듬
 * */
	static SangpumDelete impl = new SangpumDelete();
	public static SangpumDelete instance() {  
		return impl; 
		//ControllerServlet에서 SangpumImpl.instance()로    SangpumImpl의 객체를 return함
	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SangpumModelDAO model = SangpumModelDAO.instance();
		request.setCharacterEncoding("utf-8");
		SangpumDto ddto= new SangpumDto();
		String deletetestcode = new String(request.getParameter("deleteboard1_NUM").getBytes("8859_1"),"UTF-8");
		
		ddto.setBoard1_NUM(deletetestcode);
		
		model.deleteSangpum(ddto);

		System.out.println("SangpumDelete에서 SangpumModel의 delete을 실행시킴 ");
		return "ysangpum_afterwork.jsp";
	}

	


}




