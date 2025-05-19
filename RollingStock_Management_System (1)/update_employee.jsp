<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String sysid = (String)request.getSession(false).getAttribute("sysid"); %>
<% String usern = (String)request.getSession(false).getAttribute("usern"); %>
<% String pass = (String)request.getSession(false).getAttribute("pass"); %>
<% String name = (String)request.getSession(false).getAttribute("name"); %>
<% String loc = (String)request.getSession(false).getAttribute("loc"); %>
<% String role = (String)request.getSession(false).getAttribute("role"); %>
<% String phone = (String)request.getSession(false).getAttribute("phone"); %>
<% String email = (String)request.getSession(false).getAttribute("email"); %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<title>update Employee</title>

<style>

.form-control::placeholder {
    color: #ccc;
    font-weight: bold;
    font-size: 0.9rem;
}
.form-control:focus {
    box-shadow: none;
}
.form-control{
	height:42px;
	border-style: groove;
	border-width:2px;
	border-color:grey;
	border-radius:30px;
	font-size:22px;
	
}


/* Video style */

video {
  object-fit: cover;
  width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
}


.viewport-header {
  position: relative;
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
}

h1 {
  font-family: 'Syncopate', sans-serif;
  color: #4a3a27;
  text-transform: uppercase;
  letter-spacing: 3vw;
  line-height: 1.2;
  font-size: 3vw;
  text-align: center;
  span {
    display: block;
    font-size: 10vw;
    letter-spacing: -1.3vw;
  }
}

main {
  width: 80vw;
  left: 10%;
  overflow: auto;
  background: rgba(0,0,0,0.60);
  color: white;
  position: relative;
  padding: 1rem;
}

  </style>
<title>Update Employee</title>
</head>
<body>
<video autoplay loop plays-inline muted>
  <source src="images/railway.mp4" type="video/mp4">
</video>


<main>
<div class="clearfix" >
  <div style="float:left;width:2%;">
  <img src="images/raillogo.png" height="110px" width="110px">
  </div>
  <div style="float:left;width:60%;">
  <h2 style="text-align:center;font-family:Calibri;font-size:40px;color:white;margin-left:100px;">
<b>Rolling Stock Management System<br>Indian Railways</b></h2>
  </div>
  <div style="float:left;width:19%;">
  <img src="images/emblem2.png" height="130px" width="140px" style="margin-top:-15px;">
  </div>
  <div style="float:left;width:19%;">
  <img src="images/azadi1.png" height="110px" width="250px" style="margin-left:-70px;">
  </div>
</div>

<div class="container" style="margin-top:-20px;">

    <div class="row py-5 mt-4 align-items-center" >
        <hr style="width:1153px;margin-left:-25px;" color="white">
        <div class="col-md-6 pr-lg-5 mb-5 mb-md-0">
        
        <!-- Registeration Form -->
        
        <form action="final_update_employee" method="get" style="text-align:center;margin-top">
                <div class="row">

					<h3 style="font-family:Calibri;font-size:28px;color:white;text-align:center;margin-left:40px;">
					<b>&nbsp;&nbsp;&nbsp;&nbsp;Update Employee Details</b></h3>
                    <!-- Username -->
                    <div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="System ID"><h5>System ID:</h5></label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="System ID" type="text" name="system_id" placeholder="System ID" value="<%= sysid %>" readonly class="form-control">
                    </div>

                    <!-- Password -->
                    <div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="username"><h5>Username:</h5></label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="username" type="text" name="username" placeholder="Username" value="<%= usern %>" readonly class="form-control">
                    </div>
					
					<div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="Password"><h5>Password:</h5></label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="Password" type="text" name="password" placeholder="Enter new Password" class="form-control">
                    </div>
                    
                    <div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="name"><h5>Name:</h5></label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="name" type="text" name="name" placeholder="name" value="<%= name %>" readonly class="form-control">
                    </div>
                    
                    <div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="location"><h5>location:</h5></label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="location" type="text" name="location" placeholder="Location" value="<%= loc %>" readonly class="form-control">
                    </div>
                    
                    <div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="Role"><h5>Role:</h5></label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="Role" type="text" name="role" placeholder="Role" value="<%= role %>" readonly class="form-control">
                    </div>
					<div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="Phone Number"><h5>Phone No. :</h5></label>
                        &nbsp;&nbsp;<input id="Phone Number" type="text" name="phone_no" placeholder="Phone Number" value="<%= phone %>" readonly class="form-control">
                    </div>
                    <div class="input-group col-lg-12 mb-4">
                        <label style="margin-top:7px;" for="Email ID"><h5>Email ID:</h5></label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="Email ID" type="text" name="email_id" placeholder="Email ID" value="<%= email %>" readonly class="form-control">
                    </div>
                    <!-- Submit Button -->
                    <div class="input-group col-lg-12 mb-4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="submit" value="Update" class="btn btn-primary mb-2" style="width:400px; text-align:center;">
                    </div>
					
                    
                    

                </div>
            </form>
        
        </div>

        
        <div class="col-md-7 col-lg-6 ml-auto">  
            <img style="border-radius:30px; margin-bottom:90px; height:600px; width:500px;" src="https://images.unsplash.com/photo-1540804236945-b6ae24bfe0a9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmFpbHdheXxlbnwwfHwwfHx8MA%3D%3D">
        </div>
    </div>
</div>
</main>
<script>
$(function () {
    $('input, select').on('focus', function () {
        $(this).parent().find('.input-group-text').css('border-color', '#80bdff');
    });
    $('input, select').on('blur', function () {
        $(this).parent().find('.input-group-text').css('border-color', '#ced4da');
    });
});
</script>
</body>
</html>