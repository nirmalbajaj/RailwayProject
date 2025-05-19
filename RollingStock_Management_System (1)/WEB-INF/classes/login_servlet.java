
import java.sql.*;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Table_Display.Google_Charts_Line_Display;



@WebServlet("/login_servlet")
public class login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String luser = request.getParameter("username");
		String lpass = request.getParameter("password");
		String ltype = request.getParameter("ltype");
		String page = null;
		String guser,gpass,gtype,name1 = null;
		
		// test 
		ArrayList<Google_Charts_Line_Display> da = new ArrayList<Google_Charts_Line_Display>();
		
		//test
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query1 = "SELECT * FROM user_details where type = '"+ltype+"' ;";
			ResultSet rs=stmt.executeQuery(query1);
			
			while(rs.next()) {
				guser = rs.getString("user id");
				gpass = rs.getString("password");
				//System.out.println(guser+" "+gpass+" "+gtype);
				if(guser.equalsIgnoreCase(luser) && gpass.equalsIgnoreCase(lpass) && ltype.equalsIgnoreCase("admin")) {
					page = "Admin_Home.jsp";
					name1=rs.getString("name");
					//test
					String q2 = "select * from line_data;";
					ResultSet rs3=stmt.executeQuery(q2);
					out.println(rs3);
					while(rs3.next()) {
						Google_Charts_Line_Display l = new Google_Charts_Line_Display();
						l.setDate(rs3.getString("date"));
						l.setIncoming(rs3.getInt("incomming"));
						l.setOutgoing(rs3.getInt("outgoing"));
						da.add(l);
					}
					//test
					//etype = "admin";
					break;
				}
				else if(luser.equalsIgnoreCase(guser) && lpass.equalsIgnoreCase(gpass) && ltype.equalsIgnoreCase("employee")) {
					page = "Employee_home.jsp";
					name1=rs.getString("name");
					//etype = "user";
					break;
				}else {
					page = "login.html";
					
				}
			}
			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e) {
			System.out.print(e);
		}
		HttpSession session=request.getSession(true);  
        session.setAttribute("name",name1);
        session.setAttribute("ltype",ltype);
        session.setAttribute("line",da);
		//session.setAttribute("etype", etype);
		RequestDispatcher rd1 = request.getRequestDispatcher(page);
		rd1.forward(request, response);
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
