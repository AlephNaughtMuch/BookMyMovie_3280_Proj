<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Main Menu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>"
          rel="stylesheet"/>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:800&display=swap"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/receipt.css"/>" rel="stylesheet"/>
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" />"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js" />"></script>
    <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" />"></script>

</head>

<body>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div id="receipt">
    <h2 id="orderID">Order</h2>
    <p id="movie"></p>
    <p id="theatre"></p>
    <p id="date"></p>
    <p id="time"></p>
    <%--    <p id="seats"></p>--%>
    <p>It Is Free!!!</p>


    <br>
    <p id="thank you">Thank you for placing an order with BookMyEntertainment </p>

</div>

<div style="text-align:center; padding:15px;">
    <a href="welcome">Go Home</a>​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
</div>


</body>

<script>
    document.getElementById("movie").innerHTML = "Movie: " + sessionStorage.getItem("Movie");
    document.getElementById("theatre").innerHTML = "Theatre: " + sessionStorage.getItem("Theatre");
    document.getElementById("date").innerHTML = "Date: " + sessionStorage.getItem("Date");
    document.getElementById("time").innerHTML = "Time: " + sessionStorage.getItem("Time");
    // document.getElementById("seats").innerHTML = "Seats: " + sessionStorage.getItem("seat Num");
    // document.getElementById("totalPrice").innerHTML = "Pice: $" + sessionStorage.getItem("price");


</script>

</html>