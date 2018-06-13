package com.goods.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.mapper.GoodstypeMapper;
import com.goods.po.Goodstype;
import com.goods.po.GoodstypeExample;
import com.goods.service.GoodstypeService;

@Service
public class GoodstypeServiceImpl implements GoodstypeService {
	@Autowired
    private GoodstypeMapper tbGoodstypeMapper;
    
    
	@Override
	public void add(Goodstype tbGoodstype) {
		tbGoodstypeMapper.insert(tbGoodstype);

	}

	@Override
	public void delete(int id) {
		tbGoodstypeMapper.deleteByPrimaryKey(id);

	}

	@Override
	public void update(Goodstype record) {
		tbGoodstypeMapper.updateByPrimaryKeySelective(record);

	}

	@Override
	public List<Goodstype> findAll() {
		// TODO Auto-generated method stub
		return tbGoodstypeMapper.selectByExample(null);
	}

	@Override
	public Goodstype findByName(String name) {
		GoodstypeExample example = new GoodstypeExample();
		example.createCriteria().andNameEqualTo(name);
		List<Goodstype> list = tbGoodstypeMapper.selectByExample(example);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public Goodstype findById(int id) {
		
		return tbGoodstypeMapper.selectByPrimaryKey(id);
	}

}
