/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ycba.sorter;

/**
 *
 * @author acdr4
 */
public class RecordObjHandler {
    
    private String search_id;
    public RecordObjHandler() {
        search_id = null;
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
