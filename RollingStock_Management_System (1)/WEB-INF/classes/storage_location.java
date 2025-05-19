

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

import Table_Display.Storage_location_data;

/**
 * Servlet implementation class storage_location
 */
@WebServlet("/storage_location")
public class storage_location extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public storage_location() {
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
		ArrayList<Storage_location_data> loc_set = new ArrayList<Storage_location_data>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/rollingstock","root","");
			Statement stmt=con.createStatement();
			String query3 = "SELECT * FROM `storage_location_master_data`";
			ResultSet rs3=stmt.executeQuery(query3);
			out.println(rs3);
			while(rs3.next()) {
				Storage_location_data l1 = new Storage_location_data();
				l1.setLocation(rs3.getString("storage_location"));
				l1.setDesc(rs3.getString("description"));
				l1.setDate(rs3.getString("valid_from_date"));
	
				
				
				loc_set.add(l1);
			}
			rs3.close();
			stmt.close();
			con.close();
			session.setAttribute("disp_loc", loc_set);
			//System.out.print(holiday_set);
			RequestDispatcher rd = request.getRequestDispatcher("/location_master_data.jsp");
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
