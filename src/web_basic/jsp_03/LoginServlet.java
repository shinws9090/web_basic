package web_basic.jsp_03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login") //http://localhost:8080/web_basic/login2

@WebServlet("/jsp_03/login2") //http://localhost:8080/web_basic/jsp_03/login2
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		Enumeration<String> en =request.getParameterNames();
		
		while(en.hasMoreElements()) {
			String e = en.nextElement(); // 키값 출렭
			System.out.println(e);
		}
		
		Map<String, String[]> entry = request.getParameterMap(); //키와 밸류 전부 반환
		for(Entry<String,String[]> e :entry.entrySet()) {
			System.out.printf("%s - 5%s%n",e.getKey(),Arrays.toString(e.getValue()));
		}
		
		System.out.println("id : " + id +"  passwd"+passwd);
		
		//한글깨짐
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.printf("아이디 = %s <br> 비밀번호 = %s",id,passwd);
	}

}
