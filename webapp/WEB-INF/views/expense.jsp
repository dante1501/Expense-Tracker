<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html xmlns:th="http://www.thymleaf.org">
<c:set var="contextRoot" value="${pageContex.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add new Expense</title>
		<link href="/CSS/tablestyleexpense.css"  rel="stylesheet">
 </head>
<body>
<div class="banner">
        <div class="navbar">
            <img src="/IMAGES/logo.png" class="logo">
            <ul>
                <li><a href="${contextRoot}/">Home</a></li>
                <li><a href="${contextRoot}/home">Dashboard</a></li>
                <li><a href="#">Logout</a></li>
                
            </ul>
        </div>
        <div>
                <h2 class="table-heading">Add New Expense</h2>
    	</div>
        <div class="form-body">
        	<div class="form-container">
           	 <div class="content">
    			<form:form action="${contextRoot}/expense" method="post" modelAttribute="expense">
    				<div class="user-details">
						<form:hidden path="id" />
						<div class="input-box">
                      	<span class="details">Item Name</span>
    					<form:input type="text" path="expensename" placeholder="Expense Name " />
    					</div>
    					<div class="input-box">
                      	<span class="details">Amount</span>
    					<form:input type="text" path="amount" placeholder="Expense Amount" />
    					</div>
    					<div class="input-box">
                        <span class="details">Description</span>
    					<form:input type="text" path="note" placeholder="Note" />
    					</div>
    					<div class="input-box">
                        <span class="details">Purchase Date</span>
    					<form:input type="date" path="createdAt" placeholder="Purchase Date" />
    					</div>
    					<button type="submit">Add Expense</button>
    					<button><a href="${contextRoot}/expense/${expense.id}/delete">Delete Expense</a></button>
    				 </div>
				</form:form>
    		</div>
    		</div>
    	</div>   
    
 </div>
	
</body>
</html>