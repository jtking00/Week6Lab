<%-- 
    Document   : shoppingList
    Created on : 12-Feb-2023, 4:01:02 PM
    Author     : 882199
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <form method="post" action="ShoppingList">
            <input type="hidden" name="action" value="Logout">
            <a href="ShoppingList">Log Out</a>
            <br>
        </form>
        <h2>List</h2>
        <form method="post" action="ShoppingList">
            Add Item: <input type="text" name="newItem">
            <input type="submit" name="action" value="Add">
        </form>
        <form method="post" action="ShoppingList">
            <ul>
                <c:forEach var="item" items="${itemArray}" varStatus="listIndex">
                    <li><input type="radio" name="listItem" value="${listIndex.index}">${item}</li>
                </c:forEach>
            </ul>
                <c:if test="${itemArray.size() > 0}">
                <input type="submit" name="action" value="Delete">
            </c:if>
        </form>
    </body>
</html>
