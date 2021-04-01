package web_basic.jsp_10;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

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
@WebServlet("/jsp_10/partUploadPro1")
@MultipartConfig(
		fileSizeThreshold = 0,
		location = "C:/workspace_web/web_basic/WebContent/upload"
		)	
public class PartUploadPro1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PartUploadPro1() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String writer = request.getParameter("writer");
		System.out.println(writer);
		Part part = request.getPart("partFile1");
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String contentDisposition = part.getHeader("content-disposition");
		
//		String uploadFileName = part.getSubmittedFileName(); //이거쓰면 바로 파일이름 가지고옴
		String uploadFileName = getUploadFileName(contentDisposition);
		
		part.write(uploadFileName);
		
		out.print("작성자 : ("+writer+ ") 님이  ("+uploadFileName+")  파일을 업로드 했습니다.");
		
		
	}


	private String getUploadFileName(String contentDisposition) {
		
		String uploadFileName = null;
		System.out.println(contentDisposition);
		String[] arr =contentDisposition.split(";");
		System.out.println(Arrays.toString(arr));
		int idx = arr[2].indexOf("\"");
		
		int idx2 = arr[2].lastIndexOf("\"");
		
		uploadFileName = arr[2].substring(idx+1,idx2);
		System.out.println(uploadFileName);
		
		return uploadFileName;
	}

}
