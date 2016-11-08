package kr.co.doollee.acms.main.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = {"/" , "/main.dl"} )
	public String index(Model model,HttpSession session, @RequestParam Map<String,Object> map){
		
		logger.debug("view : {}" , "index");
		
		return "index";
	}

}
