

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

import Table_Display.Holiday_master_Data;

/**
 * Servlet implementation class holiday_master_data
 */
@WebServlet("/holiday_master_data")
public class holiday_master_data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public holiday_master_data() {
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
		ArrayList<Holiday_master_Data> holiday_set = new ArrayList<Holiday_master_Data>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `holiday_master_data`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				Holiday_master_Data h1 = new Holiday_master_Data();
				h1.setHoliday_id(rs3.getString("holiday id"));
				h1.setHoliday_date(rs3.getString("holiday date"));
				h1.setHoliday_desc(rs3.getString("holiday desc"));
	
				
				
				holiday_set.add(h1);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_hol", holiday_set);
			System.out.print(holiday_set);
			RequestDispatcher rd = request.getRequestDispatcher("/holiday_master_data.jsp");
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
