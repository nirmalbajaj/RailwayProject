

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

import Table_Display.rs_condemnation;

/**
 * Servlet implementation class condemnation
 */
@WebServlet("/condemnation")
public class condemnation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public condemnation() {
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
		ArrayList<rs_condemnation> rsc = new ArrayList<rs_condemnation>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `rs_condemnation`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				rs_condemnation c1 = new rs_condemnation();
				c1.setNotification_no(rs3.getString("notification_no"));
				c1.setRs_id(rs3.getString("rs_id"));
				c1.setRs_type(rs3.getString("rs_type"));
				c1.setRs_no(rs3.getString("rs_no"));
				c1.setRs_owner(rs3.getString("rs_owner"));
				c1.setStatus(rs3.getString("status"));
				c1.setAuthority(rs3.getString("authority"));
				c1.setCondemnation_type(rs3.getString("condemnation_type"));
				c1.setRemarks(rs3.getString("remrks"));
				c1.setCondemnation_date(rs3.getString("condemnation_date"));

				rsc.add(c1);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_rsc", rsc);
			//System.out.print(holiday_set);
			RequestDispatcher rd = request.getRequestDispatcher("/rscondemnation.jsp");
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
