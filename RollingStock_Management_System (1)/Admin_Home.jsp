
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String name = (String)request.getSession(false).getAttribute("name"); %>

<%@page import="java.util.ArrayList" %>

<%@page import="Table_Display.Google_Charts_Line_Display" %>

	<% ArrayList da = (ArrayList)request.getSession(false).getAttribute("line"); %>
<!-- Table links -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js">
  </script>
  
  <script type="text/javascript" src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js">
  </script>
  
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home Page</title>

<!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome for icons -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

  <!-- image slideshow -->
  
  <style>
    /* Custom styles */
    .navbar-brand {
      font-size: 1.5rem; 
    }
    
    /* style sheet tags */
    .menu-row {
    display: flex;
    justify-content: space-between;
  }
  
  .menu-item {
    flex-basis: 18%; /* Adjust as needed to evenly distribute */
  }
  
  .menu-item img {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    border: 2px solid #ccc;
    transition: transform 0.3s ease;
  }
  
  .menu-item p {
    margin-top: 10px;
  }
  
  .menu-item:hover img {
    transform: scale(1.1);
  }
  
.parallax {
    height: 500px; 
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }
 
.navbar {
	padding-top:10px;
	position:fixed;
	z-index:1;
    background: rgba(255,255,255,0.50);
    color: white;
    width:100%;
}

/* image slideshow */
.mySlides {display:none;}

/* Slideshow container */
.slideshow-container {
  max-width: 500px;
  position: relative;
  margin-left: auto;
  margin-right: auto;
}

/* Caption text */
.text {
  color: White;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
  display: block;  
  background-color: grey;
  font-weight:bold;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: none;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 2.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
table,td,th{
border: 2px solid black;
}
#a1 {
       border-left: 2px solid red;
       border-top: 2px solid red;
       border-bottom: 2px solid red;
       box-sizing: border-box;
       display: inline-block;
       float:left;
       width:50%;
       margin-top:10px;
       margin-bottom:20px;
       background-color:#D3D3D3;
     }
#a2 {
       border:  2px solid red;
       box-sizing: border-box;
       display: inline-block;
       float:left;
       width:50%;
       margin-top:10px; 
       margin-bottom:20px; 
       background-color:#D3D3D3;      
     }
#line1 {
       border:  2px solid red;
       box-sizing: border-box;
       display: inline-block;
       width:100%; 
       margin-bottom:20px; 
       background-color:#D3D3D3; 
       padding:10px;    
     }
#line2 {
       border:  2px solid black;
       box-sizing: border-box;
       display: inline-block;
       width:100%; 
       margin-bottom:20px;
       padding:10px; 
       background-color:#D3D3D3;     
     }
  </style>

</head>
<body>
<div class="navbar">
  <div style="float:left;width:2%;">
  <img src="images/raillogo.png" height="110px" width="110px">
  </div>
  <div style="float:left;width:50%;">
  <h2 style="text-align:center;font-family:Calibri;font-size:40px;color:Black;margin-left:85px;">
	<b>Rolling Stock Management System<br>Indian Railways</b></h2>
  </div>
  <div style="float:left;width:12%;">
  <img src="images/emblem2.png" height="130px" width="140px" style="margin-top:-15px;margin-left:-30px;">
  </div>
  <div style="float:left;width:12%;">
  <img src="images/azadi1.png" height="110px" width="250px" style="margin-left:-40px;">
  </div>
  <div style="float:left;width:18%;">
  <h6 style="text-align:center;font-family:Calibri;font-size:26px;color:Black;margin-left:10px;"><b>Welcome Admin<br>
  <%= name %></b></h6>
  
  </div>
  <div style="float:left;width:6%;">
  <a href="login.html" style="font-family:Ariel;font-size:26px;color:Blue;"><br><u>Log Out</u></a>
  </div>
</div>

<!-- Video -->
<video autoplay loop plays-inline muted height="600" width="100%" style="object-fit: fill;">
  <source src="images/AdminHomeRail.mp4" type="video/mp4">
</video>

<!-- Dashboard - charts -->
<div>
	<div id='a1'>
		<h2 style="text-align:center;">Incoming / Outgoing</h2>
		<div id="incoming"></div>
	</div>
	
	<div id='a2'>
		<h2 style="text-align:center;">Target / Actual Outturn</h2>
		<div id="target"></div>
	</div>
