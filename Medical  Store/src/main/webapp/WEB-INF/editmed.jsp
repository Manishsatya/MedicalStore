<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String status = (String) request.getAttribute("status"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://i.pinimg.com/236x/89/70/d0/8970d0b80833a20fc173b2b86fc66c03.jpg">
    <title>Medical Store</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: url('https://img.freepik.com/premium-photo/pharmacy-counter-shelf-betablockers-cardiovascular-medicine-guide-doctors-note-focusing-heart_1266280-93963.jpg?w=1060');
            background-size: cover;            
            font-family: 'Arial', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
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
            background-color: #008000;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .nav-container .btn:hover {
            background-color: #00cc00;
        }

        .container {
            width: 100%;
            max-width: 400px;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h1 {
            color: #00b300;
            margin-bottom: 20px;
            font-size: 1.8rem;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #008000;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #006622;
        }

        .status-message {
            font-size: 1rem;
            color: green;
            margin-bottom: 10px;
        }

        a {
            display: block;
            color: #00e600;
            margin-top: 10px;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="nav-container">
        <a href="index.html"><button class="btn">Home</button></a>
        <a href='addmed.jsp'><button class="btn">Add Medicine</button></a>
        <a href='viewmed'><button class="btn">View All Medicines</button></a>
        <a href='searchmed.jsp'><button class="btn">Search Medicine</button></a>
    </div>

    <div class="container">
        <h1>Batch-1 Medical Store</h1>

        <% if (status != null) { %>
            <div class="status-message"><%= status %></div>
        <% } %>

        <form action="editmedicine">
            <input type="text" name="id" placeholder="Medicine Id" value='<%= request.getParameter("id") %>'>
            <input type="text" name="name" placeholder="Medicine Name" value='<%= request.getParameter("name") %>'>
            <input type="text" name="quantity" placeholder="Quantity" value='<%= request.getParameter("quantity") %>'>
            <select name="type" required>
                <option value="" disabled selected>Select Type</option>
                <option value="Tablet" <%= request.getParameter("type").equals("Tablet") ? "selected" : "" %>>Tablet</option>
                <option value="Capsule" <%= request.getParameter("type").equals("Capsule") ? "selected" : "" %>>Capsule</option>
                <option value="Syrup" <%= request.getParameter("type").equals("Syrup") ? "selected" : "" %>>Syrup</option>
                <option value="Injection" <%= request.getParameter("type").equals("Injection") ? "selected" : "" %>>Injection</option>
            </select>
            <input type="text" name="manufacturer" placeholder="Manufacturer" value='<%= request.getParameter("manufacturer") %>'>
            <input type="text" name="expdate" placeholder="Expiry Date (yyyy/mm/dd)" value='<%= request.getParameter("expdate") %>'>
            <input type="text" name="price" placeholder="Price per Unit" value='<%= request.getParameter("price") %>'>
            <input type="submit" value="Update Medicine">
        </form>
    </div>

</body>
</html>
