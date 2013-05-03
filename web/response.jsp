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
        <jsp:useBean id="searchbean" scope="session" class="ycba.sorter.SearchQueryHandler" />
        <jsp:setProperty name="searchbean" property="search_by" />
        <jsp:setProperty name="searchbean" property="search_id" />
        <h1>Search by <jsp:getProperty name="searchbean" property="search_by" /></h1>
        <h1>Search id = <jsp:getProperty name="searchbean" property="search_id" /></h1>
    </body>
</html>
