<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns:th="http://www.thymleaf.org">
<c:set var="contextRoot" value="${pageContex.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>List of Expenses</title>
		<link href="/CSS/tablestylehome.css"  rel="stylesheet">
		<script src="/JS/functionsJs.js"></script>
 </head>
 <div class="banner">
        <div class="navbar">
            <img src="/IMAGES/logo.png" class="logo">
            <ul>
                <li><a href="${contextRoot}/">Home</a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="#">Logout</a></li>
                
            </ul>
        </div>
    
        
    <div class="table-container">
        <h2 class="table-heading">Expenses</h2>
        <input type="text" id="myInput" placeholder="names......" onkeyup="searchFun()">
        <button type="submit"><a href="${contextRoot}/expense">Add New Expense</a></button>
        <table id="myTable">
            <thead>
            <tr>
                <th>Expense Name</th>
                <th>Amount</th>
                <th>Place</th>
                <th>Date Of Purchase</th>
                <th>Modify</th>
            </tr>
            </thead>
            <tbody>
				<c:forEach var="expense" items="${expenses}">
				<tr>
    			<td>${expense.expensename}</td>
    			<td>&#8377;${expense.amount}</td>
    			<td>${expense.note}</td>
    			<td>${expense.createdAt}</td>
    			<td><a href="${contextRoot}/expense/${expense.id}">Update</a></td>
    			</tr>
    			</c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>