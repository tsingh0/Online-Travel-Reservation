<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Plane Ticketing</title>
	</head>
	
	<body>
		<%
		String message = request.getParameter("user_message");
		if(message == null){
			message = "Welcome please log in or create an account";
		}
		out.print(message); %> <!-- output the same thing, but using 
	                                      jsp programming -->
							  
		<br>
	
		 <!-- Show html form to i) display something, ii) choose an action via a 
		  | radio button -->
		<!-- forms are used to collect user input 
			The default method when submitting form data is GET.
			However, when GET is used, the submitted form data will be visible in the page address field-->
		<form method="post" action="mainInterface.jsp">
		    <!-- note the show.jsp will be invoked when the choice is made -->
			<!-- The next lines give HTML for radio buttons being displayed -->

		  <table>
				<tr>    
					<td>Username</td><td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password</td><td><input type="text" name="password"></td>
				</tr>		  
			</table>
			<input type="submit" name="command" value="Sign in"/>
		  <br>
		</form>
		<form method="post" action="login.jsp">
		  <input type="submit" name="user_message" value="Create New Account"/>
		    <!-- when the radio for bars is chosen, then 'command' will have value 
		     | 'bars', in the show.jsp file, when you access request.parameters -->
		  <br>
		</form>
		<br>
	
	An existing bar wants to sell an existing beer! Type the bar, the beer and the price of the beer:
	<br>
		<form method="get" action="sellsNewBeer.jsp">
			<table>
				<tr>    
					<td>Bar</td><td><input type="text" name="barvalia"></td>
				</tr>
				<tr>
					<td>Beer</td><td><input type="text" name="beer"></td>
				</tr>
				<tr>
					<td>Price</td><td><input type="text" name="price"></td>
				</tr>
			</table>
			<input type="submit" value="Add the selling beer!">
		</form>
	<br>
	
	
	Alternatively, lets type in a new bar, a new beer, and a price that this bar will sell the beer for.
	<br>
		<form method="post" action="newBarBeerPrice.jsp">
		<table>
		<tr>    
		<td>Bar</td><td><input type="text" name="bar"></td>
		</tr>
		<tr>
		<td>Beer</td><td><input type="text" name="beer"></td>
		</tr>
		<tr>
		<td>Price</td><td><input type="text" name="price"></td>
		</tr>
		</table>
		<input type="submit" value="Add me!">
		</form>
	<br>
	
	Or we can query the beers with price:
	<br>
		<form method="get" action="query.jsp">
			<select name="price" size=1>
				<option value="3.0">$3.0 and under</option>
				<option value="5.0">$5.0 and under</option>
				<option value="8.0">$8.0 and under</option>
			</select>&nbsp;<br> <input type="submit" value="submit">
		</form>
	<br>

</body>
</html>