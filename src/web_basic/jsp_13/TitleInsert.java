package web_basic.jsp_13;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_basic.jsp_13.erp.Title;
import web_basic.jsp_13.erp.TitleService;

@WebServlet("/jsp_Shin/TitleInsert")
public class TitleInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TitleService service;
    
    public TitleInsert() {
    	service = new TitleService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int tno = Integer.parseInt(request.getParameter("tno"));
		String tname = request.getParameter("tname");
		Title title = new Title(tno,tname);
		service.addTitle(title);
		
//		request.getRequestDispatcher("TitleServlet").forward(request, response);
		response.sendRedirect("TitleServlet");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
