package com.habuma.spitter.mvc;

import org.springframework.ui.ModelMap;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.context.request.WebRequestInterceptor;

import com.habuma.spitter.domain.Spittle;

/**
 * @author daisong
 * @Date 2015年12月26日
 * @Time 下午12:21:44
 * @description 拦截器，嵌入Spittle对象
 */
public class SpittleBackingBeanInterceptor implements WebRequestInterceptor {

	public void afterCompletion(WebRequest webRequest, Exception arg1) throws Exception {
	}

	public void postHandle(WebRequest webRequest, ModelMap model) throws Exception {
		// TODO: Maybe should only do this if the user is logged in
		if (model != null) {
			model.addAttribute(new Spittle());
		}
	}

	public void preHandle(WebRequest webRequest) throws Exception {
	}

}
