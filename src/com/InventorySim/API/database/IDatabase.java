package com.InventorySim.API.database;

public interface IDatabase {
    <ID, T> ITable<ID, T> createTable(String name);
    <ID, T> ITable<ID, T> getTable(String name);
    boolean hasTable(String name);
    void removeTable(String name);
}
