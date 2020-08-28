package backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Presupload
 */
@WebServlet("/Presupload")
public class Presupload extends HttpServlet {
	Connection conn;
	Statement stmt;
	String dbstring="jdbc:sqlserver://localhost:1433;databaseName=medicals;user=test1java;password=nav1234";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Presupload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String c=request.getParameter("name");
		String d=request.getParameter("mr");
		String name=d+c;
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String bg=request.getParameter("bg"); 
		
		String number=request.getParameter("number");
		String pin =request.getParameter("pin");
	
		try(PrintWriter out=response.getWriter())
		{
			out.println("<h1>Thank you for approaching HookUpMeds  "+name+",</h1>");
			out.println("<h2>Our Team will contact you for confirmation and delivery  </h2>");
			out.println("<body style='color:black;background-size:cover;background:url(\"https://images.unsplash.com/photo-1573883431205-98b5f10aaedb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80\")'>");
			out.println("<a href='homepage.html'>Click Here... to go back home</a>");
		try 
			{
			System.out.println("ready");	
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("done");
				conn=DriverManager.getConnection(dbstring);
				stmt=conn.createStatement();
				String query="insert into PrescriptionUpload values('"+name+"','"+age+"','"+gender+"','"+bg+"','"+number+"','"+pin+"');";
				stmt.execute(query);
			System.out.println("INSERTED SUCCESSFULLY");
			}
		catch(Exception e)
		{
			System.out.println("Error: "+e);
		}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