</div>
                <!-- Start Table  To Be changed-->
<div id='line2'>
<h2 style="text-align:center;">Current Workshop Holding</h2>
  <div class="flex-container">
  <div class="outer-wrapper" style="padding:8px;">
    <div class="table-wrapper">
    <table id="coach_sum" class="display" style="width:90%;margin-left:60px;">
    <caption style="font-size:25px;"></caption>
        <thead style="background-color: #EDAE49;color:black;">
        <th>Code</th>  <th>POH</th>  <th>NPOH</th>  <th>ROH</th>
        <th>Condemnation</th>  <th>Conversion</th>  <th>SPL - Repair</th>  <th>total</th>
      </thead>
        <tbody>
		<tr><td>BCNAM1</td><td class="coach">3</td><td class="coach">1</td><td class="coach">0</td><td class="coach">0</td><td class="coach">0</td><td class="coach">1</td><td id="total"></td></tr>
		<tr><td>BTPN</td><td class="coach">7</td><td class="coach">0</td><td class="coach">2</td><td class="coach">0</td><td class="coach">1</td><td class="coach">1</td><td id="total"></td></tr>
		<tr><td>BVZI</td><td class="coach">2</td><td class="coach">2</td><td class="coach">0</td><td class="coach">0</td><td class="coach">0</td><td class="coach">2</td><td id="total"></td></tr>
        </tbody>
        
    </table>
</div>
</div>
</div>
</div>
<!-- End Table -->
<div id='line1'>
<h2 style="text-align:center;">Last 30 working Days : Incoming & Outturn</h2>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <div id="last30days"></div>
</div>

<!-- Menu Bar -->
<div class="container mt-4">
  <div class="row justify-content-center">
    <div class="col-md-12 text-center">
      <h2>Menu</h2>
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-md-15 text-center"> <!-- Adjusted to use 75% of the screen -->
      <div class="menu-icons">
        <!-- First Row -->
        <div class="menu-row">
          <div class="menu-item">
            <a href="Admin_Home.jsp">
            <img src="images/Menu Icons/planning.png" alt="Admin Home Page">
            <p>Home Page</p>
          </a>
          </div>
          <div class="menu-item">
            <a href="process_in_transit">
            <img src="images/Menu Icons/disruption.png" alt="process_in_transit">
            <p>Process In-Transit</p>
          </a>
          </div>
          <div class="menu-item">
            <a href="process_in_holding">
            <img src="images/Menu Icons/disruption.png" alt="process_In-Holding">
            <p>Process In-Holding</p>
          </a>
          </div>
          <div class="menu-item">
            <a href="process_modify">
            <img src="images/Menu Icons/disruption.png" alt="process_Modification">
            <p>Process Modification</p>
          </a>
          </div>
          <div class="menu-item">
            <a href="rs_failure">
            <img src="images/Menu Icons/disruption.png" alt="Rolling Stock Failure">
            <p>RS Failure</p>
          </a>
          </div>
          <div class="menu-item">
            <a href="#">
            <img src="images/Menu Icons/disruption.png" alt="Reports">
            <p>Reports</p>
          </a>
          </div>
          
          <div class="menu-item">
            <a href="#">
            <img src="images/Menu Icons/product-description.png" alt="Assembly">
            <p>Assembly</p>
          </a>
          </div>
        </div>
        <!-- Second Row -->
        <div class="menu-row">
          <div class="menu-item">
            <a href="condemnation">
            <img src="images/Menu Icons/data logo.jpg" alt="RS / Wheel Condemnation">
            <p>RS / Wheel Condemnation</p>
          </a>
          </div>
          
          <div class="menu-item">
            <a href="rail_desc_manufacturers.jsp">
            <img src="images/Menu Icons/data logo.jpg" alt="Railway Manufacturers">
            <p>Railway Manufacturers</p>
          </a>
          </div>
          
          <div class="menu-item">
            <a href="rail_desc_zones.jsp">
            <img src="images/Menu Icons/data logo.jpg" alt="Railway Zones">
            <p>Railway Zones</p>
          </a>
          </div>
          
          <div class="menu-item">
            <a href="rail_desc_wagon_types.jsp">
            <img src="images/Menu Icons/data logo.jpg" alt="Railway Wagon Types">
            <p>Railway wagon types</p>
          </a>
          </div>
          
          <div class="menu-item">
            <a href="Rs_master_data">
            <img src="images/Menu Icons/scrapping.png" alt="Rolling Stock Master Data">
            <p>Rolling Stock Master Data</p>
          </a>
          </div>
          <div class="menu-item">
            <a href="holiday_master_data">
            <img src="images/Menu Icons/scrapping.png" alt="Holiday Master Data">
            <p>Holiday Master Data</p>
          </a>
          </div>
          <div class="menu-item">
            <a href="storage_location">
            <img src="images/Menu Icons/scrapping.png" alt="Storage / Location Master Data">
            <p>Location Master Data</p>
          </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<!-- Railway Description Section -->
