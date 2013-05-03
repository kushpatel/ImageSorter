<%-- 
    Document   : response
    Created on : May 3, 2013, 2:00:52 PM
    Author     : acdr4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Sortable - Display as grid</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="ycba.sorter.RecordObjHandler" />
        <jsp:setProperty name="mybean" property="search_id" />
        <h1>Hello, <jsp:getProperty name="mybean" property="search_id" />!</h1>
    </body>
</html>
