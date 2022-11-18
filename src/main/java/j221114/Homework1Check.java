package j221114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j221114_Homework1Check")

public class Homework1Check extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out=response.getWriter();
		
		String[] products=request.getParameterValues("product");
		String[] prices=request.getParameterValues("price");
		String[] productCnt=request.getParameterValues("productCnt");
		int[] totPrices = new int[products.length];
		String name=request.getParameter("name");
		int totPrice=0;
		
		String strProduct="";
		String price="";
		String ProductCnt="";
		
		for(int i=0; i<products.length; i++) {
			if(products[i].trim()!="") {
				strProduct+=products[i].trim()+"/";
			}
		}
		
		for(int i=0; i<products.length; i++) {
            totPrices[i] = Integer.parseInt(prices[i]) * Integer.parseInt(productCnt[i]);
            totPrice+=totPrices[i];
        }
		
		if(!strProduct.equals("")) {
			strProduct=strProduct.substring(0,strProduct.length()-1);
		}
		else {
			out.println("<script>");
			out.println("alert('1개 이상의 상품은 등록하셔야 합니다!');");
			out.println("history.back();");
			out.println("</script>");
		}
		
		out.println("<script>");
		out.println("alert('상품 등록 완료!');");
		out.println("</script>");
		out.println("<p><a href='"+request.getContextPath()+"/homeworks/221114/homework1.jsp'>돌아가기</a></p>");
		
		out.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css\">");
		out.println("<script src=\"https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js\"></script>");
		out.println("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>");
		out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js\"></script>");
		out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>");
		out.println("<div class='container'>");
		out.println("<div class='jumbotron'>");
		out.println("<h2>"+name+"님의 구매 목록</h2>");
		for(int i=0; i<=products.length; i++) {
			out.println("<div class='alert alert-dark'>");
			out.println("<strong>"+products[i]+"</strong> 가격:"+prices[i]+" 수량:"+productCnt[i]+"");
			out.println("</div>");
		}
		
		System.out.println(price);
		out.println("<div class='alert alert-dark'>");
		out.println("<strong>총 결제 금액은?</strong>"+price+"");
		out.println("</div>");
		out.println("</div>");
		out.println("</div>");
		
	}
}
