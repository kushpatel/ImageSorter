/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ycba.sorter;

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
    
}
