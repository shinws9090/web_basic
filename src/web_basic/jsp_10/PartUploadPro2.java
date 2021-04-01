package web_basic.jsp_10;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class PartUploadPro1
 */
@WebServlet("/jsp_10/partUploadPro2")
@MultipartConfig(fileSizeThreshold = 0, location = "C:/workspace_web/web_basic/WebContent/upload")
public class PartUploadPro2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PartUploadPro2() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String writer = request.getParameter("writer");
		System.out.println(writer);
		Collection<Part> part = request.getParts();

		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
		
		
		String list = "";
		for (Part p : part) {
			System.out.println(p.getName());
			if(!p.getName().equals("writer")) {
			String uploadFileName = p.getSubmittedFileName();
			p.write(uploadFileName);
			list+=(", "+uploadFileName);
			}
		}
		out.print("작성자 : (" + writer + ") 님이  (" + list + ")  파일을 업로드 했습니다.");

	}
}
