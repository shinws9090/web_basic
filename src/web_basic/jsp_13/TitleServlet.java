package web_basic.jsp_13;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_basic.jsp_13.erp.Title;
import web_basic.jsp_13.erp.TitleService;

@WebServlet("/jsp_Shin/TitleServlet")
public class TitleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;
       
	
	
	public TitleServlet() {
		service = new TitleService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		List<Title> list = service.showTitles();
		
		request.setAttribute("list",list);
		request.getRequestDispatcher("TitleSelect.jsp").include(request, response);
		/*
		 * PrintWriter out = response.getWriter(); for(Title a :list) {
		 * out.printf("%s - %s<br>",a.getTno(),a.getTname()); }
		 */
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
