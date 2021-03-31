package web_basic.chap04;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chap04/summurStudyServlet")
public class SummurStudyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();

//		Map<String, String[]> map = request.getParameterMap();
//		
//		for(Entry<String, String[]> a : map.entrySet()) {
//			out.print("<br>"+a.getKey());
//		}

		/*
		 * id passwd test name stdno select file color interest intro
		 */
		out.print("<html>");
		out.print("<br>아이디 : " + request.getParameter("id"));
		out.print("<br>비밀번호 : " + request.getParameter("passwd"));
		out.print("<br>수강날짜 : " + request.getParameter("test"));
		out.print("<br>이름 : " + request.getParameter("name"));
		out.print("<br>학번 : " + request.getParameter("stdno"));
		String select = request.getParameter("select");
		switch (select) {
		case "archi":
			select = "건축공학과";
			break;
		case "mechanic":
			select = "기계공학과";
			break;
		case "indust":
			select = "산업공학과";
			break;
		case "elec":
			select = "전기전자공학과";
			break;
		case "computer":
			select = "컴퓨터공학과";
			break;
		case "chemical":
			select = "화학공학과";
			break;
		}
		out.print("<br>학과 : " + select);
		out.print("<br>파일 : " + request.getParameter("file"));
		out.print("<br>색상 : " + request.getParameter("color"));
		
		String interest = request.getParameter("interest");
		switch (interest) {
		case "gramar":
			interest = "문법";
			break;
		case "mechanic":
			interest = "어휘";
			break;
		case "indust":
			interest = "회화";
			break;
		case "elec":
			interest = "리스닝";
			break;
		case "computer":
			interest = "뉴스청취";
			break;
		}
		out.print("<br>수강과목 : " + interest);

		String intro = request.getParameter("intro");
		out.print("<br>메모 : " + intro.replace("\r\n", "<br>"));

		out.print("</html>");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
