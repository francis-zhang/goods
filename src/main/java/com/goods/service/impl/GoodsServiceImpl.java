package com.goods.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goods.mapper.GoodsMapper;
import com.goods.mapper.GoodstypeMapper;
import com.goods.po.Goods;
import com.goods.po.GoodsExample;
import com.goods.po.Goodstype;
import com.goods.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
    private GoodsMapper tbGoodsMapper;
	
	@Autowired
    private GoodstypeMapper tbGoodstypeMapper;
	
	@Override
	public void add(Goods tbGoods) {
		tbGoodsMapper.insert(tbGoods);
	}

	@Override
	public void delete(int id) {
		tbGoodsMapper.deleteByPrimaryKey(id);

	}

	@Override
	public void update(Goods record) {
		tbGoodsMapper.updateByPrimaryKeySelective(record);
		

	}

	@Override
	public List<Goods> findAll() {
		List<Goods> list = tbGoodsMapper.selectByExample(null);
		if(list!=null&&list.size()>0){
			for(Goods item:list){
				Goodstype tbGoodstype = tbGoodstypeMapper.selectByPrimaryKey(item.getTypeid());
				item.setTypename(tbGoodstype.getName());
			}
		}
		
		return list;
	}

	@Override
	public Goods findByName(String name) {
		GoodsExample example = new GoodsExample();
		example.createCriteria().andNameEqualTo(name);
		
		List<Goods> list = tbGoodsMapper.selectByExample(example);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public Goods findById(int id) {
		Goods tbGoods = tbGoodsMapper.selectByPrimaryKey(id);
		return tbGoods;
	}

}
