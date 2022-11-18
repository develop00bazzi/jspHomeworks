package j221117;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/j221117/DelInfo")

public class DelInfo extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out=response.getWriter();
		
		ServletContext application=request.getServletContext();
		HttpSession session=request.getSession();
		
		String mid=(String)session.getAttribute("sMid");
		
		session.invalidate();
		
		out.println("<script>");
		out.println("alert('방문자 수가 모두 삭제되었습니다!')");		
		out.println("location.href='"+request.getContextPath()+"/homeworks/221117/Login.jsp';");
		out.println("</script>");
	}

}
