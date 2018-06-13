package com.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goods.po.Goodstype;
import com.goods.service.GoodstypeService;

@Controller
@RequestMapping(value="/goodstype")
public class GoodstypeController {
	@Autowired
    private GoodstypeService goodstypeService;
    
	@RequestMapping(value="/add",method={RequestMethod.GET,RequestMethod.POST})
	public String add(Model model,Goodstype tbGoodstype){
		Goodstype temp = goodstypeService.findByName(tbGoodstype.getName());
		
		if(temp!=null){
			model.addAttribute("message", "该商品类型已经添加");
			return "msg";
		}
		
		goodstypeService.add(tbGoodstype);
		model.addAttribute("message", "添加成功");
		return "msg";
	}
	
	@RequestMapping(value="/delete",method={RequestMethod.GET,RequestMethod.POST})
	public String delete(Model model,Goodstype tbGoodstype){
		goodstypeService.delete(tbGoodstype.getId());
		
		return "redirect:/goodstype/findAll";
	}
	
	@RequestMapping(value="/findAll",method={RequestMethod.GET,RequestMethod.POST})
	public String findAll(Model model){
		List<Goodstype> list = goodstypeService.findAll();
		model.addAttribute("list", list);
		return "type/list";
	}
	
	@RequestMapping(value="/addV",method={RequestMethod.GET,RequestMethod.POST})
	public String addV(Model model){
		List<Goodstype> list = goodstypeService.findAll();
		model.addAttribute("list", list);
		return "goods/add";
	}
	
	
	@RequestMapping(value="/update",method={RequestMethod.GET,RequestMethod.POST})
	public String update(Model model,Goodstype tbGoodstype){
		goodstypeService.update(tbGoodstype);
		model.addAttribute("message", "修改成功");
		return "msg";
	}
	
	@RequestMapping(value="/findById",method={RequestMethod.GET,RequestMethod.POST})
	public String findById(Model model,int id){
		Goodstype tbGoodstype = goodstypeService.findById(id);
		model.addAttribute("goodstype", tbGoodstype);
		return "type/update";
	}
}
