package web_basic.chap04;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/jsp_10/FileUploadServlet")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
		System.out.println(uploadPath);
		int size = 10*1023*1024;
		String name = "";
		String subject="";
		String filename1="";
		String filename2="";
		String origfilename1="";
		String origfilename2="";

		try{
			MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
			
			name= multi.getParameter("name");
			subject = multi.getParameter("subject");
			
			Enumeration files=multi.getFileNames();
			
			String file1 = (String)files.nextElement();
			filename1 = multi.getFilesystemName(file1);
			origfilename1 = multi.getOriginalFileName(file1);
			
			String file2 = (String)files.nextElement();
			filename2 = multi.getFilesystemName(file2);
			origfilename2 = multi.getOriginalFileName(file2);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		request.setAttribute("name", name);
		request.setAttribute("subject", subject);
		request.setAttribute("filename1", filename1);
		request.setAttribute("origfilename1", origfilename1);
		request.setAttribute("filename2", filename2);
		request.setAttribute("origfilename2", origfilename2);
		
	
		request.getRequestDispatcher("fileCheck.jsp").forward(request, response);
	}

}
