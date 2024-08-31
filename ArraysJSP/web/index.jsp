<%-- 
    Document   : index
    Created on : Aug 28, 2024, 6:44:15 AM
    Author     : middl
--%>

<%-- James Brown / Module 2 Assignment / 1-10-2023 --%>

<%--The following code is a java server page containing
    a minimum 3 or more scriplet sections--%>

<%--directives to import java packages--%>
<%@page import = "java.time.LocalDate" %>
<%@page import = "java.util.Arrays" %>

<%--page directive for encoding--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--provide http reader for information in content--%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Arrays JSP</title>
    </head>
    <body class="bg-dark text-white">
        <h1 class="text-bg-primary fw-bold">Welcome to the Java Server Page Club</h1>
        <br>
        
        <%--scriplet of java code declaring and initializing array--%>
        <% double[] prices = new double[4];
           prices[0] = 14.95;
           prices[1] = 12.95;
           prices[2] = 11.95;
           prices[3] = 9.95;
        %>
        
        <%--scriplet used to output current local date--%>
        <div class="container text-end text-success">
            Current Date:<br>
            <%= LocalDate.now()%>
        </div>
        <br>
        <div class="container text-center">
            <p>Let's manipulate an array of prices!<br>
                <%--scriplet invoking toString method of Array to display prices--%>
                <b class="text-success">Prices: <%= Arrays.toString(prices)%></b>
                <br><br>
            Now, let's figure out the average of the prices</p>
         
        
            <%--scriplet w/java for loop to find average of prices--%>
            <%
                double sum = 0.0;
                for(int i = 0; i < prices.length; i++){
                    sum += prices[i];
                }
                double average = sum / prices.length;
            %>
            <b class="text-success">The average price is: <%= average%></b>
            <br><br>
        
            <p>Now, lets sort some numbers and put them in order:</p>
        
            <%--scriplet declaring and initializing an array--%>
            <%!int[] numbers = {2, 6, 4, 1, 8, 5, 9, 3, 7, 0};%>
        
            <%--scriplet displaying original array to output--%>
            <b class="text-warning">Original order: <%= Arrays.toString(numbers)%></b><br>
        
            <%--java code invoking the sort method of Array--%>
            <%Arrays.sort(numbers);%>
        
            <%--scriplet invoking toString method to display the sorted array--%>
            <b class="text-success">Sorted order: <%= Arrays.toString(numbers)%></b><br><br>
        
            <a href="showAssgn2Code.htm" target="blank">Click Here To View Code</a>
        </div>
    </body>
</html>
