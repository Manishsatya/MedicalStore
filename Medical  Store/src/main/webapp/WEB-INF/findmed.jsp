<%@page import="com.bean.Medicine"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% Medicine obj = (Medicine)request.getAttribute("medicine");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://i.pinimg.com/236x/89/70/d0/8970d0b80833a20fc173b2b86fc66c03.jpg">
<title>Medical Store</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://img.freepik.com/premium-photo/blurred-picture-medicine-shelf-drug-store-pharmacy-shop-interiors_1036975-248327.jpg?w=1060');
        background-size: cover;
        color: #333;
    }
    .nav-container {
        margin: 20px;
        display: flex;
        justify-content: center;
        gap: 20px;
    }
    .nav-container a {
        text-decoration: none;
    }
    .nav-container .btn {
        padding: 10px 20px;
        background-color: #007acc;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }
    .nav-container .btn:hover {
        background-color: #1ac6ff;
    }
    table {
        width: 80%;
        border-collapse: separate;
        border-spacing: 0;
        margin-top: 20px;
        background-color: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 15px 20px;
        text-align: left;
    }
    th {
        background-color: #3399ff;
        color: white;
        font-size: 18px;
        text-transform: uppercase;
    }
    tr {
        border-bottom: 1px solid #ddd;
    }
    tr:last-child {
        border-bottom: none;
    }
    tr:nth-child(even) {
        background-color: #33d6ff;
    }
    tr:nth-child(odd) {
        background-color: #99ebff;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    td a {
        color: #0073e6;
        text-decoration: none;
        padding: 6px 12px;
        background-color: #e7f3ff;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }
    td a:hover {
        background-color: #cfe3ff;
    }
    td {
        font-size: 16px;
    }
</style>
</head>
<body>
    <center>
        <div class="nav-container">
        <a href="index.html"><button class="btn">Home</button></a>
            <a href='addmed.jsp'><button class="btn">Add Medicine</button></a>
            <a href='viewmed'><button class="btn">View All Medicines</button></a>
            <a href='searchmed.jsp'><button class="btn">Search Medicine</button></a>
        </div>
        <% if(obj.getId() != 0) {%>
		
        
        <table>
        <tr>
            <th>Medicine Id</th>
            <th>Medicine Name</th>
            <th>Quantity</th>
            <th>Type</th>
            <th>Manufacturer</th>
            <th>Expiry Date</th>
            <th>Price per Unit</th>
        </tr>
            <tr>
                <td><c:out value="${medicine.id}"></c:out></td>
                <td><c:out value="${medicine.name}"></c:out></td>
                <td><c:out value="${medicine.quantity}"></c:out></td>
                <td><c:out value="${medicine.type}"></c:out></td>
                <td><c:out value="${medicine.manufacturer}"></c:out></td>
                <td><c:out value="${medicine.expdate}"></c:out></td>
                <td><c:out value="${medicine.price}"></c:out></td>
            </tr>
        </table>
        <% } else {%>
			<h1>Medicine Not Found</h1>
		<% }%>
    </center>
</body>
</html>
