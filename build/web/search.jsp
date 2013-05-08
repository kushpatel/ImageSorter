<%-- 
    Document   : search
    Created on : May 8, 2013, 3:44:24 PM
    Author     : acdr4
--%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%
   /* JSONObject json1 = new JSONObject();
    json1.put("title", "TITLE_TEST");
    json1.put("link", "LINK_TEST");
    out.print(json1);
    out.flush();
    */

    String[] url = new String[4];
    url[0] = "http://deliver.odai.yale.edu/content/id/51bdfd56-0077-463d-b2ab-fd175bbac5b0/format/1";
    url[1] = "http://deliver.odai.yale.edu/content/id/f415d546-7e60-4d04-ac33-8146e36bccd1/format/1";
    url[2] = "http://deliver.odai.yale.edu/content/id/5845bd26-b5e9-4757-9e5c-a7391e4aa178/format/1";
    url[3] = "http://deliver.odai.yale.edu/content/id/4ae0ebe1-d9a0-45ac-aa66-b695360855e4/format/1";
    String[] caption = new String[4];
    caption[0] = "before treatment, IR Peca 904, recto, unframed";
    caption[1] = "before treatment, recto, unframed, UV Fluorescence";
    caption[2] = "before treatment, raking light, recto, unframed";
    caption[3] = "after treatment, cropped to image, recto, unframed";
    JSONArray data = new JSONArray();
    for(int i = 0; i < 4; i++) {
        JSONObject json = new JSONObject();
        json.put("id",new Integer(i));
        json.put("order",new Integer(i));
        json.put("isPrimary",new Boolean(false));
        json.put("cdsLevel",new Integer(11));
        json.put("thumb",url[i]);
        json.put("caption",caption[i]);
        data.add(json);
    }
    
    JSONObject finalJson = new JSONObject();
    finalJson.put("primaryIdx",new Integer(0));
    finalJson.put("recordsArr",data);
    
    out.print(finalJson);
    out.flush();
%>