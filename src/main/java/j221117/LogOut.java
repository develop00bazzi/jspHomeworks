package j221117;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/j221117/LogOut")

public class LogOut extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		
		String mid=(String)session.getAttribute("sMid");
		
//		session.invalidate();
		
		out.println("<script>");
		out.println("alert('"+mid+"님 로그아웃 되었습니다.');");		
		out.println("location.href='"+request.getContextPath()+"/homeworks/221117/Login.jsp';");
		out.println("</script>");
	}

}
