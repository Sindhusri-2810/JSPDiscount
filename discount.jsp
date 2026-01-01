<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>JSP Discount Calculator</title>
</head>
<body>

<h2>Discount Calculator</h2>

<form method="post">
    Enter Price:
    <input type="text" name="price"><br><br>

    Enter Discount (%):
    <input type="text" name="discount"><br><br>

    <input type="submit" value="Calculate">
</form>

<br>

<%
    String p = request.getParameter("price");
    String d = request.getParameter("discount");

    if (p != null && d != null && !p.equals("") && !d.equals("")) {
        try {
            double price = Double.parseDouble(p);
            double discount = Double.parseDouble(d);

            double finalPrice = price - (price * discount / 100);
%>
            <h3>Final Payable Amount = <%= finalPrice %></h3>
<%
        } catch (Exception e) {
%>
            <h3>Please enter valid numbers only</h3>
<%
        }
    }
%>

</body>
</html>