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
        <script>

            var recordsObj;
    
            $(function() {
                $( "#sortable" ).sortable();
                $( "#sortable" ).disableSelection();
            });
    
            function showData(caption) {
                alert(caption);
            }

            function setPrimary(index)
            {
                recordsObj.recordsArr[recordsObj.primaryIdx].isPrimary = false;
                recordsObj.recordsArr[index].isPrimary = true;
                recordsObj.primaryIdx = index;
                //is_primary[primary_idx] = false;
                //is_primary[index] = true;
                alert(index);
            }

            function setCDSLevel(index)
            {
                recordsObj.recordsArr[index].cdsLevel = $('#cds_level'+index+'').val();
                displayRecordsObj("cdsLevel");
                //cds_level[index] = $('#cds_level'+index+'').val();
                //alert(cds_level);
            }
            
            function displayRecordsObj(param)
            {
                var temp = [];
                if(param == "id") {
                    for(i = 0; i < 4; i++){
                        temp.push(recordsObj.recordsArr[i].id);
                    }
                }
                else if(param == "order"){
                    for(i = 0; i < 4; i++){
                        temp.push(recordsObj.recordsArr[i].order);
                    }
                }
                else if(param == "isPrimary"){
                    for(i = 0; i < 4; i++){
                        temp.push(recordsObj.recordsArr[i].isPrimary);
                    }
                }
                else if(param == "cdsLevel"){
                    for(i = 0; i < 4; i++){
                        temp.push(recordsObj.recordsArr[i].cdsLevel);
                    }
                }
                alert(temp);
            }
            
            function postJson()
            {
                $.ajax({
                    url:    "response.jsp",
                    type:   "post",
                    data:   "sample data string",//JSON.stringify(recordsObj),
                    success: function(){
                        alert("JSON Posted");
                    }
                });
            }
            
            function getImagesJSON(){
                $.ajax({
                    url : 'search.jsp',
                    //data : { search: 'test' },
                    dataType: 'json',
                    success : function(json) {
                        recordsObj = json;
                        if (recordsObj.recordsArr)
                        {
                            $('#sortable').empty();
                            $('#sortable').append('<hr/>');
                            $.each(recordsObj.recordsArr, function(i) {
                                $('#sortable').append('<li class="ui-state-default">'+
                                    '<div onClick="showData(\''+
                                    recordsObj.recordsArr[i].caption+
                                    '\');"><img alt="'+
                                    recordsObj.recordsArr[i].caption+
                                    '" src="'+recordsObj.recordsArr[i].thumb+
                                    '"></div><div><input id = "'+i+
                                    '" type="radio" name="primary" value="primary"'+
                                    'onClick = setPrimary('+i+')>primary</div>'+
                                    'CDS Level:<select id="cds_level'+i+
                                    '" onchange = setCDSLevel('+i+')>'+
                                    '<option value="11">11</option>'+
                                    '<option value="12">12</option></select></li>');
                            });
                        }
                        else
                            $('#sortable').append("<p>No data in Media Manager for this object!</p>");
                    }
                }); 
            }
            
            /* onload function executed when window is loaded for the first time */
            /*window.onload = function(){
                $.ajax({
                    url : 'search.jsp',
                    //data : { search: 'test' },
                    dataType: 'json',
                    success : function(json) {
                        recordsObj = json;
                        if (recordsObj.recordsArr)
                        {
                            $('#sortable').append('<hr/>');
                            $.each(recordsObj.recordsArr, function(i) {
                                $('#sortable').append('<li class="ui-state-default">'+
                                    '<div onClick="showData(\''+
                                    recordsObj.recordsArr[i].caption+
                                    '\');"><img alt="'+
                                    recordsObj.recordsArr[i].caption+
                                    '" src="'+recordsObj.recordsArr[i].thumb+
                                    '"></div><div><input id = "'+i+
                                    '" type="radio" name="primary" value="primary"'+
                                    'onClick = setPrimary('+i+')>primary</div>'+
                                    'CDS Level:<select id="cds_level'+i+
                                    '" onchange = setCDSLevel('+i+')>'+
                                    '<option value="11">11</option>'+
                                    '<option value="12">12</option></select></li>');
                            });
                        }
                        else
                            $('#sortable').append("<p>No data in Media Manager for this object!</p>");
                    }
                }); 
            }*/
    
        </script>
    </head>
    <body>

        <form id="getData" action="search.jsp" onsubmit="getImagesJSON()">
            Search for an object: 
            <select name="search_by">
                <option value="bibid">Orbis Bib ID</option>
                <option value="objectid">TMS Object ID</option>
            </select>
            # <input type="text" name="search_id"/>            
           <input type="button" value="Search" onclick="getImagesJSON()"></input>
           <!-- <input type="submit" value="Search"></input> -->
        </form>

        <form id="saveData" action="#">

            <ul id="sortable">
                <script>
                   // http://www.kirupa.com/forum/showthread.php?365795-ONCLICK-event-for-a-submit-button
                    //getImagesJSON();
                </script>
            </ul>

            <div style="clear: both; padding-top:20px;">
                <hr/>
                <input type="button" value="save" onClick="postJson()"></input>
            </div>
        </form>        
    </body>
</html>