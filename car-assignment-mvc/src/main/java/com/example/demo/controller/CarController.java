package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Car;
import com.example.demo.repository.CarRepository;

@Controller
public class CarController {

	@Autowired
	private Car car;
	@Autowired
	private CarRepository repo;
	
	
	@RequestMapping(value="/addcar",method = RequestMethod.GET)
	public String initForm(Model model) {
		model.addAttribute("command", car);
		return "addcar";
	}
	
	@RequestMapping(value="/addcar",method = RequestMethod.POST)
	public String submitForm(@ModelAttribute("command") Car car,Model model) {
		System.out.println(car);
		int rowAdded=repo.addCar(car);
		model.addAttribute("rowAdded", rowAdded);
		return "addcar";
	}
	
	@ModelAttribute("groups")
	public String[] bloodGroups() {
		return new String[] {"sold","unsold","blocked"};
	}
	
	@RequestMapping(value="/cars/all",method = RequestMethod.GET)
	public String findAllCustomers(Model model) {
		List<Car> list=repo.getAllCars();
		model.addAttribute("list", list);
		return "showcars";
	}
	
	@RequestMapping(value="/cars/onsale",method = RequestMethod.GET)
	public String getUnsoldCars(Model model) {
		List<Car> list=repo.getUnsoldCars();
		model.addAttribute("list", list);
		return "showcars";
	}
	
	@ModelAttribute("brands")
	public String[] brand(){
		String[] brands = repo.getModel();
		
		
		return brands;
	}
	@RequestMapping(value="/cars/showByBrand",method=RequestMethod.GET)
	public String initFormModel(Model model1)
	{
	
		model1.addAttribute("command",car);
		return "selectBrand";
	}
	 @RequestMapping(value="/cars/model",method=RequestMethod.POST)	
		public String findCarsByModel(@ModelAttribute("command") @RequestParam("model")String model, Model model1)
		{
			List<Car> list = repo.getCarsByModel(model);
			model1.addAttribute("list",list);
			return "showcars";
		}
}
