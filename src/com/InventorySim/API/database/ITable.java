package com.InventorySim.API.database;

import java.util.List;
import java.util.function.Predicate;

public interface ITable<ID, T> {
    T find(ID id);
    List<T> findAll();
    List<T> filter(Predicate<T> predicate);

    void insert(ID id, T value);
    void remove(ID id);

    boolean contains(ID id);
}
