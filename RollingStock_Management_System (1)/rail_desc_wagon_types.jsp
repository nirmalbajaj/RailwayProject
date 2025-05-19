<!DOCTYPE html>
<html lang="en">
<% String ltype = (String)request.getSession(false).getAttribute("ltype"); %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Types of Wagons</title>
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
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
h2 {
      text-align: center;
      color: #333;
      margin-top: 20px;
    }

    .accordion {
      background-color: #f9f9f9;
      color: #333;
      cursor: pointer;
      padding: 18px;
      width: 100%;
      text-align: left;
      border: none;
      outline: none;
      transition: 0.4s;
      border-bottom: 1px solid #ddd;
      position: relative;
    }
    
    .accordion:last-child {
      border-bottom: none;
    }
    
    .accordion.active, .accordion:hover {
      background-color: #ddd;
    }
    
    .panel {
      padding: 20px 18px;
      display: none;
      background-color: white;
      overflow: hidden;
      border-bottom: 1px solid #ddd;
    }


.panel .details .content {
  display: flex;
  align-items: center;
}

.panel img {
  width: 700px; 
  height: 400px;
  margin-right: 20px;
  border-radius: 5px;
}

.panel .description {
  flex: 1;
}



    .panel .details h3 {
      margin-top: 0;
      color: #333;
    }

    .panel .details p {
      color: #666;
      font-size: 16px;
    }

    .accordion::after {
        content: '+';
        position: absolute;
        right: 20px;
        top: 50%;
        transform: translateY(-50%);
    }

    .accordion.active::after {
        content: '-';
    }
</style>
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
            </div>
            
            
            
            
            
            <h2>Types of Wagons in Indian Railways Workshop</h2>

            <button class="accordion">BOXN - Box Wagon</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BOXN.webp" alt="BOXN - Box Wagon">
                  <div class="description">
                    <h3>Code Name: BOXN</h3>
                    <p>These are general-purpose wagons used for transporting goods in boxes or crates. They are one of the most common types of freight wagons in Indian Railways.</p>
                  </div>
                </div>
              </div>
            </div>
            
            <button class="accordion">BCN - Bogie Covered Wagon</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BCN.webp" alt="BCN - Bogie Covered Wagon">
                  <div class="description">
                    <h3>Code Name: BCN</h3>
                    <p>These wagons have a covered top and are used for transporting goods that need protection from weather elements. They are commonly used for carrying items like cement, grains, and machinery parts.</p>
                  </div>
                </div>
              </div>
            </div>
            
            <button class="accordion">BCNA - Bogie Covered Wagon for Automobiles</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BCNA.jpeg" alt="BCNA - Bogie Covered Wagon for Automobiles">
                  <div class="description">
                    <h3>Code Name: BCNA</h3>
                    <p>These are specialized covered wagons designed for transporting automobiles, such as cars and two-wheelers.</p>
                  </div>
                </div>
              </div>
            </div>
            
            <button class="accordion">BCACBM - Bogie Covered Wagon for Automobile Components</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BCACBM.png" alt="BCACBM - Bogie Covered Wagon for Automobile Components">
                  <div class="description">
                    <h3>Code Name: BCACBM</h3>
                    <p>Similar to BCNA, these wagons are designed specifically for transporting automobile components and parts.</p>
                  </div>
                </div>
              </div>
            </div>
            
            <button class="accordion">BTPGLN - Bogie Tank Wagon</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BTPGLN.jpeg" alt="BTPGLN - Bogie Tank Wagon">
                  <div class="description">
                    <h3>Code Name: BTPGLN</h3>
                    <p>Tank wagons are used for transporting liquids such as petroleum products, chemicals, and edible oils. They are equipped with tanks that can hold the liquid cargo securely.</p>
                  </div>
                </div>
              </div>
            </div>
            
            <button class="accordion">BRN - Bogie Flat Wagon</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BRNA.jpeg" alt="BRN - Bogie Flat Wagon">
                  <div class="description">
                    <h3>Code Name: BRN</h3>
                    <p>Flat wagons have a flatbed surface without any sides or covers. They are used for transporting heavy and oversized goods like machinery, steel coils, and pipes.</p>
                  </div>
                </div>
              </div>
            </div>
            
            <button class="accordion">BOBYN - Bogie Open Wagon</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BOBYN.jpeg" alt="BOBYN - Bogie Open Wagon">
                  <div class="description">
                    <h3>Code Name: BOBYN</h3>
                    <p>Open wagons have an open-top and are used for transporting bulk goods like coal, ore, and aggregates. They are versatile and widely used for various types of cargo.</p>
                  </div>
                </div>
              </div>
            </div>
            
            <button class="accordion">BOBRN - Bogie Open Wagon with Bottom Discharge</button>
            <div class="panel">
              <div class="details">
                <div class="content">
                  <img src="images/BOBRN.jpeg" alt="BOBRN - Bogie Open Wagon with Bottom Discharge">
                  <div class="description">
                    <h3>Code Name: BOBRN</h3>
                    <p>These wagons have a mechanism for bottom discharge, making them suitable for commodities that require easy unloading, such as coal and ballast.</p>
                  </div>
                </div>
              </div>
            </div>
            
        </div>
    </div>
    <script>
        const hamBurger = document.querySelector(".toggle-btn");

hamBurger.addEventListener("click", function () {
  document.querySelector("#sidebar").classList.toggle("expand");
});

    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
        <script>
            // Add functionality to toggle accordion panels
            var acc = document.getElementsByClassName("accordion");
            var i;
          
            for (i = 0; i < acc.length; i++) {
              acc[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                  panel.style.display = "none";
                } else {
                  panel.style.display = "block";
                }
              });
            }
          </script>
</body>

</html>