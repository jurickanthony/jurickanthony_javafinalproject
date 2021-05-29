/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javafinalproject;

/**
 *
 * @author 2ndyrGroupA
 */
public class Order {
    private int id;
    private String table_name;
    private String menu_name;
    private int quantity;
    private float price;
    private String status;
    private float total;
    
    public Order(int id,String table_name, String menu_name,int quantity,float price,String status,float total){
    this.id = id;
    this.table_name = table_name;
    this.menu_name = menu_name;
    this.quantity = quantity;
    this.price = price;
    this.status = status; 
    this.total = total;
}

    public float getTotal() {
        return total;
    }

    
    
    
    
    

    public int getId() {
        return id;
    }

    public String getTable_name() {
        return table_name;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public int getQuantity() {
        return quantity;
    }

    public float getPrice() {
        return price;
    }

    public String getStatus() {
        return status;
    }
}
