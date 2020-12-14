    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.employee.model.EmployeesModel"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>


<!DOCTYPE html>
<html>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet"
         href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
      <script
         src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script
         src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script
         src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
      <meta charset="ISO-8859-1">
      <title>Insert title here</title>
      <style type="text/css">
      .table table-bordered{
      color:black;
      border-color: black;
      }
      
      #text{
      color:black;
      }
      
      .right{
	float: right;
	padding: 10px;
	
	}
	
	.left{
	float: left;
	padding: 10px;
	
	}
      
      h1 { text-align: center }
      
      
      table.table-bordered{
    border:1px solid blue;
    margin-top:20px;
  }
table.table-bordered > thead > tr > th{
    border:1px solid blue;
}
table.table-bordered > tbody > tr > td{
    border:1px solid blue;
}
      
      
      </style>
      
   </head>
   
   <body background=" <c:url value='/images/list.jpg'/> ">
   
   
  		  <a class="left" href="${pageContext.request.contextPath }/">
	     <button type="button" class="btn btn-primary">Back to Home Page</button>
	      </a>
	      
	       <a class="left" id="text" href="${pageContext.request.contextPath}/leaders">
         <button type="button" class="btn btn-success" >Back to Add Employee</button>
         </a>
         
          <a class="right" id="text" href="${pageContext.request.contextPath}/showLoginPage">
         <button type="button" class="btn btn-danger" >Log Out</button>
         </a>
	       
      <div class="container"  >
        <h1 class="center"> Employee List</h1>
         <hr>
         <div >
            <table  class="table table-bordered ">
            <span style="color:red">${deleteMessage}</span>
             
               <thead>
                  <tr id="text">
                     <th>ID</th>
                     <th>First Name</th>
                     <th>Last Name</th>
                     <th>DOH</th>
                     <!-- <th>PHOTO</th> -->
                    <th>ACTION</th>  
                  </tr>
               </thead>
               <tbody>
                  <%
                     List<EmployeesModel> theEmployeeList =(List<EmployeesModel>)request.getAttribute("employees");
                     
                     for(EmployeesModel myEmployes : theEmployeeList){
                     	
                     %>
                  <tr id="text">
                     <td><%=myEmployes.getId() %></td>
                     <td><%=myEmployes.getFirstName() %></td>
                     <td><%=myEmployes.getLastName() %></td>
                     <td><%=myEmployes.getDoh() %></td>
                      
                       <%--  <td>
                        <img alt="No image" src="loadphoto?dbid=<%=myEmployes.getId()%>" style="height: 120px;">
                        
                        </td> --%>
                      
                      
                     <td > 
                     
                        <a href="removeEmployee?firstName=<%=myEmployes.getFirstName() %>" >
                        <img alt="there is no img" src="images/delete.png" style="height: 40px"  > 
                        
                         <button type="button" class="btn btn-danger">delete</button>
                        </a>
                        
                          <a href="updateEmployee?eid=<%=myEmployes.getId()%>" >
                        <img alt="there is no img" src="images/edit.png" style="height: 40px"> 
                        <button type="button" class="btn btn-primary">update</button>
                        </a>
                        
                         
                     </td>  
                  </tr>
                  
                  <% } %>
               </tbody>
            </table>
         </div>
        
         
        
         
        
      </div>
   </body>
</html>
   
   
   
   