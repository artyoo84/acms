package kr.co.doollee.acms.sample.form;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doollee.common.command.CommandMap;

/**
 * 
 * @author doollee
 * @since 2016. 11. 15.
 * @version 1.0
 */
@Controller
public class SchlFormSampleController {
	
	private Logger logger = LoggerFactory.getLogger(SchlFormSampleController.class);
	
	@RequestMapping("/sample/schl/schlWriteForm")
	public String schlWriteForm(CommandMap<String, String> map){
		logger.debug("schlWriteForm : {} " , "call");
		return "/sample/schl/schlWriteForm";
	}

} // end class SchlFormSampleController 
