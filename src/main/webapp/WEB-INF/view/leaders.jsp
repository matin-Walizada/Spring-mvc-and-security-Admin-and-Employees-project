<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
	
	.right{
	float: right;
	padding: 10px;
	
	}
	
	.left{
	float: left;
	padding: 10px;
	
	}
	</style>
</head>
<body background=" <c:url value='/images/loghi.jpg'/> " >

           <a class="right" id="text" href="${pageContext.request.contextPath}/showLoginPage">
         		<button type="button" class="btn btn-danger" >Log Out</button>
         	</a>
			<a class="left" href="${pageContext.request.contextPath }/">
	         <button type="button" class="btn btn-info"> HOME PAGE</button>
	
	      </a>
	      
	      <a class="left" href="${pageContext.request.contextPath}/getEmployees" style="color: red"> 
            	<button type="button" class="btn btn-success">Employee list</button>
            </a>

			<div style="width: 30%" class="container">
			<h1 style="color: white">MANAGERS  PORTAL</h1>
			<h2 style="color: white">Add Employees info</h2>
				<h4 style="color: white"> ${successeSaveMessage} </h4>
			<form:form action="saveEmployees" method="post">
            <div class="form-group">
               <label style="color: white;" for="fristName">Employee first Name</label> <input
                  type="text" class="form-control"
                  placeholder="enter first Name" name="fristName">
            </div>
            <div class="form-group">
               <label style="color: white" for="name">Employee Last Name</label> <input
                  type="text" class="form-control"
                  placeholder="enter last Name" name="lastName">
            </div>
            <button type="submit" class="btn btn-primary">Add Employee</button>
           
           
            
            
         	
         
            <hr>
           
            <br>
         
         </form:form>
			
			
			</div>





</body>
</html>