package com.InventorySim.API.inventory;

import java.util.Optional;
import com.InventorySim.API.inventory.InventoryResult;

public interface IProductRepository {
    public InventoryResult addProduct(String productID, String productName);
    public InventoryResult removeProduct(String productID);
    public String getProduct(String productID);
    public boolean isProduct(String productID);
}
