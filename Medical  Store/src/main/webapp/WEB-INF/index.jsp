<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        background: url('https://img.freepik.com/premium-photo/collection-pills-capsules-are-table_1234220-26484.jpg?w=1060');
        background-size: cover;
        background-repeat: no-repeat;
        font-family: 'Arial', sans-serif;
        display: flex;
        justify-content: center;
        height: 100vh;
        overflow: hidden;
    }

    .container {
        text-align: center;
        max-width: 1000px;
        width: 90%;
    }

    .container h1 {
        margin-top: 20%;
        color: #9900cc;
        font-size: 2.5rem;
        margin-bottom: 40px;
    }

    .menu {
        margin-top: 20px;
        flex-direction: column;
        align-items: center;
    }

    .menu a {
        text-decoration: none;
        font-size: 1.5rem;
        color: #fff;
        background-color: #ff751a;
        padding: 15px;
        margin: 10px 10px;
        border-radius: 12px;
        width: 100%;
        max-width: 300px;
        text-align: center;
        transition: all 0.3s ease;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .menu a:hover {
        background-color: #ffb31a;
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
        transform: translateY(-3px);
    }

</style>

</head>

<body>
    <div class="container">
        <h1>Welcome to Batch-1 Medical Store</h1>
        <div class="menu" id="menu">
            <a href="addmed.jsp">Add Medicine</a>
            <a href="viewmed">View All Medicine</a>
            <a href="searchmed.jsp">Search Medicine</a>
        </div>
    </div>

</body>
</html>
