package com.InventorySim.API.inventory;

import java.util.Optional;
import com.InventorySim.API.inventory.InventoryResult;

public interface IStoreRepository {
    public InventoryResult addStore(String storeID, String storeName);
    public InventoryResult removeStore(String storeID);
    public String getStore(String storeID);
    public boolean isStore(String storeID);
}
