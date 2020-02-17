package Action;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import DTO.SangpumDto;

import DAO.SangpumModelDAO;


public class SangpumList implements CommandInter{
	
/*SangpumImpl.java는 commandInter의 showdata를 확장해서 arraylist에 목록을 담은후 return은 또 list.jsp파일임.. 자세한 메소드의 기능은 아직 모름. 의미부여는 하지 말라고는 하심
 * */
	static SangpumList impl = new SangpumList();
	public static SangpumList instance() {
		return impl;
		//ControllerServlet에서 SangpumImpl.instance()로    SangpumImpl의 객체를 return함
	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SangpumModelDAO model = SangpumModelDAO.instance();
		/*SangpumImpl.java로 다시 돌아와서  SangpumModel.java 을 실행한후 생고 데이터를 받은  ArrayList<SangpumDto>
		 *  list를 request.setAttribute("data", list);으로 하고 return "sangpum_list.jsp";하고 끝*/
		
		ArrayList<SangpumDto> list = (ArrayList<SangpumDto>)model.selectSangpum();

		request.setAttribute("data", list);
		System.out.println("SangpumImpl에서 SangpumModel의 selectSangpum을 실행시킴, 이떄 list의 size는 "+list.size());
		return "ysangpum_list.jsp";
	}

	


}




