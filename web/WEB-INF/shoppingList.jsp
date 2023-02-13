<%-- 
    Document   : shoppingList
    Created on : 12-Feb-2023, 4:01:02 PM
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
        <br>
        <h3>Hello ${username}</h3>
        <br>
        <a href="ShoppingList" name="action" value="logout">Log Out</a>
        <br>
        <h2>List</h2>
        <form>
            Add Item: <input type="text" name=""><br>
        <input type="submit" name="action" value="add">
        </form>
    </body>
</html>
