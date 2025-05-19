

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class update_employee
 */
@WebServlet("/update_employee")
public class update_employee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_employee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(true);
		PrintWriter out = response.getWriter();
		String luser = request.getParameter("username");
		String lpass = request.getParameter("password");
		String ltype = "new";
		String page = null;
		String guser,gpass,gtype;
		String name1 = null,loc = null,role = null,phone=null,email=null;
		String sysid = null; 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query1 = "SELECT * FROM user_details where type = '"+ltype+"' ;";
			ResultSet rs=stmt.executeQuery(query1);
			
			while(rs.next()) {
				guser = rs.getString("user id");
				gpass = rs.getString("password");
				gtype = rs.getString("type");
				//System.out.println(guser+" "+gpass+" "+gtype);
				if(guser.equalsIgnoreCase(luser) && gpass.equalsIgnoreCase(lpass) && ltype.equalsIgnoreCase("new")) {

					sysid = rs.getString("system id");
					name1=rs.getString("name");
					loc=rs.getString("location");
					role=rs.getString("role desc");
					phone=rs.getString("phone no");
					email=rs.getString("email id");
					//etype = "admin";
					break;
				}else {
					response.sendRedirect("login.html");
					
				}
			}
			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e) {
			System.out.print(e);
		}
		session.setAttribute("usern",luser);
        session.setAttribute("name",name1);
        session.setAttribute("sysid",sysid);
        session.setAttribute("loc",loc);
        session.setAttribute("role",role);
        session.setAttribute("phone",phone);
        session.setAttribute("email",email);
		//session.setAttribute("etype", etype);
		RequestDispatcher rd2 = request.getRequestDispatcher("/update_employee.jsp");
		rd2.forward(request, response);
		//response.sendRedirect(page);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
