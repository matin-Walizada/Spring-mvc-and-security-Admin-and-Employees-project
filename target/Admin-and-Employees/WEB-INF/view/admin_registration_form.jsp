 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
<!-- this is Bootstrap Cdn link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 
<title>Insert title here</title>

<style type="text/css">
label {
	color: white;
}

.panel-title{
color: white;
}



</style>
</head>
<body background=" <c:url value='/images/blue.jpg'/> ">

<div class="container">

        <div class="row centered-form">

        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h1 class="panel-title"> Admins Sign Up Portal <small></small></h1>
							<span style="color: red;"> ${successMessage}</span>
			 			</div>
			 			<div class="panel-body">
			    		<form:form action="register" method="post">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label>First Name</label>
			                <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label>Last Name</label>
			    						<input type="text" name="last_Name" id="lastName" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>

			    					<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label id="text" >User Name</label>
			    						<input type="text" name="username" id="username" class="form-control input-sm" placeholder="username">
			    					</div>
			    				</div>

			    					<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label>Password</label>
			    						<input type="text" name="password" id="password" class="form-control input-sm" placeholder="password">
			    					</div>
			    				</div>

			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label>Phone Number</label>
			    						<input type="number" name="number" id="number" class="form-control input-sm" placeholder="number">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label>Email</label>
			    						<input type="text" name="email" id="email" class="form-control input-sm" placeholder="email">
			    					</div>
			    				</div>
			    				
			    				
			    					<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					<label>Enable</label>
			    						<input type="text" name="enabled" id="enabled" class="form-control input-sm" placeholder="put 1 in this field">
			    					</div>
			    				</div>
			    				
			    			</div>



						     <button type="submit" class="btn btn-info" >Sign Up</button>
						        <a herf="${pageContext.request.contextPath}/showLoginPage">
						            
								      <button type="button" class="btn btn-primary">Long In</button>
								</a>
								
								 
			    		</form:form>

			    	</div>


	    		</div>
    		</div>
    		<div style="width: 30%" class="float-right">

    		<div>
    		Nave right
    		<img src="img/" alt="">

    		</div>

    		</div>
    	</div>

    </div>


</body>
</html>