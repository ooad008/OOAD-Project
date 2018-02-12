<!DOCTYPE html>
<html>
<jsp:include page="SellerHeader.jsp" />
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding-top: 100px;
    padding-left:200px;
    padding-right:200px;
    padding-bottom:100px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 190px;
    }
}
</style>
<body>

<form action="http://localhost:8080/akshay/webapi/webservice/addItem/" method="post" style="border:1px solid #ccc">
  <div class="container">
  
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="Choose Category"><b>Choose Category</b></label>
   <!--   <input type="text" placeholder="Category" name="category" required> -->
    <select name="category" name="category"  required >
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
		</select><br><br>

    <label for="title"><b>Product Title</b></label>
    <input type="text" placeholder="Title" name="title" required>

    <label for="price"><b>Product Price</b></label>
    <input type="text" placeholder="Price" name="price" required>
    
    <label for="discreption"><b>Description</b></label>
    <input type="text" placeholder="" name="discription" required>
    
     <label for="address"><b>Address</b></label>
    <input type="text" placeholder="" name="address" required>
    
    <label for="Choose City"><b>Choose City</b></label>  
      <select name="city" required >
      
			<option value="blr" selected="">Bangalore</option>
			<option value="Hyderabad">Hyderabad</option>
			<option value="Chennai">Chennai</option>
			<option value="Mumbai">Mumbai</option>
			</select><br><br>
			
    <label for="pincode"><b>Pincode</b></label>
    <input type="text" placeholder="" name="pincode" required>
			
			
    <label for="emailid"><b>Email Id</b></label>
    <input type="text" placeholder="" name="emailid" required>
    
    
    <label for="mobile"><b>Contact</b></label>
    <input type="text" placeholder="" name="mobileno" required>
    
    <div class="clearfix">
      <input type="submit" title="Save"/><br><br>
        <input type="button" value="upload image" onclick="window.location.href='http://localhost:8080/akshay/uploadimage.html'" />
    </div>
  </div>
</form>
</body>
</html>
