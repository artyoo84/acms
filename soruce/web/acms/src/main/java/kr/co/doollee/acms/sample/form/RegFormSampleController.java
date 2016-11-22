package kr.co.doollee.acms.sample.form;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doollee.common.command.CommandMap;

@Controller
public class RegFormSampleController {
	
	private Logger logger = LoggerFactory.getLogger(RegFormSampleController.class);
	
	@RequestMapping("/sample/regForm/regForm")
	public String regFormSample(CommandMap<String, String> map){
		
		return "/sample/regForm/regForm";
	}

}