<section id="railway-description" class="mt-5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-12 text-center">
        <h2>Railway Description</h2><br>
      </div>
    </div>
    <div class="row align-items-center">
      <div class="col-md-6">
        <img src="images/rail_desc.jpg" alt="Railway" style="height:400px;width:600px;margin-left:-150px;">
      </div>
      <div class="col-md-6">
        <div class="text-center text-md-justified">
          <p><b>Rolling stock maintenance in railways is a crucial aspect of ensuring the safety, reliability, and efficiency of train operations. It involves a series of planned activities aimed at inspecting, repairing, and servicing railway vehicles to keep them in optimal condition.</b></p>
          <p><b>Maintenance tasks include routine checks, preventive maintenance, corrective repairs, and component replacements to address wear and tear, prevent failures, and extend the lifespan of rolling stock.</b></p>
        </div>
      </div>
    </div>
  </div>
</section>
<br>
<br>
<h2 style="text-align:center;">About Organisation</h2>
<div>
  <div style="float:left;width:35%;">
  <p style="text-align: justify;margin:30px;"><b> Pratap Nagar railway station has workshop for maintaining coaches and carriage wagons. The foundation stone of Pratap Nagar workshop was laid by His-Highness Lord Chelmsford and Viceroy & Governor General of India in 26th March, 1919. Pratap Nagar Railway workshop started functioning in 1922. </b></p>
  </div>
  <div style="float:left;width:30%;">
  <p style="text-align: justify;margin:30px;"><b> The first state owned Railway by ruler of Vadodara & pioneer to lay first NG Rail line between Dabhoi to Miyagaon in 1863. Though it was only materialised in 1953 when the complete track formation was upgraded to withstand steam locos which were imported to haul the trains. </b></p>
  </div>
  <div style="float:left;width:35%;">
  <p style="text-align: justify;margin:30px;"><b> Till the formation of Western Rly., the technical control of Pratap Nagar workshop was with Loco and Carriage Parel and administrative control was exercised by Manager and Chief Engineer, GBSR Railway. After formation of Western Railway, Pratap Nagar workshop was put under technical and administrative control of Divisional Mechanical Engineer, Vadodara region. </b></p>
  </div>
</div>
<br>

<!-- Slidshow -->
<div class="slideshow-container">
<div class="mySlides fade">
  <img src="images/p1.jpg" style="width:100%;height:350px;">
  <div class="text">In-Transit & Outgoing Lines</div>
</div>

<div class="mySlides fade">
  <img src="images/p2.jpg" style="width:100%;height:350px;">
  <div class="text">Sections Of Workshop</div>
</div>

<div class="mySlides fade">
  <img src="images/p3.jpg" style="width:100%;height:350px;">
  <div class="text">Rolling Stock in Holding</div>
</div>

<div class="mySlides fade">
  <img src="images/p4.jpg" style="width:100%;height:350px;">
  <div class="text">Maintenance Completed - Milk Wagon</div>
</div>

<div class="mySlides fade">
  <img src="images/p5.jpg" style="width:100%;height:350px;">
  <div class="text">Main Assembly 1 - Rolling Stock Upper Part</div>
</div>

<div class="mySlides fade">
  <img src="images/p6.jpg" style="width:100%;height:350px;">
  <div class="text">Main Assembly 2 - Rolling Stock Lower Part (Bogie)</div>
</div>

<div class="mySlides fade">
  <img src="images/p7.jpg" style="width:100%;height:350px;">
  <div class="text">Main Assembly 3 - Wheels </div>
