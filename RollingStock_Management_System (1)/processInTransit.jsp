<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.ArrayList" %>

<%@page import="Table_Display.process_inTransit" %>

<% String ltype = (String)request.getSession(false).getAttribute("ltype"); %>

	<% ArrayList p1 = (ArrayList)request.getSession(false).getAttribute("disp_pit"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- side nav-bar links -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

<!-- Table links -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js">
  </script>
  
  <script type="text/javascript" src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js">
  </script>
  
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" />
  
<title>Process In Transit</title>
<style>
/* side nav-bar style */
::after,
::before {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

a {
    text-decoration: none;
}

li {
    list-style: none;
}

h1 {
    font-weight: 600;
    font-size: 1.5rem;
}

body {
    font-family: 'Poppins', sans-serif;
}

.wrapper {
    display: flex;
}

.main {
    min-height: 100vh;
    width: 100%;
    overflow: hidden;
    transition: all 0.35s ease-in-out;
    background-color: #fafbfe;
}

#sidebar {
    width: 70px;
    min-width: 70px;
    z-index: 1000;
    transition: all .25s ease-in-out;
    background-color: #0e2238;
    display: flex;
    flex-direction: column;
}

#sidebar.expand {
    width: 260px;
    min-width: 260px;
}

.toggle-btn {
    background-color: transparent;
    cursor: pointer;
    border: 0;
    padding: 1rem 1.5rem;
}

.toggle-btn i {
    font-size: 1.5rem;
    color: #FFF;
}

.sidebar-logo {
    margin: auto 0;
}

.sidebar-logo a {
    color: #FFF;
    font-size: 1.15rem;
    font-weight: 600;
}

#sidebar:not(.expand) .sidebar-logo,
#sidebar:not(.expand) a.sidebar-link span {
    display: none;
}

.sidebar-nav {
    padding: 2rem 0;
    flex: 1 1 auto;
}

a.sidebar-link {
    padding: .625rem 1.625rem;
    color: #FFF;
    display: block;
    font-size: 0.9rem;
    white-space: nowrap;
    border-left: 3px solid transparent;
}

.sidebar-link i {
    font-size: 1.1rem;
    margin-right: .75rem;
}

a.sidebar-link:hover {
    background-color: rgba(255, 255, 255, .075);
    border-left: 3px solid #3b7ddd;
}

.sidebar-item {
    position: relative;
}

#sidebar:not(.expand) .sidebar-item .sidebar-dropdown {
    position: absolute;
    top: 0;
    left: 70px;
    background-color: #0e2238;
    padding: 0;
    min-width: 15rem;
    display: none;
}

#sidebar:not(.expand) .sidebar-item:hover .has-dropdown+.sidebar-dropdown {
    display: block;
    max-height: 15em;
    width: 100%;
    opacity: 1;
}

#sidebar.expand .sidebar-link[data-bs-toggle="collapse"]::after {
    border: solid;
    border-width: 0 .075rem .075rem 0;
    content: "";
    display: inline-block;
    padding: 2px;
    position: absolute;
    right: 1.5rem;
    top: 1.4rem;
    transform: rotate(-135deg);
    transition: all .2s ease-out;
}

#sidebar.expand .sidebar-link[data-bs-toggle="collapse"].collapsed::after {
    transform: rotate(45deg);
    transition: all .2s ease-out;
}

/* table style */

/*------------------  table ----------------------*/
tfoot input {
        width: 100%;
        padding: 3px;
        box-sizing: border-box;
    }
