package kr.co.doollee.acms.main.controller;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.doollee.common.command.CommandMap;

@Controller
public class MainController {
	
	Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = {"/" , "/main.dl"} )
	public ModelAndView index(HttpSession session, @RequestParam Map<String,Object> map , CommandMap commandMap){
		
	    if(commandMap.isEmpty() == false){
	        Iterator<Entry<String,Object>> iterator = commandMap.getMap().entrySet().iterator();
	        Entry<String,Object> entry = null;
	        while(iterator.hasNext()){
	            entry = iterator.next();
	            logger.debug("command map key : "+entry.getKey()+", value : "+entry.getValue());
	        }
	    }
	    
	    if(map.isEmpty() == false){
	    	Iterator<Entry<String,Object>> iterator = map.entrySet().iterator();
	    	Entry<String,Object> entry = null;
	    	while(iterator.hasNext()){
	    		entry = iterator.next();
	    		logger.debug("map key : "+entry.getKey()+", value : "+entry.getValue());
	    	}
	    }
	    
		logger.debug("view : {}" , "index");
		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		model.addObject("test" , map.get("test"));
		return model;
	} // end method index()
	
	@RequestMapping(value = {"/test/menu3.dl"})
	public String menu2(Model model,HttpSession session, CommandMap commandMap){
		
		return "/test/menu3";
		
	} // end method menu2()

}
