package kr.co.doollee.acms.common.intercept;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterCeptor extends HandlerInterceptorAdapter{

	
	Logger logger = LoggerFactory.getLogger(LoginInterCeptor.class);
	List<String> 비로그인_페이지_리스트 = null;
	public LoginInterCeptor() {
		비로그인_페이지_리스트 = new ArrayList<String>();
	}




	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		logger.debug("interceptor!!");
		return true;
	}

	
	
}
