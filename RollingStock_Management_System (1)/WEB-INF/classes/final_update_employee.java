

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class final_update_employee
 */
@WebServlet("/final_update_employee")
public class final_update_employee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public final_update_employee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(false);
		String sysid = request.getParameter("system_id");
		String lpass = request.getParameter("password");
		String type = "employee";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String q = "UPDATE `user_details` SET `password` = '"+lpass+"', `type` = 'employee' WHERE `user_details`.`system id` = '"+sysid+"'";
			
			int i = stmt.executeUpdate(q);
			
			if(i != 0) {
				out.println("<html><head></head><body onload=\"alert('New Employee Registered successfully');location='login.html';\"></body></html>");
				//RequestDispatcher rd = request.getRequestDispatcher("client_home.jsp");
				//rd.forward(request, response);
			}else {
				out.println("<html><head></head><body onload=\"alert('New Employee NOT Registered successfully');location='login.html';\"></body></html>"); 
				//RequestDispatcher rd = request.getRequestDispatcher("client_home.jsp");
				//rd.forward(request, response);
			}
			stmt.close();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
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
