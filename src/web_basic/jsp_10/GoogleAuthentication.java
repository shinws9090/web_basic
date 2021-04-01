package web_basic.jsp_10;


import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GoogleAuthentication extends Authenticator {
	PasswordAuthentication passAuth;
	
	
	public GoogleAuthentication() {
		passAuth = new PasswordAuthentication("shinws9090@gmail.com","lunkhhmydotfezmf");
	}


	public PasswordAuthentication getPasswordAuthentication() {
		return passAuth;
	}
	
	
	
	
}
