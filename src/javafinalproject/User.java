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
public class User {
    private int id;
    private String name;
    private String category;
    private int price;
    
    
    public User(int id,String name, String category,int price){
    this.id = id;
    this.name = name;
    this.category = category;
    this.price = price;
    
    
    
    
}

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public int getPrice() {
        return price;
    }
    
 
}
