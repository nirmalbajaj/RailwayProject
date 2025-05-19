

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Table_Display.process_modification;

/**
 * Servlet implementation class process_modify
 */
@WebServlet("/process_modify")
public class process_modify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public process_modify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(false);
		ArrayList<process_modification> pm = new ArrayList<process_modification>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `process_modification`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				process_modification m1 = new process_modification();
				m1.setNotification_no(rs3.getString("notification_no"));
				m1.setRs_owner(rs3.getString("rs_owner"));
				m1.setRs_no(rs3.getString("rs_no"));
				m1.setRs_type(rs3.getString("rs_type"));
				m1.setRepair_type(rs3.getString("repair_type"));
				m1.setArrival_date(rs3.getString("arrival_date"));
				m1.setEnter_stage_details(rs3.getString("enter_stage_details"));
	
				
				
				pm.add(m1);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_pm", pm);
			//System.out.print(holiday_set);
			RequestDispatcher rd = request.getRequestDispatcher("/processModification.jsp");
			rd.forward(request, response);
			
		}catch(Exception e) {
			System.out.print(e.getMessage());
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
