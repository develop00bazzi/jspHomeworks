package j221115;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j221116/Main")

public class Main extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String sw=request.getParameter("sw")==null?"":request.getParameter("sw");
		
		String pName=request.getParameter("pName")==null?"":request.getParameter("pName");
		String pPrice=request.getParameter("pPrice")==null?"":request.getParameter("pPrice");
		String pStock=request.getParameter("pStock")==null?"":request.getParameter("pStock");
		
		ProductVO vo=new ProductVO(pName, pPrice, pStock);
		
		String viewPage = "/homeworks/221115";
		if(sw.equals("pUpdate")) viewPage += "/pUpdate.jsp";
		else if(sw.equals("pList")) viewPage += "/pList.jsp";
		else viewPage += "/main.jsp";
		
		request.setAttribute("vo", vo);
		
		request.getRequestDispatcher(viewPage).forward(request, response);
	}

}
