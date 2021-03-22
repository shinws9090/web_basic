package web_baisc.jsp_ch3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login") //http://localhost:8080/web_basic/login

@WebServlet("/jsp_03/login") //http://localhost:8080/web_basic/jsp_03/login
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		System.out.println("id : " + id +"  passwd"+passwd);
		
		//한글깨짐
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.printf("아이디 = %s <br> 비밀번호 = %s",id,passwd);
	}

}
