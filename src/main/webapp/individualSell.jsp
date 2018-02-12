<!DOCTYPE html>
<html>
<head>
	<title>Sell used and new product| Post you ad for free| amazon.in</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<style >
		#ad{
			margin-top: 10px;
			margin-left: 1000px;
		}
		#frm{
			align-items: center;
			margin: 50px;
		}
	</style>
</head>
<body>

	<h4 align="center">What do you want to sell? <h6><i align="center">*required fields</i></h6></h4>
<!--  	<div id="ad">
		<img src="ad1.png">
	</div>
	-->
	<div id="frm">
	<center>
	<form action="webapi/webservice/addItem" method="post">
		<select name="category" name="category"  required width="200">
			<option  selected disabled> +category select*</option>
			<option value="popular">Popular</option>
			<option value="Mobile">Mobile,Mobile accessories, electronics</option>
			<option value="computer">computer, computer accessories</option>
			<option value="camera">camera, camera accessories</option>
			<option value="Men" >Men's fashion</option>
			<option value="Women" >Women's fashion</option>
			<option value="Kid">Kid's fashion</option>
			<option value="kitchen">kitchen</option>
			<option value="Home">Home</option>
			<option value="Beauty">Beauty, health, appliances</option>
			<option value="Sports">Sports, toys, garden</option>
			<option value="Bags">Bags, Luggage,Wallets</option>
			<option value="Car">Car and vehicle accesories</option>
			<option value="Media">Media</option>
			<option value="Industrial">Industrial</option>
		</select><br><br><br>
		
		<input type="text" name="product_title" placeholder=" Product Title *" required width="200"><br><br><br>
		<input type="number" name="price" placeholder="your price *" required width="200"><br><br><br>
		<input type="text" name="description" placeholder="Anything else" width="200"><br><br><br>
		<input type="text" name="address" placeholder="Door No./Flat No. Building Name *" required width="200"><br><br><br>
		<select name="city" required width="200">
			<option value="blr" selected="">Bangalore</option>
			<option value="Hyderabad">Hyderabad</option>
			<option value="Chennai">Chennai</option>
			<option value="Mumbai">Mumbai</option>	
		</select><br>
		<input type="number" name="pin" placeholder="pincode *" required width="200"><br><br><br>
		<input type="email" name="email" placeholder="your email *" required width="200"><br><br><br>
		<input type="number" name="phone" placeholder="your phone number *" required width="200"><br><br><br>
		<h6>By clicking on the <em>Post Your Ad</em> button,<br> you agree to the Local Product Ads and Amazon Services Business Solutions Agreement </h6><br>
		<input type="submit" value="Post Your Ad"><br>
		<a href="seller.jsp">
		<input type="button" value="Upload Photos" onclick="window.location.href="http://localhost:8080/akshay/uploadimage.html">
		</a>
	</form>
	</center>
	</div>
	

</body>
</html>