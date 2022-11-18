package j221117;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/j221118/LoginCheck1")

public class LoginCheck1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out=response.getWriter();
		
		String cCheck=request.getParameter("cCheck");
		
		String mid=request.getParameter("mid")==null||request.getParameter("mid").equals("")?"admin":request.getParameter("mid");
		String pwd=request.getParameter("pwd")==null||request.getParameter("pwd").equals("")?"1234":request.getParameter("pwd");
		
		ServletContext application=request.getServletContext();
		HttpSession session=request.getSession();
		
		Cookie cookie=new Cookie("cMid",mid);
		
		int viewCnt=0;
		String sessionId=(String)session.getId();
		
		if(session.getAttribute("sViewCnt")==null) {
			session.setAttribute("sViewCnt",1);
		}
		else {	
			if(!sessionId.equals(session.getId())) {
				viewCnt=(int)session.getAttribute("sViewCnt")+1;
				session.setAttribute("sViewCnt",viewCnt);
			}
		}
		
		
		int visitCnt=0;
		
		
		if(application.getAttribute("aVisitCnt")==null) { 
			application.setAttribute("aVisitCnt",1);
		}
		else {	
				visitCnt=(int)application.getAttribute("aVisitCnt")+1;
				application.setAttribute("aVisitCnt",visitCnt);
		}
		
		if(cCheck.equals("1")) {
			cookie.setPath("/");	// 웹 애플리케이션의 모든 URL에서 전송 가능하도록 설정
			cookie.setMaxAge(60*5);		// 쿠키의 만료시간을 5분으로 설정.
			response.addCookie(cookie);
			
			
			session.setAttribute("sMid",mid);
			
			out.println("<script>");
			out.println("alert('"+mid+"님 로그인 되었습니다.');");		
			out.println("location.href='"+request.getContextPath()+"/homeworks/221117/LoginCheck.jsp';");
			out.println("</script>");
		}
		
		else {
				cookie.setPath("/");
				cookie.setMaxAge(0);	// 쿠키의 만료시간을 다시 0으로 설정하므로써 쿠키를 제거한다.
				response.addCookie(cookie);	// 만료시간이 0이 된 쿠키를 다시 쿠키에 추가.	
			
				session.setAttribute("sMid",mid);
			
				out.println("<script>");
				out.println("alert('"+mid+"님 로그인 되었습니다.');");		
				out.println("location.href='"+request.getContextPath()+"/homeworks/221117/LoginCheck.jsp';");
				out.println("</script>");
		}
		
	}

}
