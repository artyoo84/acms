package kr.co.doollee.acms.sample.board.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.doollee.common.command.CommandMap;

/**
 * 
 * @author doollee
 * @since 2016. 11. 14.
 * @version 1.0
 */
@Controller
public class BoardSampleController {
	
	Logger logger = LoggerFactory.getLogger(BoardSampleController.class);
	
	@RequestMapping("/sample/board/datatable")
	public String datatable(CommandMap map){
		return "/sample/board/datatable";
	}
	
	
	
	@RequestMapping("/sample/board/datatable_ajax")
	public @ResponseBody Map<String,Object> datatable_ajax(CommandMap<String,String> map){
		logger.debug("map : {}" , map.getMap());
		
		// start data 건수 파싱 파라미터 
		// length 조회당 페이지 건수 		
		Map<String,Object> returnJsonData = new HashMap<String,Object>();
		int draw = map.get("draw") == null ?  1 : Integer.parseInt(map.get("draw"));
		returnJsonData.put("draw", draw); // 전체 페이징 카운트
		returnJsonData.put("recordsTotal", 57); // 전체 record count
		returnJsonData.put("recordsFiltered", 57); // 전체 recordsFiltered count
		returnJsonData.put("data", new TestData(map.get("length")).getData()); // 전체 recordsFiltered count
		
		return returnJsonData;
	}
	
} // end class BoardSampleController
