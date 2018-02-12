<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>header</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style>

.dropdown1:hover .dropdown-menu {
    display: block;
    margin-top: 0; 

 }
 #right-panel {
  margin-right:-90px;
 }
#catli:hover #catul {
    display: block;
    margin-top: 0; 

 }
 #catul{
  width:300px;
    height:500px;
 }
 #submenu {
   position: absolute;
    top: -0;
    right: 0;
    width:150%;
    height:500px;
}
.dropdown-submenu>.dropdown-menu {
    top: 100%;
    left: 100%;
    margin-top: 0%;
    margin-left: -1px;
    align:top;
    
}
.dropdown-submenu:hover>.dropdown-menu {
    display: block;
}
.dropdown-submenu>a:after {
    display: block;
    content: " ";
    float: right;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px 0 5px 5px;
    border-left-color: #ccc;
    margin-top: 5px;
    margin-right: -10px;
}
.dropdown-submenu:hover>a:after {
    border-left-color: #fff;
}
.dropdown-submenu.pull-left {
    float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
    left: -100%;
    margin-left: 10px;
  
}

</style>

</head>
<body   >

<nav  class="navbar navbar-default navbar-fixed-top" style="background-color:#000000;" width="200dp">
  <div class="container-fluid" style="background-color:#000000;" >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" style="background-color:#000000;border: none;">
    
    <nav class="navbar navbar-default"  style="background-color:#000000;border: none;">
  <div class="container-fluid" style="background-color:#000000;border: none;">
    <div class="navbar-header" style="background-color:#000000;border: none;	">
    <a href="http://localhost:8080/akshay/amazonhomepage.jsp">
      <img src="http://127.0.0.1:8887/upload/amazon_logo.jpg"  style="height:40px;border: none; color: Orange" /></a>
       <!--  <img alt="Brand" src="..."> -->
      </image>
    </div>
  </div>
</nav>
    </div>
    <div style="padding-top:15px;">
  <form  action="/action_page.php" >
   
      <div class="input-group">
        
      <div style="float: left;background-color:#f9f9f9;padding:6px;height:35px;">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">All <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Electronics</a></li>
            <li><a href="#">Computers</a></li>
            <li><a href="#">Women's Clothing</a></li>
            <li><a href="#">Men's Clothing</a></li>        
          </ul>
        </li>
        </div>
       <div style="float: left;width:600px;" >
        <input type="text" class="form-control" placeholder="Search" name="search"  >
          </div>
            <div class="input-group-btn" style="float: left;height:23px;" >
          <button class="btn btn-default" type="submit" style="background-color:orange;height:150%">
            <i class="glyphicon glyphicon-search"></i>
          </button>
          </div>
      </div>
    </form>
</div>



    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-right:20px;margin-top:30px;">
   <!--    <ul class="nav navbar-nav">
        <li ><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
       
      </ul> -->
  <div class="btn-group" style="margin:auto;">
<a href="#"   style="background-color:#000000;color:white;">Deliver to <br>Bengaluru</a>
      </div>
<div class="btn-group" style="color: white;margin:auto;">
  <ul class="nav">
    <li class="dropdown" id="catli"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background-color:#000000;color:white;">Shop by<br><b>Category</b></a>
 	<ul class="dropdown-menu multi-level" id="catul" role="menu" aria-labelledby="dropdownMenu">
              <li class="dropdown-submenu">
                <a tabindex="-1" href="#">Echo & Alexa</a>
                <ul class="dropdown-menu" id="submenu">
                 <li class="dropdown-header">Echo & Alexa</li>
                  <li><a tabindex="-1" href="#">Echo Dot</a></li>
                  <li><a href="#">Amazon Echo</a></li>
                  <li><a href="#">Echo Plus</a></li>
                   <li><a href="#">See All Device with Alexa</a></li>
                </ul>
              </li>
                <li class="dropdown-submenu">
                <a tabindex="-1" href="#">Amazon Fire TV Stick</a>
                <ul class="dropdown-menu" id="submenu">
                  <li><a href="#">Amazon Fire TV Stick</a></li>
                  <li><a tabindex="-1" href="#">Amazon Prime Video</a></li>
                  <li><a href="#">Fire TV Apps & Games</a></li>
                  </ul>
              </li>
              <li class="divider"></li>
              <li class="dropdown-submenu">
                <a tabindex="-1" href="#">Mobiles, Computers</a>
                <ul class="dropdown-menu" id="submenu">
                 <li class="dropdown-header">Mobiles, Tablets & More</li>
                  <li><a tabindex="-1" href="#">All Mobile Phones</a></li>
                  <li><a href="#">All Mobile Accesories</a></li>
                  <li><a href="#">Cases & Covers</a></li>
                   <li><a href="#">Screen & Protectors</a></li>
                </ul>
              </li>
               <li class="dropdown-submenu">
                <a tabindex="-1" href="#">TV, Appliances, Electronics</a>
                <ul class="dropdown-menu" id="submenu">
                 <li class="dropdown-header">TV, Audio & Camera</li>
                  <li><a tabindex="-1" href="#">Televisions</a></li>
                  <li><a href="#">Home Entertainment System</a></li>
                  <li><a href="#">Headphones</a></li>
                   <li><a href="#">Speakers</a></li>
                </ul>
              </li>
            </ul>
  </li>
  </ul>
