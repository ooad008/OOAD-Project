<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Amazon Home page</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script> 

$(function(){
  $("#header").load("header.jsp"); 
  $("#footer").load("footer.jsp"); 
});

</script>
	

</head>
<body style="padding-top:100px">
<div id="header"></div>

<center>
<img id="head" src="header.jpg" alt="sell on Amazon">
<table style="width:100%">
  <tr>
  
    <th align="left"   >
      <a href="SellerForm.jsp" target="_blank">
       <img src="getStarted.png">
       </a>
       </th>
    
    
    <th align="right"  >
    <a href="individualSell.jsp" target="_blank">
       <img src="getStarted2.jpg" >
       </a>
    </th> 
  
  </tr>
  <table>
  <style>
table, th, td {
  padding-top: 90px;
    padding-right: 50px;
    padding-bottom: 50px;
    padding-left: 50px;
}
</style>
 </center>
   
 


<!--  

<a  href="proSell.jsp">
	<img id="g1" src="getStarted.png" alt="professional seller" >
</a>
<a  href="http://localhost:8080/akshay/individualSell.jsp">
	<img id="g2" src="getStarted2.jpg" alt="individual Seller" >
</a>
-->
</body>
</html>