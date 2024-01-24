package com.fes.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.fes.domain.DbScrapVO;
import com.fes.domain.EqDetailVO;
import com.fes.domain.ItemDetailVO;
import com.fes.domain.MealsDetailVO;
import com.fes.domain.SeqVO;
import com.fes.service.DbScrapService;
import com.fes.util.MatcherUtil;
import com.fes.util.StringUtil;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class DbScrapController {
	
	@Setter(onMethod_ = @Autowired)
	private DbScrapService service;
	
	private final static String ROOT_URL = "http://guide.ff14.co.kr";


	@GetMapping("/scrap")
	public String scrap(DbScrapVO param) {
		
		ExecutorService executorService = Executors.newFixedThreadPool(10);
		// 스레드 관련 리턴 클래스
		
		StringBuilder urlBuilder = new StringBuilder("http://guide.ff14.co.kr/lodestone/db/item?");
										// 공백만 있는 문자열이 들어오면 끝에 붙은 공백을 잘라줌	  
		if(StringUtil.isNotEmpty(param.getCategory2())) { //아이템 대분류가 있는 경우. 카테고리2에 공백을 잘라냄, 빈 문자열인지 확인.공백이 아니면 true반환
		
			urlBuilder.append("category2=")
				.append(param.getCategory2())
				.append("&");
		}
//		if(param.getCategory3() != null && !"".equals(param.getCategory2().trim()))
		if(StringUtil.isNotEmpty(param.getCategory3())) { //아이템 중분류가 있는 경우
			
			urlBuilder.append("category3=")
				.append(param.getCategory3())
				.append("&");
		}
		
		if(StringUtil.isNotEmpty(param.getMin_gear_lv())) {
			urlBuilder.append("min_gear_lv=")
			.append(param.getMin_gear_lv())
			.append("&");
		}
		
		if(StringUtil.isNotEmpty(param.getMax_gear_lv())) {
			urlBuilder.append("max_gear_lv=")
			.append(param.getMax_gear_lv())
			.append("&");
		}
			
		
		
		String category2 = param.getCategory2();
		String category3 = param.getCategory3();
		String category4 = "";	
		
		String url = urlBuilder.toString();
		
//		log.info("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥"+url+"/대분류:"+param.getCategory2()+"/중분류:"+param.getCategory3());
		
		Document doc = null;
		
		try {	
			
			doc = Jsoup.parse(new URL(url).openStream(),"UTF-8",url);
			
		} catch (IOException e) {
			log.error("*****URL 형식이 잘못 되었습니다.");
//			e.printStackTrace();
		}
		
		Elements itemTables = doc.getElementsByClass("base_tb");
		Element itemTable = itemTables.get(0); // 불러온 페이지의 아이템 리스트
		
		// 반복문 돌려야 하는 부분
		// 페이징
		Elements paging = itemTable.getElementsByClass("paging"); //paging이라는 이름의 클래스를 찾음
		Element pages = paging.get(0); // 클래스 안의 모든 요소를 찾음
		Elements page = pages.getElementsByTag("a"); // 그 요소 안에서 a태그를 찾는다
			
		int pageCount;
		
		//마지막 페이지가 몇 페이지인지 찾음
		Elements pagesEnd = pages.getElementsByClass("pg_btn pg_end"); // 맨 뒤로 가는 버튼을 찾음
		
		if(pagesEnd.size() > 0) { // 아이템 수가 많아 맨 뒤로 가기 버튼이 있는 경우
			
			Element pageEnd = pagesEnd.get(0); // pagesEnd(맨 뒤로 가는 버튼)클래스의 요소를 전부 찾음
			Elements pEnd = pageEnd.getElementsByTag("a"); // 그 안의 a태그를 찾음
			
			String pe = pEnd.attr("href"); // href 속성 값을 가져옴
			String pen = pe.substring(pe.length() - 2); // href태그에서- 뒤에서 두글자를 받아옴(마지막 페이지 번호)
			
			pageCount = Integer.parseInt(pen); // string을 int로 변환
			
		}else { // 맨 뒤로 가기 버튼이 없는 경우
			pageCount = page.size();
		}
		
		for(int i = 1; i <= pageCount; i++ ) {
		
		if(i > 1) {
			
			try {
				String pageUrl = url + "page=" + i; // url = category2=n&category3=n&
				doc = Jsoup.parse(new URL(pageUrl).openStream(),"UTF-8",pageUrl);
			} catch (IOException e) {
				log.error("PageURL 형식이 잘못 되었습니다.");
//				e.printStackTrace();
			}
		}
		
		itemTables = doc.getElementsByClass("base_tb t1");
		itemTable = itemTables.get(0); // 불러온 페이지의 아이템 리스트
		
		// 숙제
		Element itemList = itemTable.getElementsByTag("tbody").get(0);
		
		Elements itemLinks = itemList.getElementsByTag("a"); // 아이템 각각의 URL리스트. a태그가 여러개이기 떄문에 Elements 사용. List
		
		int itemCount = itemLinks.size(); // (아이템)list의 갯수는 size, 기본적으로 한 페이지당 50개 존재
		
		for(int j = 0; j < itemCount; j++) {
			
//			log.info("♥♥♥♥♥♥♥♥아이템"+(j+1));
			
			Element itemLink = itemLinks.get(j); 
			
//			log.info(itemLink.text()+":"+itemLink.attr("href"));
		
			final String itemUrl = ROOT_URL + itemLink.attr("href"); // ROOT_URL은 https://guide.ff14.co.kr/ ->여기에 아이템 개별 주소를 붙임
			
			
			CompletableFuture.runAsync(new Runnable() { // 익명 클래스. 직접 정의해서 씀. 쓰레드 수를 지정해서 처리할 수 있다
					
					@Override
					public void run() {
						
						Document itemDoc = null; // Jsoup이 얻어올 HTML전체 문서
						
						InputStream httpConnStream = null;
						
						try {	
												
							HttpURLConnection httpConn = (HttpURLConnection) new URL(itemUrl).openConnection(Proxy.NO_PROXY);
							httpConn.setRequestProperty("Content-type", "application/json");
							httpConnStream = httpConn.getInputStream();
						//	httpConn.setConnectTimeout(100000); // 응답을 기다리는 시간을 설정
						//	httpConn.setReadTimeout(10000); // 응답을 읽어들이는 시간을 설정
							itemDoc = Jsoup.parse(httpConnStream,"UTF-8",itemUrl);
							       // 파싱하는 메소드. (파싱할 파일/주소의 객체, 파일/주소의 캐릭터셋, 파일/주소 내 태그의 base url)<여기도 의문
								   // getInputStream() - 데이터를 byte단위로 읽어들이는 추상 클래스
//							log.error("■■■■■■■■■■ 읽기 성공");
							
						} catch (IOException e) {
							log.error("URL 형식이 잘못 되었습니다."+itemUrl);
//							e.printStackTrace();
						} finally { // try든 catch든 무조건 수행함
							
							try {
								if(httpConnStream != null) {
									httpConnStream.close();
								}
								
								
							} catch (Exception e2) {
								log.error("URL 형식이 잘못 되었습니다."+itemUrl);
								e2.printStackTrace();
							}
							
						}
						
						Elements itemBoxes = itemDoc.getElementsByClass("cont_box");
						Element itemBox = itemBoxes.get(0);
						
						
						// 아이템명
						Element viewName = itemBox.getElementsByClass("view_name").get(0);
						String itemName = viewName.getElementsByTag("h1").text();
						// String itemName = itemBox.getElementsByClass("col3 new").text();
						// 도 가능하지만 각각의 주소에서 아이템명의 h1태그의 클래스 명이 col3 new가 아닐 경우 받아오지 못하기 때문에 사용하지 않음.(아래에도 적용)
						
						// 아이콘
						Element viewIcon = itemBox.getElementsByClass("view_icon").get(0);
						String itemImg = viewIcon.getElementsByTag("img").eq(0).attr("src");
						
						// 착용레벨, 아이템레벨, 착용직업
						int jobLevel = 0, itemLevel = 0; String itemJob = "";
						
						// 물리기본성능, 마법기본성능, 방패막기발동력, 물리방어력
						int pDamage = 0, mDamage = 0, blockStrength = 0, defence = 0;
						
						// 방패막기성능, 마법방어력, 공격주기
						int blockRate = 0, mDefence = 0; double delay = 0;
						
						// 추가능력치
						int strength = 0, dexterity = 0, vitality = 0, intelligence = 0, mind = 0, 
							criticalHit = 0, determination = 0, directHitRate = 0, skillSpeed = 0,
							spellSpeed = 0, tenacity = 0, piety = 0;
						
						// 마테리아 갯수
						int materia = 0;
						
						// 고대무기코드
						String relicWp = "";
						
						// 음식 테이블 변수
						int vitRate = 0, vitValue = 0, criRate = 0, criValue = 0, detRate = 0, detValue = 0,
							dirRate = 0, dirValue = 0, sksRate = 0, sksValue = 0, spsRate = 0, spsValue = 0,
							tenRate = 0, tenValue = 0, pieRate = 0, pieValue = 0,
							cpRate = 0, cpValue = 0, gpRate = 0, gpValue = 0, craftRate = 0, craftValue = 0, 
							contRate = 0, contValue = 0, percepRate = 0, percepValue = 0, gathRate = 0, gathValue = 0;
							
	
						if(param.getCategory2().equals("5")&&param.getCategory3().equals("46")) {	
						// 요리(category2가 5, category3가 46)의 경우 독자적인 스탯이 있기 때문에 if문으로 따로 빼내서 처리
							
							String mealLv = itemBox.getElementsByClass("align_r").eq(1).text();
							itemLevel = Integer.parseInt(mealLv);
							
							Element mealStat = itemBox.getElementsByClass("view_base").eq(0).get(0);
							int mealStatsize = mealStat.getElementsByTag("p").size(); // 총 추가 능력치 갯수를 가져옴

							for(int m = 0; m < mealStatsize; m++) {
								
								String mStat = mealStat.getElementsByTag("p").eq(m).text();
								String mStat2 = "";
								
								// 모든 요리가 모든 스탯을 포함하고 있지 않으므로 각각의 요리가 가진 스탯만 
								if(mStat.contains("활력")) {
									mStat2 = MatcherUtil.Match(mStat); 			   // 숫자만 걸러서 다시 mStat에 넣어줌 예)활력상승률 8 활력상승값 13을 813으로 만든다.
									vitRate = MatcherUtil.substNparseInt(mStat2);  // 걸러낸 숫자 중 첫번째 문자만 잘라내어 int로 변환후 리턴
									vitValue = MatcherUtil.substNparseInt2(mStat2);// 걸러낸 숫자 중 두번째 문자 부터 잘라내어 int로 변환후 리턴
																				   // 모든 음식의 상승률은 1자리 수 이고 상승값은 2자리 수 이기 때문에 이렇게 변환하기로 함.
								}
								else if(mStat.contains("극대화")) {
									mStat2 = MatcherUtil.Match(mStat); 
									criRate = MatcherUtil.substNparseInt(mStat2);
									criValue = MatcherUtil.substNparseInt2(mStat2);
								}
								else if(mStat.contains("의지력")) {
									mStat2 = MatcherUtil.Match(mStat); 
									detRate = MatcherUtil.substNparseInt(mStat2);
									detValue = MatcherUtil.substNparseInt2(mStat2);
								}
								else if(mStat.contains("직격")) {
									mStat2 = MatcherUtil.Match(mStat); 
									dirRate = MatcherUtil.substNparseInt(mStat2);
									dirValue = MatcherUtil.substNparseInt2(mStat2);
								}
								else if(mStat.contains("기술 시전 속도")) {
									mStat2 = MatcherUtil.Match(mStat); 
									sksRate = MatcherUtil.substNparseInt(mStat2);
									sksValue = MatcherUtil.substNparseInt2(mStat2);
								}
								else if(mStat.contains("마법 시전 속도")) {
									mStat2 = MatcherUtil.Match(mStat); 
									spsRate = MatcherUtil.substNparseInt(mStat2);
									spsValue = MatcherUtil.substNparseInt2(mStat2);
							    }
								else if(mStat.contains("불굴")) {
									mStat2 = MatcherUtil.Match(mStat); 
									tenRate = MatcherUtil.substNparseInt(mStat2);
									tenValue = MatcherUtil.substNparseInt2(mStat2);
								}
								else if(mStat.contains("신앙")) {
									mStat2 = MatcherUtil.Match(mStat); 
									pieRate = MatcherUtil.substNparseInt(mStat2);
									pieValue = MatcherUtil.substNparseInt2(mStat2);	
								}
								else if(mStat.contains("CP")) {
									mStat2 = MatcherUtil.Match(mStat); 
									cpRate = MatcherUtil.substNparseInt(mStat2);
									cpValue = MatcherUtil.substNparseInt2(mStat2);	
								}
								else if(mStat.contains("GP")) {
									mStat2 = MatcherUtil.Match(mStat); 
									gpRate = MatcherUtil.substNparseInt(mStat2);
									gpValue = MatcherUtil.substNparseInt2(mStat2);	
								}
								else if(mStat.contains("작업 숙련도")) {
									mStat2 = MatcherUtil.Match(mStat); 
									craftRate = MatcherUtil.substNparseInt(mStat2);
									craftValue = MatcherUtil.substNparseInt2(mStat2);	
								}
								else if(mStat.contains("가공 숙련도")) {
									mStat2 = MatcherUtil.Match(mStat); 
									contRate = MatcherUtil.substNparseInt(mStat2);
									contValue = MatcherUtil.substNparseInt2(mStat2);	
								}
								else if(mStat.contains("기술력")) {
									mStat2 = MatcherUtil.Match(mStat); 
									percepRate = MatcherUtil.substNparseInt(mStat2);
									percepValue = MatcherUtil.substNparseInt2(mStat2);	
								}
								else if(mStat.contains("획득력")) {
									mStat2 = MatcherUtil.Match(mStat); 
									gathRate = MatcherUtil.substNparseInt(mStat2);
									gathValue = MatcherUtil.substNparseInt2(mStat2);
								}
							}	
							
							
							int itemId = service.selectSeq();
							
							ItemDetailVO vo = new ItemDetailVO();
							
							vo.setItemId(itemId);
							vo.setItemName(itemName);
							vo.setCategory3(param.getCategory3());
							vo.setItemJob(itemJob);
							vo.setJobLevel(jobLevel);
							vo.setItemImg(itemImg);
							vo.setItemLevel(itemLevel);
							
							MealsDetailVO mvo = new MealsDetailVO();
							
							mvo.setItemId(itemId);
							mvo.setVitRate(vitRate);
							mvo.setVitValue(vitValue);
							mvo.setCriRate(criRate);
							mvo.setCriValue(criValue);
							mvo.setDetRate(detRate);
							mvo.setDetValue(detValue);
							mvo.setDirRate(dirRate);
							mvo.setDirValue(dirValue);
							mvo.setSksRate(sksRate);
							mvo.setSksValue(sksValue);
							mvo.setSpsRate(spsRate);
							mvo.setSpsValue(spsValue);
							mvo.setTenRate(tenRate);
							mvo.setTenValue(tenValue);
							mvo.setPieRate(pieRate);
							mvo.setPieValue(pieValue);
							mvo.setCpRate(cpRate);
							mvo.setCpValue(cpValue);
							mvo.setGpRate(gpRate);
							mvo.setGpValue(gpValue);
							mvo.setCraftRate(craftRate);
							mvo.setCraftValue(craftValue);
							mvo.setContRate(contRate);
							mvo.setContValue(contValue);
							mvo.setPercepRate(percepRate);
							mvo.setPercepValue(percepValue);
							mvo.setGathRate(gathRate);
							mvo.setGathValue(gathValue);
							
							service.insertId(vo);
							service.insertMd(mvo);
//							log.info(mvo);
							
								}else {	
						
						// 착용 직업
						Element itemCondition = itemBox.getElementsByClass("item_condition").get(0);
						Element iCJL = itemCondition.getElementsByTag("br").first();
						Node iCJ = iCJL.previousSibling();
						itemJob = iCJ.toString().trim();
						
						// 착용 레벨
						Node iCL = iCJL.nextSibling();
						String jobLv = iCL.toString().trim();
						
						Pattern pattern = Pattern.compile("[0-9]+");
						Matcher matcher = pattern.matcher(jobLv);
						matcher.find();
						jobLv = matcher.group();
						jobLevel = Integer.parseInt(jobLv);

						// 아이템 레벨
						String iLv = itemBox.getElementsByClass("pdb_0").get(0).text();
						itemLevel = MatcherUtil.MatchNparseInt(iLv);
						
						// 추가능력치
						Element itemStat = itemBox.getElementsByClass("item_stat").get(0);
						
						// 물리마법기본성능, 방패막기발동력, 물리방어력
						Element itS1 = itemStat.getElementsByTag("li").eq(1).get(0);
						String itemStatKind1 = itS1.getElementsByTag("p").first().text(); //스탯 이름 구분을 위해
						String statValue1 = itS1.getElementsByTag("p").last().text();
						
						switch(itemStatKind1){
							case "물리 기본 성능":
								pDamage = Integer.parseInt(statValue1);
							break;
							case "마법 기본 성능":
								mDamage = Integer.parseInt(statValue1);
							break;
							case "방패 막기 발동력":
								blockStrength = Integer.parseInt(statValue1);
							break;
							case "물리 방어력":
								defence = Integer.parseInt(statValue1);
							break;		
						};
						
						// 공격주기, 방패막기성능, 마법방어력
						Element itS2 = itemStat.getElementsByTag("li").first();
						String itemStatKind2 = itS2.getElementsByTag("p").first().text();
						String statValue2 = itS2.getElementsByTag("p").last().text();
						
						switch(itemStatKind2){
							case "공격 주기":
								delay = Double.parseDouble(statValue2);
							break;
							case "방패 막기 성능":
								blockRate = Integer.parseInt(statValue2);
							break;
							case "마법 방어력":
								mDefence = Integer.parseInt(statValue2);
							break;	
						};

						// 힘, 민첩, 활력, 지능, 정신력, 극대, 의지, 직격, 기시, 마시, 불굴, 신앙											
						Element subStat = itemBox.getElementsByClass("view_base").eq(1).get(0); // 추가능력치 div를 가져옴
						
						int statSize = subStat.getElementsByTag("p").size(); // 총 추가 능력치 갯수를 가져옴						
						
						for(int t = 0; t < statSize; t++) {
							
							String sStat = subStat.getElementsByTag("p").eq(t).text();
							
							if(sStat.contains("힘")) {
								strength = MatcherUtil.MatchNparseInt(sStat); 
										  // 정규식으로 sStat에서 숫자만 찾아 저장한 후 int로 변환해주는 메소드		
							}
							else if(sStat.contains("민첩성")) {
								dexterity = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("활력")) {
								vitality = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("지능")) {
								intelligence = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("정신력")) {
								mind = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("극대화")) {
								criticalHit = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("의지력")) {
								determination = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("직격")) {
								directHitRate = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("기술 시전 속도")) {
								skillSpeed = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("마법 시전 속도")) {
								spellSpeed = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("불굴")) {
								tenacity = MatcherUtil.MatchNparseInt(sStat);
							}
							else if(sStat.contains("신앙심")) {
								piety = MatcherUtil.MatchNparseInt(sStat);
							}
						}
						
						// 마테리아 몇개 박을 수 있는지 찾음
						Elements mate = itemBox.getElementsByClass("materia");
						materia = mate.size();
						
						// 고대무기 여부
						Element relic = itemBox.getElementsByClass("view_base").eq(2).get(0);
						String relWq = relic.getElementsByTag("p").text();
						
						if(relWq.contains("고대의 무기")) {
							relicWp = "1";
						}else if(relWq.contains("조디악 웨폰")) {
							relicWp = "2";
						}else if(relWq.contains("아니마 웨폰")) {
							relicWp = "3";
						}else if(relWq.contains("에우레카 웨폰")) {
							relicWp = "4";
						}else if(relWq.contains("레지스탕스 웨폰")) {
							relicWp = "5";
						}else {
							relicWp = "";
						}
					}

//						log.info("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥");
//						log.info("♥♥♥"+itemUrl);			
						
//						SeqVO svo = new SeqVO(); // item_id에 들어갈 시퀀스 넘버를 DB의 seq_it테이블에서 불러와 저장하는데 쓰일 VO
						
//						log.error("■■■■■ try selectSeq");
						
						int itemId = service.selectSeq(); // 시퀀스를 증가 시키는 함수를 실행함
											 // select get_seq('idSeq') from dual;
//						log.error("■■■■■ selectSeq success");
//						svo.setItemId(service.selectSeq2());	
//						int itemId = svo.getItemId();
						
//						int itemId = service.selectSeq2(); // int itemId에 증가된 시퀀스 넘버를 불러오는 select문을 실행해 넣음
						 								   // select id from seq_it;
														   // id = 시퀀스 넘버 
						
//						log.error("■■■■■ selectSeq2: " + itemId);
//						System.out.println(itemId);
						
//						svo.setItemId(service.selectSeq2()); 
						
						
						ItemDetailVO vo = new ItemDetailVO();
						
						vo.setItemId(itemId);
						vo.setItemName(itemName);
						vo.setCategory3(category3);
						vo.setItemJob(itemJob);
						vo.setJobLevel(jobLevel);
						vo.setItemImg(itemImg);
						vo.setItemLevel(itemLevel);			
						
//						log.debug("■■■■■ vo: " + vo.getItemId());
						
						EqDetailVO evo = new EqDetailVO();
						
						evo.setItemId(itemId);
						evo.setPDamage(pDamage);
						evo.setMDamage(mDamage);
						evo.setBlockStrength(blockStrength);
						evo.setBlockRate(blockRate);
						evo.setDefence(defence);
						evo.setMDefence(mDefence);
						evo.setDelay(delay);
						evo.setStrength(strength);
						evo.setDexterity(dexterity);
						evo.setVitality(vitality);
						evo.setIntelligence(intelligence);
						evo.setMind(mind);
						evo.setCriticalHit(criticalHit);
						evo.setDetermination(determination);
						evo.setDirectHitRate(directHitRate);
						evo.setSkillSpeed(skillSpeed);
						evo.setSpellSpeed(spellSpeed);
						evo.setTenacity(tenacity);
						evo.setPiety(piety);
						evo.setMateria(materia);
						evo.setRelicWp(relicWp);
						
//						log.error("■■■■■ evo: " + vo.getItemId());
						
/*						System.out.println("아이템명:"+vo.getItemName()+"/착용직업:"+vo.getItemJob()+"/착용레벨:"+vo.getJobLevel()+"/아이콘:"+vo.getItemImg()+"/아이템레벨:"+vo.getItemLevel()
						+"/물리기본성능:"+evo.getPDamage()+"/마법기본성능:"+evo.getMDamage()+"/방패막기발동력:"+evo.getBlockStrength()+"/방패막기성능:"+evo.getBlockRate()+"/물리방어력:"+evo.getDefence()+"/마법방어력:"+evo.getMDefence()
						+"/공격주기:"+evo.getDelay()+"/힘:"+evo.getStrength()+"/민첩:"+evo.getDexterity()+"/활력:"+evo.getVitality()+"/지능:"+evo.getIntelligence()+"/정신력:"+evo.getMind()+"/극대화:"+evo.getCriticalHit()
						+"/의지력:"+evo.getDetermination()+"/직격:"+evo.getDirectHitRate()+"/기시속:"+evo.getSkillSpeed()+"/마시속:"+evo.getSpellSpeed()+"/불굴:"+tenacity+"/신앙심:"+evo.getPiety()
						+"/고대무기코드:"+evo.getRelicWp()+"/마테리아:"+evo.getMateria());*/
						
//						log.error("■■■■■ insertId" + vo.getItemId() + ": " + service.insertId(vo));
//						System.out.println(service.insertId(vo));
						service.insertId(vo);
						service.insertEd(evo);

//						System.out.println(vo);
//						System.out.println(evo);
						// 한개의 아이템의 정보를 DB에 넣을때 
						// 아이템의 기본 정보(대표적으로 이름)를 다루는 item_detail테이블과 상세 스텟을 다루는 equipment_detail테이블이 존재
						// 이 각각의 테이블에는 item_id라는 같은 이름의 컬럼이 존재해서
						// (PK값이며 시퀸스를 이용해 insert되는 순서대로 번호가 매겨짐,가장 안쪽의 for문인 개별아이템 페이지에서 insert문을 호출하기 때문에 
						// 한 아이템이 같은 item_id값을 가진다는게 내 이론 . . .)
						// item_id를 join해 ㅁㅁ아이템을 조회했을 때 ㅁㅁ아이템의 상세 정보를 함께 불러오려고 했음..
						// 값을 찍어 봤을때
						// ItemDetailVO(category3=108, itemName=디미스라이트 전투낫, itemImg=//image.ff14.co.kr/guide/resources/images/GV6.2/037000/037230.png, jobLevel=78, itemLevel=415, itemJob=리퍼)
						// EqDetailVO(pDamage=85, mDamage=0, blockStrength=0, defence=0, blockRate=0, mDefence=0, delay=3.2, strength=139, dexterity=0, vitality=148, intelligence=0, mind=0, criticalHit=141, determination=0, directHitRate=99, skillSpeed=0, spellSpeed=0, tenacity=0, piety=0, materia=2, relicWp=)
						// 이런 식으로 item_detail테이블과 equipment_detail테이블에 들어가야 할 디미스라이트전투낫의 모든 값이 제대로 찍히지만
						// DB에 저장된 데이터를 보면 디미스라이트 전투낫의 item_detail테이블과 equipment_detail테이블의 item_id가 일치하지 않으며
						// 그로 인해 전혀 다른 아이템의 스텟이 저장되어 있음
						// 그런데 insert를 할때 어떤 오류도 나지 않으며 리퍼의 양손낫 아이템(총49개)이 전부 DB에 들어와있음(모두 item_id가 뒤죽박죽 섞인 채로!!!!!!!!!)
						// ㅠㅠ
						
						
						
						//log.info("insert성공☆☆☆☆☆☆☆☆☆☆☆");
						
						//log.info("아이템명:"+itemName+"/착용직업:"+itemJob+"/착용레벨:"+jobLevel+"/아이콘:"+itemImg+"/아이템레벨:"+itemLevel);
						

					// http://localhost:9090/scrap?category2=1&category3=108
					// http://localhost:9090/scrap?category2=3&category3=11&min_gear_lv=81&max_gear_lv=90
					}
				}, executorService);
			
				try {
					Thread.sleep(100L);
				} catch (InterruptedException e) {
					log.error("Thread.sleep interrupted");
					e.printStackTrace();
				}
			}
			//executorService.shutdown(); // 메소드가 종료되어도 스레드는 남아있기 때문에 직접 제거해줌.
		}
	return "";
	}
	
}
