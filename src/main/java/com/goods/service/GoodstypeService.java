package com.goods.service;

import java.util.List;

import com.goods.po.Goodstype;

public interface GoodstypeService {
	 public void add(Goodstype tbGoodstype);
	    
	    public void delete(int id);
	    
	    public void update(Goodstype record);
	    
	    public List<Goodstype> findAll();
	    
	    public Goodstype findByName(String name);
	    
	    public Goodstype findById(int id);
}