caption { 
  display: table-caption;
  text-align: center;
  font-face:Ariel;
  font-size:18px;
  font-weight:bold;
  color:black;
}
td{
font-size:18px;
}
</style>
</head>
<body>
<div class="wrapper">
        <aside id="sidebar">
            <div class="d-flex">
                <button class="toggle-btn" type="button">
                    <i class="lni lni-train"></i>
                </button>
                <div class="sidebar-logo">
                    <a style="color:white;">Rolling Stock Maintenance</a>
                </div>
            </div>
            <ul class="sidebar-nav">
                <li class="sidebar-item">
                    <a href="<% if(ltype.equalsIgnoreCase("admin")){ out.print("Admin_Home.jsp"); } else {out.print("Employee_home.jsp"); } %>" class="sidebar-link">
                        <i class="lni lni-dashboard"></i>
                        <span>Home Page</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse"
                        data-bs-target="#rollingStockProcess" aria-expanded="false" aria-controls="rollingStockProcess">
                        <i class="lni lni-train"></i>
                        <span>Rolling Stock Process</span>
                    </a>
                    <ul id="rollingStockProcess" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                        <li class="sidebar-item">
                            <a href="process_in_transit" class="sidebar-link">RS In Transit</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="process_in_holding" class="sidebar-link">RS In Holding</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="process_modify" class="sidebar-link">RS Modification</a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a href="rs_failure" class="sidebar-link">
                        <i class="lni lni-bug"></i>
                        <span>Rolling Stock Failure</span>
                    </a>
                </li>
                <% if(ltype.equalsIgnoreCase("admin")){
                	out.print("<li class=\"sidebar-item\">");
                	out.print("<a href=\"#\" class=\"sidebar-link\">");
                	out.print("<i class=\"lni lni-stats-up\"></i>");
                	out.print("<span>Reports</span>");
                	out.print("</a>");
                	out.print("</li>");} %>

                <li class="sidebar-item">
                    <a class="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse"
                        data-bs-target="#assembly" aria-expanded="false" aria-controls="assembly">
                        <i class="lni lni-cog"></i>
                        <span>Assembly</span>
                    </a>
                    <ul id="assembly" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                        <li class="sidebar-item">
                            <a href="#" class="sidebar-link">Receiving Workcentre</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="#" class="sidebar-link">Assembly Final List</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="#" class="sidebar-link">Store Assembly</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="#" class="sidebar-link">Workshop Assembly</a>
                        </li>
                    </ul>
                </li>
                
                <li class="sidebar-item">
                    <a class="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse"
                        data-bs-target="#railwaydesc" aria-expanded="false" aria-controls="railwaydesc">
                        <i class="lni lni-cog"></i>
                        <span>Railway Description</span>
                    </a>
                    <ul id="railwaydesc" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                        <li class="sidebar-item">
                            <a href="rail_desc_manufacturers.jsp" class="sidebar-link">Railway Manufacturers</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="rail_desc_zones.jsp" class="sidebar-link">Railway Zones</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="rail_desc_wagon_types.jsp" class="sidebar-link">Railway Wagon Types</a>
                        </li>
                    </ul>
                </li>
                
                <li class="sidebar-item">
                    <a href="#" class="sidebar-link">
                        <i class="lni lni-archive"></i>
                        <span>RS Condemnation</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="#" class="sidebar-link">
                        <i class="lni lni-trash-can"></i>
                        <span>Wheel Condemnation</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link collapsed has-dropdown" data-bs-toggle="collapse"
                        data-bs-target="#masterdata" aria-expanded="false" aria-controls="masterdata">
                        <i class="lni lni-train"></i>
                        <span>Master Data</span>
                    </a>
                    <ul id="masterdata" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
                        <li class="sidebar-item">
                            <a href="holiday_master_data" class="sidebar-link">Holiday Master Data</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="Rs_master_data" class="sidebar-link">Rolling Stock Master Data</a>
                        </li>
                        <li class="sidebar-item">
                            <a href="storage_location" class="sidebar-link">Storage Location master Data</a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a href="#" class="sidebar-link">
                        <i class="lni lni-users"></i>
                        <span>Materials</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="#" class="sidebar-link">
                        <i class="lni lni-users"></i>
                        <span>Employee Details</span>
                    </a>
                </li>
            </ul>
            <div class="sidebar-footer">
                <a href="login.html" class="sidebar-link">
                    <i class="lni lni-exit"></i>
                    <span>Logout</span>
                </a>
            </div>
        </aside>
        <div class="main p-3">
            <div class="text-center">
                <h1>
                    Rolling Stock Maintenance System
                </h1>
                <!-- Start Table -->
  <div class="flex-container">
  <div class="outer-wrapper" style="padding:8px;">
    <div class="table-wrapper">
    <table id="example" class="display" style="width:99%">
    <caption style="font-size:25px;">Process : In-Transit</caption>
        <thead style="background-color: #CD853F;color:Yellow;">
        <th>Owning railway</th>                 <th>RS ID</th>             <th>RS No</th>   
         <th>RS Type</th>                 <th>Maintenance Depot</th>             <th>Reason for withdrawal</th>
          <th>Due Date</th>                 <th>Marketing Date</th>             <th>Last poh Date</th>
           <th>Status</th>                 <th>Maintenance No</th>             
      </thead>
        <tbody>
		<!-- jsp CODE TO FETCH DATA FROM ROWS-->
		<%! int rc1; %>	
			<% for(rc1 = 0; rc1 < p1.size(); rc1++) { %>
				<tr>
					<% process_inTransit p = (process_inTransit) p1.get(rc1); %>
					<td>
						<%= p.getOwning_rly() %>
					</td>
					<td>
						<%= p.getRs_id() %>
					</td>
					<td>
						<%= p.getRs_no() %>
					</td>
					<td>
						<%= p.getRstype() %>
					</td>
					<td>
						<%= p.getMain_depot() %>
					</td>
					<td>
						<%= p.getWithdrawal() %>
					</td>
					<td>
						<%= p.getDue_date() %>
					</td>
					<td>
						<%= p.getMarketing_date() %>
					</td>
					<td>
						<%= p.getLast_poh_date() %>
					</td>
					<td>
						<%= p.getStatus() %>
					</td>
					<td>
						<%= p.getMaintenance_no() %>
					</td>
					
				</tr>
			<% } %>
        </tbody>
        <tfoot>
        <tr>
        <th>Owning railway</th>                 <th>RS ID</th>             <th>RS No</th>   
         <th>RS Type</th>                 <th>Maintenance Depot</th>             <th>Reason for withdrawal</th>
          <th>Due Date</th>                 <th>Marketing Date</th>             <th>Last poh Date</th>
           <th>Status</th>                 <th>Maintenance No</th>             
        </tr>
        </tfoot>
    </table>
</div>
</div>
</div>
<!-- End Table -->
            </div>
        </div>
    </div>
    
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    <script>
    const hamBurger = document.querySelector(".toggle-btn");

    hamBurger.addEventListener("click", function () {
      document.querySelector("#sidebar").classList.toggle("expand");
    });
    </script>
    
<script>
new DataTable('#example', {
    initComplete: function () {
        this.api()
            .columns()
            .every(function () {
                let column = this;
                let title = column.footer().textContent;
 
                // Create input element
                let input = document.createElement('input');
                input.placeholder = title;
                column.footer().replaceChildren(input);
 
                // Event listener for user input
                input.addEventListener('keyup', () => {
                    if (column.search() !== this.value) {
                        column.search(input.value).draw();
                    }
                });
            });
    }
});
</script>
</body>
</html>