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
            background: url('https://img.freepik.com/premium-photo/world-diabetes-day-concept-with-diabetes-checker_752325-144815.jpg?w=1060');
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
            background-color: #4d4dff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .nav-container .btn:hover {
            background-color: #0000b3;
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
            color: #ffb31a;
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
            background-color: #0000e6;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #0000;
        }

        .status-message {
            font-size: 1rem;
            color: #ffb31a;
            margin-bottom: 10px;
        }

        a {
            display: block;
            color: #FFBF00;
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
        <a href="index.jsp"><button class="btn">Home</button></a>
        <a href='addmed.jsp'><button class="btn">Add Medicine</button></a>
        <a href='viewmed'><button class="btn">View All Medicines</button></a>
        <a href='searchmed.jsp'><button class="btn">Search Medicine</button></a>
    </div>

    <div class="container">
        <% if (status != null) { %>
            <div class="status-message"><%= status %></div>
        <% } %>

        <form action="searchmedicine">
            <input type="text" name="name" placeholder="Medicine name">
            <input type="submit" value="Search Medicine">
        </form>
    </div>

</body>
</html>
