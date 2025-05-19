

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

import Table_Display.RS_failure;

/**
 * Servlet implementation class rs_failure
 */
@WebServlet("/rs_failure")
public class rs_failure extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rs_failure() {
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
		ArrayList<RS_failure> rsf = new ArrayList<RS_failure>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `rs_failure`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				RS_failure f1 = new RS_failure();
				f1.setCoach_number(rs3.getString("coach_number"));
				f1.setCoach_category(rs3.getString("coach_category"));
				f1.setCoach_type(rs3.getString("coach_type"));
				f1.setOwning_railway(rs3.getString("owning_railway"));
				f1.setProblem_description(rs3.getString("problem_description"));
				f1.setProblem_date(rs3.getString("problem_date"));
				f1.setAssembly_description(rs3.getString("assembly_description"));
				f1.setSub_ass_des(rs3.getString("sub_ass_desc"));
				f1.setReporting_depot(rs3.getString("reporting_depot"));
				f1.setReported_defect(rs3.getString("reported_defect"));
				f1.setWork_done(rs3.getString("work_done"));
				f1.setWorkshop_remarks(rs3.getString("workshop_remarks"));
				f1.setStatus(rs3.getString("status"));
				f1.setTrain_no(rs3.getString("train_no"));
				f1.setPoh_date(rs3.getString("poh_date"));
				f1.setDays_after_poh(rs3.getString("days_after_poh"));
				f1.setDefect_ID(rs3.getString("defect_id"));
	
	
				
				
				rsf.add(f1);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_rsf", rsf);
			//System.out.print(holiday_set);
			RequestDispatcher rd = request.getRequestDispatcher("/rsfailure.jsp");
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
