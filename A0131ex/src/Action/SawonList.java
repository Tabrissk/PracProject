package Action;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import DTO.SawonDto;

import DAO.SawonModelDAO;


public class SawonList implements CommandInter{
	
	static SawonList impl = new SawonList();
	public static SawonList instance() {
		return impl;
		//ControllerServlet에서 SangpumImpl.instance()로    SangpumImpl의 객체를 return함
	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SawonModelDAO model = SawonModelDAO.instance();

		ArrayList<SawonDto> list = (ArrayList<SawonDto>)model.selectSawon();

		request.setAttribute("data", list);
		System.out.println("SangpumImpl에서 SawonModel의 selectSawon을 실행시킴, 이떄 list의 size는 "+list.size());
		return "ysawon_list.jsp";
	}

	


}




