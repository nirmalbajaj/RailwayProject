<% String ltype = (String)request.getSession(false).getAttribute("ltype"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Railway Zones and Workshop</title>
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <style>
       @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

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
    width: 280px;
    min-width: 280px;
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

#sidebar.expand .sidebar-item:hover .has-dropdown+.sidebar-dropdown {
   margin-left:35px;
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

        .collapsible {
          background-color: #eee;
          color: #444;
          cursor: pointer;
          padding: 18px;
          width: 100%;
          border: none;
          text-align: left;
          outline: none;
          font-size: 15px;
          transition: 0.4s;
        }
        
        .active, .collapsible:hover {
          background-color: #ccc;
        }
        
        .collapsible:after {
          content: '\002B';
          color: #777;
          font-weight: bold;
          float: right;
          margin-left: 5px;
        }
        
        .active:after {
          content: "\2212";
        }
        
        .content {
          padding: 0 18px;
          max-height: 0;
          overflow: hidden;
          transition: max-height 0.2s ease-out;
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
            
            
            
            
            
                <h2>
                    Railway Zones and Workshops
                </h2>
                <p>
                    Here is a brief description of the various railway zones and workshops mentioned on this page. Each railway zone encompasses a specific geographical area and is responsible for managing railway operations, maintenance, and infrastructure within its jurisdiction. Similarly, workshops are facilities dedicated to the repair, maintenance, and manufacturing of railway rolling stock such as locomotives, carriages, and wagons.
                </p>
                
                <button class="collapsible">Eastern Railway</button>
                    <div class="content">
                             <ul>
                                     <li>Locomotive Workshop, Jamalpur</li>
                                        <li>Railway Workshop, Kanchrapara</li>
                                            <li>Carriage Workshop, Liluah</li>
                            </ul>
                    </div>

            <!-- East Central Railway -->
<button class="collapsible">East Central Railway</button>
<div class="content">
  <ul>
    <li>Mechanical Workshop, Samastipur</li>
    <li>Rail Wheel Plant, Bela</li>
  </ul>
</div>

                          <!-- East Coast Railway -->
<button class="collapsible">East Coast Railway</button>
<div class="content">
  <ul>
    <li>Carriage Workshop, Mancheswar</li>
  </ul>
</div>

<button class="collapsible">Northern Railway</button>
<div class="content">
  <ul>
    <li>Carriage & Wagon workshop, Alambagh</li>
    <li>Mechanical Workshop, Amritsar</li>
    <li>Locomotive Workshop, Charbagh</li>
    <li>Carriage & Wagon Workshop, Jagadri</li>
    <li>C&W Workshop, Kalka</li>
  </ul>
</div>

<!-- North Central Railway -->
<button class="collapsible">North Central Railway</button>
<div class="content">
  <ul>
    <li>Wagon POH Workshop, Jansi</li>
  </ul>
</div>

<!-- North Eastern Railway -->
<button class="collapsible">North Eastern Railway</button>
<div class="content">
  <ul>
    <li>Rly. Mechanical Workshop, Gorakhpur</li>
    <li>Railway Workshop, Izzatnagar</li>
  </ul>
</div>

<button class="collapsible">Northeast Frontier Railway</button>
<div class="content">
  <ul>
    <li>Railway Workshop, Dibrugarh</li>
    <li>Rly. Workshop, New Bongaigoan</li>
    <li>Rly. Workshop, Tindharia</li>
  </ul>
</div>

<!-- North Western Railway -->
<button class="collapsible">North Western Railway</button>
<div class="content">
  <ul>
    <li>Carriage Workshop, Ajmer</li>
    <li>Locomotive Workshop, Ajmer</li>
    <li>Railway Workshop, Bikaner</li>
    <li>Carriage Workshop, Jodhpur</li>
  </ul>
</div>

<!-- Southern Railway -->
<button class="collapsible">Southern Railway</button>
<div class="content">
  <ul>
    <li>Locomotive Workshop, Golden Rock</li>
    <li>C&W Workshop, Perambur</li>
    <li>Locomotive Workshop, Perambur</li>
  </ul>
</div>

<!-- South Central Railway -->
<button class="collapsible">South Central Railway</button>
<div class="content">
  <ul>
    <li>Lallaguda Railway Workshop</li>
    <li>Carriage Workshop, Tirupati</li>
    <li>Wagon Workshop, Guntapalli</li>
  </ul>
</div>

<!-- South Eastern Railway -->
<button class="collapsible">South Eastern Railway</button>
<div class="content">
  <ul>
    <li>C&W Workshop, Kharagpur</li>
  </ul>
</div>

<!-- South East Central Railway -->
<button class="collapsible">South East Central Railway</button>
<div class="content">
  <ul>
    <li>Railway Workshop, Raipur</li>
    <li>Nagpur Railway Workshop</li>
  </ul>
</div>

<!-- South Western Railway -->
<button class="collapsible">South Western Railway</button>
<div class="content">
  <ul>
    <li>Carriage Repair Workshop, Hubli</li>
    <li>Mysore Railway Workshop</li>
  </ul>
</div>

<!-- Western Railway -->
<button class="collapsible">Western Railway</button>
<div class="content">
  <ul>
    <li>Bhavnagar Railway Workshop</li>
    <li>Loco, Carriage & Wagon Workshop, Dahod</li>
    <li>Railway Workshop, Junagarh</li>
    <li>Carriage Repair Workshop, Lower Parel</li>
    <li>Railway Workshop, Mahalaxmi</li>
    <li>C&W Workshop, Pratapnagar</li>
  </ul>
</div>

<!-- West Central Railway -->
<button class="collapsible">West Central Railway</button>
<div class="content">
  <ul>
    <li>Coach Repair Workshop, Bhopal</li>
    <li>Wagon Workshop, Kota</li>
  </ul>
</div>

<!-- Central Railway -->
<button class="collapsible">Central Railway</button>
<div class="content">
  <ul>
    <li>Carriage Workshop, Matunga</li>
    <li>Locomotive Workshop, Parel</li>
    <li>C&W Workshop, Kurduwadi</li>
  </ul>
</div>
            </div>
        </div>
    </div>
    <script>
        // JavaScript to handle collapsible sections
        var coll = document.getElementsByClassName("collapsible");
        var i;
        
        for (i = 0; i < coll.length; i++) {
          coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.maxHeight){
              content.style.maxHeight = null;
            } else {
              content.style.maxHeight = content.scrollHeight + "px";
            }
          });
        }
        </script>
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    <script>
    const hamBurger = document.querySelector(".toggle-btn");

    hamBurger.addEventListener("click", function () {
      document.querySelector("#sidebar").classList.toggle("expand");
    });
    </script>
</body>
</html>