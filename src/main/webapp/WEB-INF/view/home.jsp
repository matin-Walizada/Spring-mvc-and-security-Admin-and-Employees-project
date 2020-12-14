
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
	<title>	KAYHAN ACADEMY</title>
	
	<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
	#text{
	color: white;
	}
	
	.right{
	float: right;
	}
	</style>
</head>

<body background="<c:url value='/images/home.jpg'/>">


   
	      <a style="padding: 10px"  class="right" href=" ${pageContext.request.contextPath}/showLoginPage"">  
	      <button  type="button" class="btn btn-danger">LogOut</button>
	      </a>
     
    
    
	<div class="container">
	

	<h1 id="text">WELCOME TO KAYHAN ACADEMY HOME PAGE..</h1>
	<hr>
	
	<p id="text">
	   Education is the key to success!
	</p>
	
	<hr>
	
	<!-- display user name and role -->
	
	<p id="text">
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	
	<security:authorize access="hasRole('MANAGER')" >
	<p>
	<a href="${pageContext.request.contextPath}/leaders" >
	<button class="btn btn-success" >Managers</button>
  
	
	</a>
	
	</p>
	  </security:authorize>
			
			
			
		<security:authorize access="hasRole('ADMIN')" >	
			
				<p>
	<a href="${pageContext.request.contextPath}/systems" >
	<button class="btn btn-success" >Systems</button>
	
	
	</a>
	
	</p>
	
	 </security:authorize>
	
	
	
	
	
	
	
	
	
	
	
	<%-- <form:form action="${pageContext.request.contextPath}/logout">
	
	<input  type="submit" class="btn btn-danger" value="logout"/>
	
	
	
	</form:form> --%>
	
	