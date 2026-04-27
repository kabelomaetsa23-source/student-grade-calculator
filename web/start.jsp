<%-- 
    Document   : start
    Created on : 27 Apr 2026, 4:16:40 PM
    Author     : MAETSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Page</title>
    </head>
    <body>
        <h3>Hello student..!</h3>
        <p>
            Fill the details below to calculate your grades.
        </p>
        <form action="GenerateGradeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student No:</td>
                    <td><input type="text" name="studNo"/></td>
                </tr>
                <tr>
                    <td>Test 1:</td>
                    <td><input type="text" name="test1"/></td>
                </tr>
                <tr>
                    <td>Test 2:</td>
                    <td><input type="text" name="test2"/></td>
                </tr>
                <tr>
                    <td>Test 3:</td>
                    <td><input type="text" name="test3"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GENERATE"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
