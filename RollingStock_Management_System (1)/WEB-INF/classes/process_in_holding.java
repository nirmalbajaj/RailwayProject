

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

import Table_Display.process_inHolding;

/**
 * Servlet implementation class process_in_holding
 */
@WebServlet("/process_in_holding")
public class process_in_holding extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public process_in_holding() {
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
		ArrayList<process_inHolding> pih = new ArrayList<process_inHolding>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `process_inHolding`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				process_inHolding h1 = new process_inHolding();
				h1.setNotification_no(rs3.getString("notification_no"));
				h1.setRs_owner(rs3.getString("rs_owner"));
				h1.setRs_type(rs3.getString("rs_type"));
				h1.setRepair_type(rs3.getString("repair_type"));
				h1.setArrival_date(rs3.getString("arrival_date"));
				h1.setEnter_stage_details(rs3.getString("enter_stage_details"));
	
				
				
				pih.add(h1);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_pih", pih);
			//System.out.print(holiday_set);
			RequestDispatcher rd = request.getRequestDispatcher("/processInHolding.jsp");
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
