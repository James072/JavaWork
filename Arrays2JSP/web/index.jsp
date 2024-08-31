<%-- 
    Document   : index
    Created on : Aug 29, 2024, 6:50:44 AM
    Author     : middl
--%>

<%--page directive for encoding--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--using page directives to import packages--%>
<%@page import = "java.util.Arrays" %>
<%@page import = "java.io.*" %>

<%--declaring html version--%>
<!DOCTYPE html>
<html>
    <head>
        
        <%--provide http reader for information in content--%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <%--page title; appears in browser tab--%>
        <title>Assignment Three</title>
    </head>
    <body>
        
        <%--title and sentence output to console--%>
        <h1 class="text-bg-dark">Arrays In Java - Numbers</h1>
        <p class="text-primary fw-bold">The following array will be sorted into odd and even categories.</p>
       
        <p><b class="text-warning">Random array of numbers:</b> <b class="text-success">[39, 62, 4, 27, 11, 56, 48, 73, 15, 34]</b></p>
        
        <%--declaring array variable and initializing array--%>
        <%!int[] numbers = {39, 62, 4, 27, 11, 56, 48, 73, 15, 34};%>
        
        <b class="text-warning">Even numbers in the array:</b>
        
        <%--scriplet w/for loop to process even array elements--%>
        <%for ( int i = 0; i < numbers.length; i++ ){%>
        
            <%--nested if statement checks for even elements--%>
            <%if (numbers[i]%2==0){%>
            
                <%--output even array elements to html--%>
                <b class="text-success"><%= numbers[i]%></b>
              <%}%>
          <%}%>
        <br>
        <br>
        <b class="text-warning">Odd numbers in the array:</b>
        
        <%--scriplet w/for loop to process odd array elements--%>
        <%for ( int i = 0; i < numbers.length; i++){%>
        
            <%--nested if statement checks for odd elements--%>
            <%if (numbers[i]%2!=0){%>
            
                <%--output odd array elements to html--%>
                <b class="text-success"><%= numbers[i]%></b>
              <%}%>
          <%}%>
          <br>
        <br>
        
        <div class="container w-25">
            <div class="row justify-content-end">
                <div class="col">
                    <a href="showAssgn3Code.htm" target="blank" class="text-center fw-bold">Click here to view the code</a>
                </div>
            </div>
        </div>
        
        <%--import second jsp file--%>
        <jsp:include page="BrownJSP_32.jsp" />
    </body>
</html>
