package web_basic.chap04;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chap04/Fuck")
public class Fuck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String passwd2 = request.getParameter("passwd2");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String url = request.getParameter("url");
		String member = request.getParameter("member");
		String stuffs = request.getParameter("stuffs");
		String satis = request.getParameter("satis");
		String subject = request.getParameter("subject");
		String[] mailing = request.getParameterValues("mailing");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String timeStart = request.getParameter("timeStart");
		String timeEnd = request.getParameter("timeEnd");
		String datetimeStart = request.getParameter("datetimeStart");
		String datetimeEnd = request.getParameter("datetimeEnd");

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		out.println("<html> <h1>가입정보</h1>");
		out.println("<br>아이디 : " + id);
		if (passwd.equals(passwd2)) {
			out.println("<br>비밀번호 : 일치");
		} else {
			out.println("<br>비밀번호 : 불일치");

		}
		out.println("<br>이름 : " + name);
		out.println("<br>email : " + email);
		out.println("<br>연락처 : " + tel);
		out.println("<br>블로그 : " + url);
		out.println("<br>참여인원 : " + member + " 명");
		out.println("<br>지원물품 : " + stuffs + " 개");
		switch (satis) {
		case "1":
			out.println("<br>희망단계 : 하");
			break;
		case "2":
			out.println("<br>희망단계 : 중");
			break;
		case "3":
			out.println("<br>희망단계 : 상");
			break;
		}
		switch (subject) {
		case "speaking":
			subject = "회화";
			break;
		case "grammar":
			subject = "문법";
			break;
		case "writing":
			subject = "작문";
			break;
		}
		out.println("<br>신청과목 : " + subject);

		out.println("<br>메일링 = ");
		for (int i = 0; i < mailing.length; i++) {

			switch (mailing[i]) {
			case "news":
				mailing[i] = "해외단신";
				break;
			case "dialog":
				mailing[i] = "5분회화";
				break;
			case "pops":
				mailing[i] = "모닝팝스";
				break;
			}
		}
		out.println(Arrays.toString(mailing));
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat time = new SimpleDateFormat("HH:mm");
		SimpleDateFormat time2 = new SimpleDateFormat("HH:mm:ss");
		Date tmep = null;
		try {
			tmep = date.parse(start);
			out.println("<br>조회기간 : " + date.format(tmep));
			tmep = date.parse(end);
			out.println("<br>조회기간 : " + date.format(tmep));
			tmep = time.parse(timeStart);
			out.println("<br>대관시간 : " + time2.format(tmep));
			tmep = time.parse(timeEnd);
			out.println("<br>대관시간 : " + time2.format(tmep));
			tmep = date.parse(datetimeStart);
			out.println("<br>다른날짜 : " + date.format(tmep));
			tmep = date.parse(datetimeEnd);
			out.println("<br>다른날짜 : " + date.format(tmep));

		} catch (ParseException e) {
			e.printStackTrace();
		}
		out.println("<html>");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
