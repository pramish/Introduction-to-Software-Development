<%-- 
    Document   : updateUser
    Created on : 08/05/2019, 5:59:14 PM
    Author     : pramishluitel
--%>

<%@page import="MODEL.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Header.html" %>
    </head>
    <%
        String failure = (String) request.getParameter("failure");
        String success = (String) request.getParameter("success");
        String success1 = (String) request.getParameter("success1");
    %>
    <%if (success != null) { %>
    <div class="alert alert-success">
        <%out.print(success);%> 
    </div>
    <%  }
    %>

    <%if (failure != null) { %>
    <div class="alert alert-success">
        <%out.print(failure);%> 
    </div>
    <%  }
    %>
    <%if (success1 != null) { %>
    <div class="alert alert-success">
        <%out.print(success1);%> 
    </div>
    <%  }
    %>
    <body>
        <br><br>
        <div class="container-fluid">
            <div class="col-sm-12 text-center">
                <button class="btn btn-primary btn-lg active" name="home" onclick="location.href = 'index.jsp';">Home</button>
            </div>
        </div>
        <br>
        <form class="form-inline" action="updateUserController.jsp" method="post">
            <input class="form-control mr-sm-2" type="search" name="ID" placeholder="enter user ID" cc aria-label="Search">
            <button class="btn btn-primary btn-lg active">Search</button>
            <br><br>
        </form>
        <pre>
        
        <form action="updateUserController.jsp" method="post">
            <table>
                    <%
                        User user = (User) session.getAttribute("user");

                        if (user != null) {%>
                <tr><td>ID:</td><td><%=user.getID()%></td></tr>
                <tr><td>Email:</td><td><input size="23" type="text" name="email" value=<%=user.getEmail()%> ></td></tr>
                <tr><td>Name:</td><td><input size="23" type="text" name="name" value=<%=user.getName()%>></td></tr><br>
                <tr><td>Password:</td><td><input size="23" type="password" name="password" value=<%= user.getPassword()%> ></td></tr>
                <tr><td>Phone Number:</td><td><input size="23" type="text" name="phoneNumber" value=<%=user.getPhoneNumber()%> ></td></tr>
                <tr><td>Deactivate User:</td><td>
<input type="radio" name="status" value="deactive"> Deactive
                    </td></tr>
                    <td>
                        <input class="button" type="submit" name="save" value="Save"> 
                        &nbsp; 
                    </td>
                    <%} else {%>
                <tr><td>ID:</td><td></td></tr>
                <tr><td>Email:</td><td><input size="23" type="text" name="email" value=""></td></tr>
                <tr><td>Name:</td><td><input size="23" type="text" name="name" value=""></td></tr><br>
                <tr><td>Password:</td><td><input size="23" type="password" name="password"value=""></td></tr>
                <tr><td>Phone Number:</td><td><input size="23" type="text" name="phoneNumber"value=""></td></tr>
                            <%}%>
                <tr><td></td>
                    
                </tr>
            </table>
        </form>
        </pre>
    </body>
</html>