</div>
	<div class="btn-group" style="margin-left:20px;">
<a href="#"   style="background-color:#000000;color:#bcb7b7;">Your Amazon.in</a>
      </div>
      
      <div class="btn-group" style="margin-left:20px;">
<a href="#"   style="background-color:#000000;color:#bcb7b7;">Today's Deals</a>
      </div>
       <div class="btn-group" style="margin-left:20px;">
<a href="#"   style="background-color:#000000;color:#bcb7b7;">Amazon Pay</a>
      </div>
      
      <div class="btn-group" style="margin-left:20px;">
<a href="http://localhost:8080/akshay/seller.jsp"   style="background-color:#000000;color:#bcb7b7;">Sell</a>
      </div>
      
       <div class="btn-group" style="margin-left:20px;">
<a href="#"   style="background-color:#000000;color:#bcb7b7;">Customer Service</a>
      </div>
      
      
      <ul class="nav navbar-nav navbar-right">
      
      <div class="btn-group" style="color: white;">
  <ul class="nav">
    <li class="dropdown1"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background-color:#000000;color:white;" aria-haspopup="true" aria-expanded="false">Hello. Sign in<br><b>Your Orders</b></a>
 	 <ul class="dropdown-menu" id="right-panel">
              <li> <button type="button" class="btn btn-default navbar-btn" style="background-color:orange;width:70%;margin-left:30px;" onclick="window.location.href='http://localhost:8080/akshay/amazonlogin.jsp'" >Sign in</button></li>
              
              <li class="divider"></li>
      	   		<li><a href="#">Your Account</a></li>
   				 <li><a href="#">Your Orders</a></li>
   				 <li><a href="#">Your Wish List</a></li>
   				 <li><a href="#">Your Recommendation</a></li>
   				 <li><a href="#">Your Prime Membership</a></li>
   				 <li><a href="#">Your PSubscribe & Save items</a></li>
   				 <li><a href="#">Your Amazon Pay Balance</a></li>
   				 <li><a href="#">Your Amazon Business Account</a></li>
   				 <li><a href="#">Your Seller Account</a></li>
   				 <li class="divider"></li>
   				 <li><a href="#">Manage Your content & devices</a></li>
   				 <li><a href="#">Your Kindle Unlimited</a></li>
   				 <li><a href="#">Your Apps & Devices</a></li>
            </ul>
  </li>
  </ul>
</div>
<div class="btn-group" style="color: white;">
  <ul class="nav">
    <li class="dropdown1"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background-color:#000000;color:white;" aria-haspopup="true" aria-expanded="false">Try<br><b>Prime</b></a>
 	 <ul class="dropdown-menu"  id="right-panel">
            
      	   		<li><img src="https://images-na.ssl-images-amazon.com/images/G/31/prime/CEO/Jul17/AT/PIN/TryPrime/IN-Prime-PIN-TryPrime-MultiBen-400x400._CB519180798_.jpg"/></li>
   			
            </ul>
  </li>
  </ul>
</div>
<div class="btn-group" style="color: white;">
  <ul class="nav">
    <li class="dropdown1"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="background-color:#000000;color:white;" aria-haspopup="true" aria-expanded="false">Your<br><b>Lists</b></a>
 	 <ul class="dropdown-menu"  id="right-panel">
            
      	   		<li><a href="#">Create a Wish List</a></li>
   				 <li><a href="#">Find a Wish List</a></li>
   				 <li><a href="#">Wish from Any Website</a></li>
   				 <li><a href="#">Baby Wish list</a></li>
   				
            </ul>
  </li>
  </ul>
</div>

<div class="btn-group" style="color: white;background-color:#000000;border: none;">
 <button class="btn btn-default" type="submit" style="color: white;background-color:#000000;border: none;">
            <img src="http://127.0.0.1:8887/upload/cart.jpg" style="height:40px;"/>
            <b>Cart</b>
          </button>
</div>
      
       
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

</body>
</html>
