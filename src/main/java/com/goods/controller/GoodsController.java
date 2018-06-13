package com.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goods.po.Goods;
import com.goods.po.Goodstype;
import com.goods.service.GoodsService;
import com.goods.service.GoodstypeService;

@Controller
@RequestMapping(value="/goods")
public class GoodsController {
	@Autowired
    private GoodsService goodsService;
	
	@Autowired
    private GoodstypeService goodstypeService;
	
	@RequestMapping(value="/add",method={RequestMethod.GET,RequestMethod.POST})
	public String add(Model model,Goods tbGoods){
		Goods temp = goodsService.findByName(tbGoods.getName());
		
		if(temp!=null){
			model.addAttribute("message", "该商品已经添加");
			return "msg";
		}
		
		goodsService.add(tbGoods);
		model.addAttribute("message", "添加成功");
		return "msg";
	}
	
	@RequestMapping(value="/delete",method={RequestMethod.GET,RequestMethod.POST})
	public String delete(Model model,Goods tbGoods){
		goodsService.delete(tbGoods.getId());
		
		return "redirect:/goods/findAll";
	}
	
	@RequestMapping(value="/findAll",method={RequestMethod.GET,RequestMethod.POST})
	public String findAll(Model model){
		List<Goods> list = goodsService.findAll();
		model.addAttribute("list", list);
		return "goods/list";
	}
	
	@RequestMapping(value="/update",method={RequestMethod.GET,RequestMethod.POST})
	public String update(Model model,Goods tbGoods){
		goodsService.update(tbGoods);
		model.addAttribute("message", "修改成功");
		return "msg";
	}
	
	@RequestMapping(value="/findById",method={RequestMethod.GET,RequestMethod.POST})
	public String findById(Model model,int id){
		Goods goods = goodsService.findById(id);
		model.addAttribute("goods", goods);
		List<Goodstype> list = goodstypeService.findAll();
		model.addAttribute("list", list);
		return "goods/update";
	}
}