</div>

<div class="mySlides fade">
  <img src="images/p8.jpg" style="width:100%;height:350px;">
  <div class="text">Sub Assembly - 1</div>
</div>

<div class="mySlides fade">
  <img src="images/p9.jpg" style="width:100%;height:350px;">
  <div class="text">Sub Assembly - 2</div>
</div>

<div class="mySlides fade">
  <img src="images/p10.jpg" style="width:100%;height:350px;">
  <div class="text">Sub Assembly Testing</div>
</div>

<div class="mySlides fade">
  <img src="images/p11.jpg" style="width:100%;height:350px;">
  <div class="text">Types of Rolling Stock With Codes</div>
</div>

</div>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span> 
  <span class="dot"></span> 
   
</div>

<!-- Parallax Background Image 
<div class="parallax" style="background-image: url('images/photo2.jpg');"></div>-->

<footer class="footer mt-auto py-3">
  <div class="container">
    <span class="text-muted">Rolling Stock Maintenance</span>
  </div>
</footer>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2500); // Change image every 2 seconds
}
</script>


  <script type="text/javascript">
  google.charts.load('current', {packages: ['corechart', 'bar']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {

	  var data = google.visualization.arrayToDataTable([
	       ['Heading', 'No. of coaches',{ role: 'annotation' }],
	       ['todays incoming', 2 , '2'],
	       ['yesterday outturn', 6 , '6'],
	       ['In - Holding', 18 , '18'],
	      ],
	      false); // 'false' means that the first row contains labels, not data.

        var options = {
          hAxis: {
            title : '',
          },
          vAxis: {
            title :'no of coaches',
            gridlines: {color: 'black'}
          },
          width: 750,
          height:400,
          backgroundColor: '#D3D3D3',
          colors: ['#00798C']
          
        };

        var chart = new google.visualization.ColumnChart(
          document.getElementById('incoming'));

        chart.draw(data, options);
      }
  </script>

<script type="text/javascript">
  google.charts.load('current', {packages: ['bar']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {

	  var data = google.visualization.arrayToDataTable([
	       ['Heading', 'Monthly','Yearly'],
	       ['Target', 120 ,1440],
	       ['Till Date Target', 67 ,1267],
	       ['cum. Outturn', 70 ,1378],
	      ],
	      false); // 'false' means that the first row contains labels, not data.

        var options = {
          hAxis: {
            title : ''
          },
          vAxis: {
            title : 'no of coaches',
            gridlines: {color: 'black'}
          },
          width: 750,
          height:400,
          bars: 'vertical',
          backgroundColor: '#D3D3D3',
          colors: ['#EDAE49', '#00798C']
        };

        var chart = new google.visualization.ColumnChart(
          document.getElementById('target'));

        chart.draw(data, options);
      }
  </script>

<script>
<%! int rc1; %>	
<%! int rc2; %>
google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawLineColors);

function drawLineColors() {
	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Date');
    data.addColumn('number', 'incoming');
    data.addColumn('number', 'outgoing');
    data.addRows(<%= da.size() %>);
    
    <% for(rc1 = 0; rc1 < da.size(); rc1++) { %>
    <% for(rc2 = 0; rc2 <= 2 ;) { %>
    	<% Google_Charts_Line_Display displ = (Google_Charts_Line_Display) da.get(rc1); %>
    		
    		data.setCell(<%= rc1 %>, <%= rc2 %> ,'<%= displ.getDate() %>');
    		<% rc2++; %>
    		data.setCell(<%= rc1 %>, <%= rc2 %> ,<%= displ.getIncoming() %>);
    		<% rc2++; %>
    		data.setCell(<%= rc1 %>, <%= rc2 %> ,<%= displ.getOutgoing() %>);
    		<% rc2++; %>
    	<% } %>
    <% } %>
    
      var options = {
        hAxis: {
        	slantedText: true,
        	slantedTextAngle:90,
        	"gridlines.count":30
        },
        vAxis: {
          title: 'incoming / outgoing',
          gridlines: {color: 'black'}
        },
        colors: ['#a52714', '#097138'],
        backgroundColor: '#D3D3D3',
        'height' : 500
      };

      var chart = new google.visualization.LineChart(document.getElementById('last30days'));
      chart.draw(data, options);
    }
</script>
</body>
</html>