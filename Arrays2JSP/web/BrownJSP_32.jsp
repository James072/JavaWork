<%-- 
    Document   : BrownJSP_32
    Created on : Aug 29, 2024, 6:54:30 AM
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
        <title>Assignment Three(pt 2)</title>
    </head>
    <body>
        
        <%--title and sentences output to console--%>
        <h2 class="text-bg-dark">Arrays In Java - Strings</h2>
        <p><b class="text-primary">Here's an array of five movie titles:</b><br>
            <b class="text-warning fw-bold">{"The Five Heartbeats", "Game of Death", "Iron Armor", "Royal Tenenbaums", "Avengers:Infinity War"}</b>
           <br>
           <br>
           <b class="text-primary">When we process the array, it outputs as a list</b>
        </p>
        <b class="text-success">A Few Favorite Movies:<br>
            ----------------------</b><br>
        <%--declaring array variable and initializing array--%>
        <%!String[] favorites = {"The Five Heartbeats", "Game of Death", "Iron Armor", "Royal Tennenbaums",
            "Avengers:Infinty War"};%>
            
        <%--scriplet w/enhanced foreach loop to process array elements--%>
        <%for (String favorite : favorites) {%>
        
            <%--output array elements to html--%>
            <b class="text-success"><%= favorite + "<br>"%></b>
        <%}%>
        <br>
        <br>
        
        <div class="container w-25">
            <div class="row justify-content-end">
                <div class="col">
                    <a href="showAssgn3Code_2.htm" target="blank" class="text-center fw-bold">Click here to view the code</a>
                </div>
            </div>
        </div>
    </body>
</html>
