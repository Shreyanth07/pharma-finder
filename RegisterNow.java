package backend;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.*;


@WebServlet("/RegisterNow")
public class RegisterNow extends HttpServlet {
	Connection cone;
	Statement stmnt;
	String dbstr="jdbc:sqlserver://localhost:1433;databaseName=medicals;user=test1java;password=nav1234";
       
   
    public RegisterNow() {
        super();
        
    }

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a=request.getParameter("name");
		String b=request.getParameter("mr");
		String name=b+a;
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String bg=request.getParameter("bg"); 
		String Symptoms=request.getParameter("Symptoms");
		
		String history=request.getParameter("history");
		String number=request.getParameter("number");
		
		String pin=request.getParameter("pin");
	
		try(PrintWriter out=response.getWriter())
		{
			out.println("<h1>Thank you for approaching HookUpMeds  "+name+",</h1>");
			out.println("<h2>Our Team will contact you for confirmation  </h2>");
			out.println("<body style='color:black;background-size:cover;background-repeat:no-repeat;background-attachment:fixed;background:url(\"https://images.unsplash.com/photo-1573883431205-98b5f10aaedb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80\")'>");
			out.println("<a href='homepage.html'>Click Here... to go back home</a>");
		try 
			{
				System.out.println("ready");
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				System.out.println("done");
				cone=DriverManager.getConnection(dbstr);
				stmnt=cone.createStatement();
				String queri="insert into Registration values('"+name+"','"+age+"','"+gender+"','"+bg+"','"+Symptoms+"','"+history+"','"+number+"','"+pin+"');";
				stmnt.execute(queri);
			System.out.println("INSERTED SUCCESSFULLY");
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
