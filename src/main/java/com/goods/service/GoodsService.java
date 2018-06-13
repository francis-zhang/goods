package com.goods.service;

import java.util.List;

import com.goods.po.Goods;

public interface GoodsService {
    public void add(Goods tbGoods);
    
    public void delete(int id);
    
    public void update(Goods record);
    
    public List<Goods> findAll();
    
    public Goods findByName(String name);
    
    public Goods findById(int id);
}
