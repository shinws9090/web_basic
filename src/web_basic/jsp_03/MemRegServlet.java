package web_basic.jsp_03;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/jsp_03/memReg1")
public class MemRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("service"+ request.getMethod());
		PrintWriter out = response.getWriter();
		if(request.getMethod().contentEquals("GET")) {
//			doGet(request,response);

			out.println("get");
		}else {
//			doPost(request,response);
			out.println("Post");
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);

	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		if (request.getMethod().equalsIgnoreCase("get")) {
			String name = request.getParameter("name");

			PrintWriter out = response.getWriter();
			out.println("name : " + name + "<br>");

		} else {
			String name = request.getParameter("name");
			String addr = request.getParameter("addr");
			String tel = request.getParameter("tel");
			String hobby = request.getParameter("hobby");

			PrintWriter out = response.getWriter();
			out.println("name : " + name + "<br>");
			out.println("addr : " + addr + "<br>");
			out.println("tel : " + tel + "<br>");
			out.println("hobby : " + hobby + "<br>");
		}
	}

}
