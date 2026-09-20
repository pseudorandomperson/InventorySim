package com.InventorySim.API.inventory;

import com.InventorySim.API.inventory.InventoryResult;

/*
 * Inventory Service handles stock management,
 * and it is linked with Product Repository to
 * find the product even exist or not.
*/
public interface IInventoryService {
    // addStock: to add stock of specific productID
    // InventoryResult: returns a result
    public InventoryResult addStock(String productID, int quantity);
    
    // removeStock: to remove stock of specific productID
    // InventoryResult: returns a result
    public InventoryResult removeStock(String productID, int quantity);

    // getStock: to get quantity
    // int: returns a result
    public int getStock(String productID);

    // hasStock: checks if quantity is 0 or not
    // boolean: returns a result
    public boolean hasStock(String productID);
}
