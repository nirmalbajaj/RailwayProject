

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

import Table_Display.process_inTransit;

/**
 * Servlet implementation class process_in_transit
 */
@WebServlet("/process_in_transit")
public class process_in_transit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public process_in_transit() {
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
		ArrayList<process_inTransit> pit = new ArrayList<process_inTransit>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `process_inTransit`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				process_inTransit p1 = new process_inTransit();
				p1.setOwning_rly(rs3.getString("owning_rly"));
				p1.setRs_id(rs3.getString("rs_id"));
				p1.setRs_no(rs3.getString("rs_no"));
				p1.setRstype(rs3.getString("rs_type"));
				p1.setMain_depot(rs3.getString("maintenance_depot"));
				p1.setWithdrawal(rs3.getString("reason_for_withdraw"));
				p1.setDue_date(rs3.getString("due_date"));
				p1.setMarketing_date(rs3.getString("marketing_date"));
				p1.setLast_poh_date(rs3.getString("last_poh_date"));
				p1.setStatus(rs3.getString("status"));
				p1.setMaintenance_no(rs3.getString("maintenance_no"));
	
				
				
				pit.add(p1);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_pit", pit);
			//System.out.print(holiday_set);
			RequestDispatcher rd = request.getRequestDispatcher("/processInTransit.jsp");
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
