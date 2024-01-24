package com.fes.controller;

import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RestController
public class TestController {
	
	@GetMapping("/test")
	public String test() { 
		
		log.info("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥ TEST");
		
		String result = null;
		
		try {	
		
		String url = "http://guide.ff14.co.kr/lodestone/db/item";
		
		Document doc = Jsoup.parse(new URL(url).openStream(),"UTF-8",url);

		result = doc.html();
		
		log.info(result);
		
	}catch (IOException e) {
		e.printStackTrace();
	}
		return result;
	}
}
