<%-- 
    Document   : register
    Created on : 12-Feb-2023, 4:00:46 PM
    Author     : 882199
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form method="post" action="ShoppingList">
            Username: <input type="text" name="username">
            <input type="submit" name="action" value="register">
        </form>
        ${infoMsg}
    </body>
</html>
