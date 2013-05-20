<%-- 
    Document   : index
    Created on : May 3, 2013, 1:49:26 PM
    Author     : acdr4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Sortable - Display as grid</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
        <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
        <style>
            #sortable { list-style-type: none; margin: 0; padding: 0; width: 100%; }
            #sortable li { margin: 3px 3px 3px 0; padding: 1px; float: left; width: 128px; height: 128px; font-weight: bold; font-size: 1em; text-align: left; }
            #transbox { background-color:#ffffff; color:#000; width:20px; border:1px solid black; opacity:0.4; filter:alpha(opacity=40); } 
            img {max-width:128px;max-height:128px;}
        </style>
    </head>
    
    <body>

        <form id="getData" action="search.jsp">
            Search for an object: 
            <select name="search_by">
                <option value="bibid">Orbis Bib ID</option>
                <option value="objectid">TMS Object ID</option>
            </select>
            # <input type="text" name="search_id"/>            
            <!-- <input type="button" value="Search" onclick="getImagesJSON()"></input> -->
            <input type="submit" value="Search"></input>
        </form>
    </body>
</html>