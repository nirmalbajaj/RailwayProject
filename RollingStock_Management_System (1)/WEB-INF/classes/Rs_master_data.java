

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Table_Display.RS_Master_Data;
/**
 * Servlet implementation class Rs_master_data
 */
@WebServlet("/Rs_master_data")
public class Rs_master_data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rs_master_data() {
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
		ArrayList<RS_Master_Data> rs_set = new ArrayList<RS_Master_Data>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `rolling stock master data`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				RS_Master_Data rs = new RS_Master_Data();
				rs.setRs_id(rs3.getString("rs id"));
				rs.setRs_no(rs3.getString("rs number"));
				rs.setType(rs3.getString("type"));
				rs.setOwning_railway(rs3.getString("owning railway"));
				rs.setBuilt_at(rs3.getString("built at"));
				rs.setBuilt_date(rs3.getString("built date"));
				rs.setStart_date(rs3.getString("start date"));
				rs.setStatus(rs3.getString("status"));
				rs.setBase_depot(rs3.getString("base depot"));
				rs.setWorkshop(rs3.getString("workshop"));
				rs.setDivision(rs3.getString("division"));
				rs.setMake(rs3.getString("make"));
				
				
				rs_set.add(rs);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_rs", rs_set);
			System.out.print(rs_set);
			RequestDispatcher rd = request.getRequestDispatcher("/RS_Master_Data.jsp");
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
