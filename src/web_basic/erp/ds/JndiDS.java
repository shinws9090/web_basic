package web_basic.erp.ds;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JndiDS {
	public static DataSource ds;
	
	
	public JndiDS() {}


	static {//스테틱 블럭 생성자보다 먼저 수행됨
		
		try{
			Context init = new InitialContext(); //JNDI 서버객체 생성
			ds = (DataSource)init.lookup("java:comp/env/jdbc/dbstudy"); //룩업()
			System.out.println("ds : " + ds);
		}catch(NamingException e){
			e.printStackTrace();
		}
		
	}
	
	public static Connection getConnection() {
		try {
			return ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
