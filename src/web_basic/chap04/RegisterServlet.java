package web_basic.chap04;

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

@WebServlet("/chap04/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Map<String, String[]> e = request.getParameterMap();

		if (e != null) {
			out.println("<body>");
			for (Entry<String, String[]> s : e.entrySet()) {
				if (s.getKey().equals("subject")) {
					out.print("<h3>수강 과목</h3>");
					for (int i = 0; i < s.getValue().length; i++) {
						if (s.getValue()[i].equals("eng")) {
							out.print("영어회화<br>");
						} else if (s.getValue()[i].equals("ch")) {
							out.print("중국어회화<br>");
						} else {
							out.print("일어회화<br>");
						}
					}
				}
				if (s.getKey().equals("sub")) {
					out.print("<h3>수강 분야</h3>");
					for (int i = 0; i < s.getValue().length; i++) {
						if (s.getValue()[i].equals("grm")) {
							out.print("문법<br>");
						} else if (s.getValue()[i].equals("wr")) {
							out.print("작문<br>");
						} else {
							out.print("독해<br>");
						}
					}
				}
			}
		}

//		Enumeration<String> en = request.getParameterNames();
//		while (en.hasMoreElements()) {
//			if (en.nextElement().equals("sub")) {
//				out.print("<h3>수강 과목</h3>");
//				out.printf("%s%n", request.getParameterValues(en.nextElement()));
//			} else if (en.nextElement().equals("subject")) {
//				out.print("<h3>수강 분야</h3>");
//				out.print(request.getParameterValues(en.nextElement()));
//			}
//		}
		out.println("<body>");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
