/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ycba.sorter;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class SearchQueryHandler {

    //stores the search type parameter specified i.e. bibid OR objectid
    private String search_by;
    //stores the search ID input by the user
    private String search_id;

    public SearchQueryHandler() {
        search_by = null;
        search_id = null;
    }

    /**
     * @param by the search_by to set
     */
    public void setsearch_by(String by) {
        this.search_by = by;
    }

    /**
     * @return the search_by
     */
    public String getsearch_by() {
        return search_by;
    }

    /**
     * @return the search_id
     */
    public String getsearch_id() {
        return search_id;
    }

    /**
     * @param id the search_id to set
     */
    public void setsearch_id(String id) {
        this.search_id = id;
    }

    /**
     * @return the JSON string containing data for the search parameters
     * specified
     */
    public String getJSON() {
        //currently returns a stub JSON...will be modified later to return correct data by querrying DB with search_id
        if(search_id == null) {
            return "";
        }
        //remove later!! Only for testing purposes
        if(search_id.equals("Patel")) {
            return "";
        }
        
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
        for (int i = 0; i < 4; i++) {
            JSONObject json = new JSONObject();
            json.put("id", new Integer(i));
            json.put("order", new Integer(i));
            json.put("isPrimary", new Integer(0));
            json.put("cdsLevel", new Integer(11));
            json.put("thumb", url[i]);
            json.put("caption", caption[i]);
            data.add(json);
        }

        JSONObject finalJson = new JSONObject();
        finalJson.put("primaryIdx", new Integer(0));
        finalJson.put("recordsArr", data);
        
        return finalJson.toString();
    }
}
