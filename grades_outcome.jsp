<%-- 
    Document   : grades_outcome
    Created on : 27 Apr 2026, 4:45:14 PM
    Author     : MAETSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Outcome</h1>
        <%
         Integer average = (Integer) request.getAttribute("average");
         String result = (String) request.getAttribute("result");
         String studNo = (String) request.getAttribute("studNo");
         Integer test1 = (Integer) request.getAttribute("test1");
         Integer test2 = (Integer) request.getAttribute("test2");
         Integer test3 = (Integer) request.getAttribute("test3");
        %>
        <p>
            Below is the outcome of Student - <b><%=studNo%></b>
        </p>
        <table>
            <tr>
                <td>Student No:</td>
                <td><b><%=studNo%></b></td>
            </tr>
            <tr>
                <td>Test 1:</td>
                <td><%=test1%></td>
            </tr>
            <tr>
                <td>Test 2:</td>
                <td><%=test2%></td>
            </tr>
            <tr>
                <td>Test 3:</td>
                <td><%=test3%></td>
            </tr>
            
        </table>
            <p>
                Average is :<b><%=average%></b><br>
                Result :<b><%=result%></b>
            </p>
            <ul>
                <li><a href="start.jsp">Calculate again</a></li>
                <li><a href="index.html">Home page</a></li>
            </ul>
           
    </body>
</html>
