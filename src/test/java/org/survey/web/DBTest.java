package org.survey.web;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class DBTest {
	
	@Inject 
	DataSource ds;


	@Test
	public void dsTest()throws Exception{
		Connection con = ds.getConnection();
		System.out.println(con);
		con.close();
	}
	
	
	@Test
	public void DBConnectionTest() throws Exception {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
	"jdbc:mysql://192.168.1.92:3306/survey?useSSL=false&serverTimezone=Asia/Seoul",
	"gonoble",
	"bit88");
	System.out.println(con);
	con.close();
	}

}
