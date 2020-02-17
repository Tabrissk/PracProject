package controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import Action.*;

public class ControllerServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");  //처음에 index에서 출발하는데 sang.do?command=sangpum 으로 href링크가 됨
		CommandInter inter = null;
		String viewName = "";
		String boardview = "boardview/";
		request.setCharacterEncoding("utf-8");
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////
		try {
			if(command.equals("sangpum")){
				inter = SangpumList.instance(); 

				viewName = inter.showData(request, response);

				System.out.println("viewName은 "+ viewName);
			  request.getRequestDispatcher(viewName).forward(request, response);
				//request.getRequestDispatcher(viewName).forward(request, response) 으로 마무리, forward이니 데이터가 포함되서 전달
				//forward는 가져와서 실행했다 라고 생각해라.. !! 가져온거다 !! ++ 1226메모+ 0128메모  참고

			} 
			
			else if(command.equals("sangpuminsert")){
				
				inter = SangpumInsert.instance(); 
				
				System.out.println(request.getParameter("inserttestcode")+" & "+ request.getParameter("insertsang")+
						" & "+ request.getParameter("insertsu")+" & "+ request.getParameter("insertdan") );
				viewName = inter.showData(request, response);

				System.out.println("viewName은 "+ viewName);
				request.getRequestDispatcher(viewName).forward(request, response);

			} 
			
			else if(command.equals("sangpumdelete")){
				inter = SangpumDelete.instance(); 
	
				viewName = inter.showData(request, response);

				System.out.println("viewName은 "+ viewName);
				request.getRequestDispatcher(viewName).forward(request, response);

			} 
			
			else if(command.equals("sangpumupdate")){
				inter = SangpumUpdate.instance(); 
	
				viewName = inter.showData(request, response);

				System.out.println("viewName은 "+ viewName);
				request.getRequestDispatcher(viewName).forward(request, response);

			}
///////////////////////////////////////////////////////		
			
			else if(command.equals("sawonlist")){
				inter = SawonList.instance(); 

				viewName = inter.showData(request, response);
				
				boardview = boardview + viewName ;

				System.out.println("리턴된 처음 jsp는 "+ viewName+ "최종 폴더는"+boardview);
			  request.getRequestDispatcher(boardview).forward(request, response);

			} 
			
		} catch (Exception e) {
			System.out.println("service err : " + e);
		}
	}
}



