<%-- 
    Document   : search
    Created on : May 8, 2013, 3:44:24 PM
    Author     : acdr4
--%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<%
    JSONObject json = new JSONObject();
    json.put("title", "TITLE_TEST");
    json.put("link", "LINK_TEST");
    System.out.print(json);
    System.out.flush();
%>