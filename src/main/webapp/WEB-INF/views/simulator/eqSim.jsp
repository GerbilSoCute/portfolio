<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>

// 아이템 별 상세정보
function getWeaponDetail() {
	
     var itemId = $("#weaponList option:selected").attr('value15');
     window.open(itemId, 'detail','width=530,height=570');
}

function getShieldDetail() {
	
    var itemId = $("#shieldList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getHeadDetail() {
	
    var itemId = $("#headList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getTopDetail() {
	
    var itemId = $("#topList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getHandDetail() {
	
    var itemId = $("#handList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getBottomsDetail() {
	
    var itemId = $("#bottomsList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getFootDetail() {
	
    var itemId = $("#footList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getEarDetail() {
	
    var itemId = $("#earList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getNeckDetail() {
	
    var itemId = $("#neckList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getArmDetail() {
	
    var itemId = $("#armList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getFingerDetail() {
	
    var itemId = $("#fingerList option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

function getFingerDetail2() {
	
    var itemId = $("#fingerList2 option:selected").attr('value15');
    window.open(itemId, 'detail','width=530,height=570');
}

// 아이쳄 평균 레벨을 사이드바에 출력
function getItemLv() {
	
	var wLv =  parseInt($("#weaponList option:selected").attr('value16'));
	var sLv =  parseInt($("#shieldList option:selected").attr('value16'));
	var hdLv = parseInt($("#headList option:selected").attr('value16'));
	var tLv =  parseInt($("#topList option:selected").attr('value16'));
	var hnLv = parseInt($("#handList option:selected").attr('value16'));
	var bLv =  parseInt($("#bottomsList option:selected").attr('value16'));
	var fLv =  parseInt($("#footList option:selected").attr('value16'));
	var eLv =  parseInt($("#earList option:selected").attr('value16'));
	var nLv =  parseInt($("#neckList option:selected").attr('value16'));
	var aLv =  parseInt($("#armList option:selected").attr('value16'));
	var fnLv = parseInt( $("#fingerList option:selected").attr('value16'));
	var fn2Lv =parseInt($("#fingerList2 option:selected").attr('value16'));
	
	if(isNaN(sLv)){
		var s = (wLv+hdLv+tLv+hnLv+bLv+fLv+eLv+nLv+aLv+fnLv+fn2Lv)/11;
		document.getElementById("level").innerHTML =+ Math.floor(s);
	}else{
		var s = (wLv+sLv+hdLv+tLv+hnLv+bLv+fLv+eLv+nLv+aLv+fnLv+fn2Lv)/12;
		document.getElementById("level").innerHTML =+ Math.floor(s);
	}
}

// 선택된 아이템의 총 능력치를 사이드바에 출력
function getTotalValue() { 
	
	var weaponList = document.getElementById("weaponList");
	var shieldList = document.getElementById("shieldList");
	var headList = document.getElementById("headList");
	var topList = document.getElementById("topList");
	var handList = document.getElementById("handList");
	var bottomsList = document.getElementById("bottomsList");
	var footList = document.getElementById("footList");
	var earList = document.getElementById("earList");
	var neckList = document.getElementById("neckList");
	var armList = document.getElementById("armList");
	var fingerList = document.getElementById("fingerList");
	var fingerList2 = document.getElementById("fingerList2");
	
	//힘
	var str = $("#weaponList option:selected").attr('value2');
	var str2 = $("#headList option:selected").attr('value2');
	var str3 = $("#topList option:selected").attr('value2');
	var str4 = $("#handList option:selected").attr('value2');
	var str5 = $("#bottomsList option:selected").attr('value2');
	var str6 = $("#footList option:selected").attr('value2');
	var str7 = $("#earList option:selected").attr('value2');
	var str8 = $("#neckList option:selected").attr('value2');
	var str9 = $("#armList option:selected").attr('value2');
	var str10 = $("#fingerList option:selected").attr('value2');
	var str11 = $("#fingerList2 option:selected").attr('value2');

	//민첩
	var dex = $("#weaponList option:selected").attr('value3');
	var dex2 = $("#headList option:selected").attr('value3');
	var dex3 = $("#topList option:selected").attr('value3');
	var dex4 = $("#handList option:selected").attr('value3');
	var dex5 = $("#bottomsList option:selected").attr('value3');
	var dex6 = $("#footList option:selected").attr('value3');
	var dex7 = $("#earList option:selected").attr('value3');
	var dex8 = $("#neckList option:selected").attr('value3');
	var dex9 = $("#armList option:selected").attr('value3');
	var dex10 = $("#fingerList option:selected").attr('value3');
	var dex11 = $("#fingerList2 option:selected").attr('value3');
	
	//활력
	var vit = $("#weaponList option:selected").attr('value4');
	var vit2 = $("#headList option:selected").attr('value4');
	var vit3 = $("#topList option:selected").attr('value4');
	var vit4 = $("#handList option:selected").attr('value4');
	var vit5 = $("#bottomsList option:selected").attr('value4');
	var vit6 = $("#footList option:selected").attr('value4');
	var vit7 = $("#earList option:selected").attr('value4');
	var vit8 = $("#neckList option:selected").attr('value4');
	var vit9 = $("#armList option:selected").attr('value4');
	var vit10 = $("#fingerList option:selected").attr('value3');
	var vit11 = $("#fingerList2 option:selected").attr('value4');
	
	var itg = $("#weaponList option:selected").attr('value5');
	var itg2 = $("#headList option:selected").attr('value5');
	var itg3 = $("#topList option:selected").attr('value5');
	var itg4 = $("#handList option:selected").attr('value5');
	var itg5 = $("#bottomsList option:selected").attr('value5');
	var itg6 = $("#footList option:selected").attr('value5');
	var itg7 = $("#earList option:selected").attr('value5');
	var itg8 = $("#neckList option:selected").attr('value5');
	var itg9 = $("#armList option:selected").attr('value5');
	var itg10 = $("#fingerList option:selected").attr('value5');
	var itg11 = $("#fingerList2 option:selected").attr('value5');
	
	var mnd = $("#weaponList option:selected").attr('value6');
	var mnd2 = $("#headList option:selected").attr('value6');
	var mnd3 = $("#topList option:selected").attr('value6');
	var mnd4 = $("#handList option:selected").attr('value6');
	var mnd5 = $("#bottomsList option:selected").attr('value6');
	var mnd6 = $("#footList option:selected").attr('value6');
	var mnd7 = $("#earList option:selected").attr('value6');
	var mnd8 = $("#neckList option:selected").attr('value6');
	var mnd9 = $("#armList option:selected").attr('value6');
	var mnd10 = $("#fingerList option:selected").attr('value6');
	var mnd11 = $("#fingerList2 option:selected").attr('value6');
	
	var cri = $("#weaponList option:selected").attr('value7');
	var cri2 = $("#headList option:selected").attr('value7');
	var cri3 = $("#topList option:selected").attr('value7');
	var cri4 = $("#handList option:selected").attr('value7');
	var cri5 = $("#bottomsList option:selected").attr('value7');
	var cri6 = $("#footList option:selected").attr('value7');
	var cri7 = $("#earList option:selected").attr('value7');
	var cri8 = $("#neckList option:selected").attr('value7');
	var cri9 = $("#armList option:selected").attr('value7');
	var cri10 = $("#fingerList option:selected").attr('value7');
	var cri11 = $("#fingerList2 option:selected").attr('value7');

	var det = $("#weaponList option:selected").attr('value8');
	var det2 = $("#headList option:selected").attr('value8');
	var det3 = $("#topList option:selected").attr('value8');
	var det4 = $("#handList option:selected").attr('value8');
	var det5 = $("#bottomsList option:selected").attr('value8');
	var det6 = $("#footList option:selected").attr('value8');
	var det7 = $("#earList option:selected").attr('value8');
	var det8 = $("#neckList option:selected").attr('value8');
	var det9 = $("#armList option:selected").attr('value8');
	var det10 = $("#fingerList option:selected").attr('value8');
	var det11 = $("#fingerList2 option:selected").attr('value8');

	var dir = $("#weaponList option:selected").attr('value9');
	var dir2 = $("#headList option:selected").attr('value9');
	var dir3 = $("#topList option:selected").attr('value9');
	var dir4 = $("#handList option:selected").attr('value9');
	var dir5 = $("#bottomsList option:selected").attr('value9');
	var dir6 = $("#footList option:selected").attr('value9');
	var dir7 = $("#earList option:selected").attr('value9');
	var dir8 = $("#neckList option:selected").attr('value9');
	var dir9 = $("#armList option:selected").attr('value9');
	var dir10 = $("#fingerList option:selected").attr('value9');
	var dir11 = $("#fingerList2 option:selected").attr('value9');
	
	var sks = $("#weaponList option:selected").attr('value10');
	var sks2 = $("#headList option:selected").attr('value10');
	var sks3 = $("#topList option:selected").attr('value10');
	var sks4 = $("#handList option:selected").attr('value10');
	var sks5 = $("#bottomsList option:selected").attr('value10');
	var sks6 = $("#footList option:selected").attr('value10');
	var sks7 = $("#earList option:selected").attr('value10');
	var sks8 = $("#neckList option:selected").attr('value10');
	var sks9 = $("#armList option:selected").attr('value10');
	var sks10 = $("#fingerList option:selected").attr('value10');
	var sks11 = $("#fingerList2 option:selected").attr('value10');
	
	var sps = $("#weaponList option:selected").attr('value11');
	var sps2 = $("#headList option:selected").attr('value11');
	var sps3 = $("#topList option:selected").attr('value11');
	var sps4 = $("#handList option:selected").attr('value11');
	var sps5 = $("#bottomsList option:selected").attr('value11');
	var sps6 = $("#footList option:selected").attr('value11');
	var sps7 = $("#earList option:selected").attr('value11');
	var sps8 = $("#neckList option:selected").attr('value11');
	var sps9 = $("#armList option:selected").attr('value11');
	var sps10 = $("#fingerList option:selected").attr('value11');
	var sps11 = $("#fingerList2 option:selected").attr('value11');
	
	var ten = $("#weaponList option:selected").attr('value12');
	var ten2 = $("#headList option:selected").attr('value12');
	var ten3 = $("#topList option:selected").attr('value12');
	var ten4 = $("#handList option:selected").attr('value12');
	var ten5 = $("#bottomsList option:selected").attr('value12');
	var ten6 = $("#footList option:selected").attr('value12');
	var ten7 = $("#earList option:selected").attr('value12');
	var ten8 = $("#neckList option:selected").attr('value12');
	var ten9 = $("#armList option:selected").attr('value12');
	var ten10 = $("#fingerList option:selected").attr('value12');
	var ten11 = $("#fingerList2 option:selected").attr('value12');

	var pie = $("#weaponList option:selected").attr('value13');
	var pie2 = $("#headList option:selected").attr('value13');
	var pie3 = $("#topList option:selected").attr('value13');
	var pie4 = $("#handList option:selected").attr('value13');
	var pie5 = $("#bottomsList option:selected").attr('value13');
	var pie6 = $("#footList option:selected").attr('value13');
	var pie7 = $("#earList option:selected").attr('value13');
	var pie8 = $("#neckList option:selected").attr('value13');
	var pie9 = $("#armList option:selected").attr('value13');
	var pie10 = $("#fingerList option:selected").attr('value13');
	var pie11 = $("#fingerList2 option:selected").attr('value13');

	var str12 = $("#shieldList option:selected").attr('value2');
	var dex12 = $("#shieldList option:selected").attr('value3');
	var vit12 = $("#shieldList option:selected").attr('value4');
	var itg12 = $("#shieldList option:selected").attr('value5');
	var mnd12 = $("#shieldList option:selected").attr('value6');
	var cri12 = $("#shieldList option:selected").attr('value7');
	var det12 = $("#shieldList option:selected").attr('value8');
	var dir12 = $("#shieldList option:selected").attr('value9');
	var sks12 = $("#shieldList option:selected").attr('value10');
	var sps12 = $("#shieldList option:selected").attr('value11');
	var ten12 = $("#shieldList option:selected").attr('value12');
	var pie12 = $("#shieldList option:selected").attr('value13');
	
	
	var totalStr = parseInt(str)+parseInt(str2)+parseInt(str3)+parseInt(str4)
	  +parseInt(str5)+parseInt(str6)+parseInt(str7)+parseInt(str8)
	  +parseInt(str9)+parseInt(str10)+parseInt(str11);


	var totalDex = parseInt(dex)+parseInt(dex2)+parseInt(dex3)+parseInt(dex4)
		  +parseInt(dex5)+parseInt(dex6)+parseInt(dex7)+parseInt(dex8)
		  +parseInt(dex9)+parseInt(dex10)+parseInt(dex11);
	
	
	var totalVit = parseInt(vit)+parseInt(vit2)+parseInt(vit3)+parseInt(vit4)
			  +parseInt(vit5)+parseInt(vit6)+parseInt(vit7)+parseInt(vit8)
			  +parseInt(vit9)+parseInt(vit10)+parseInt(vit11);
	
	
	var totalItg = parseInt(itg)+parseInt(itg2)+parseInt(itg3)+parseInt(itg4)
		  +parseInt(itg5)+parseInt(itg6)+parseInt(itg7)+parseInt(itg8)
		  +parseInt(itg9)+parseInt(itg10)+parseInt(itg11);
	
	
	var totalMnd = parseInt(mnd)+parseInt(mnd2)+parseInt(mnd3)+parseInt(mnd4)
		  +parseInt(mnd5)+parseInt(mnd6)+parseInt(mnd7)+parseInt(mnd8)
		  +parseInt(mnd9)+parseInt(mnd10)+parseInt(mnd11);
	
	
	var totalCri = parseInt(cri)+parseInt(cri2)+parseInt(cri3)+parseInt(cri4)
		  +parseInt(cri5)+parseInt(cri6)+parseInt(cri7)+parseInt(cri8)
		  +parseInt(cri9)+parseInt(cri10)+parseInt(cri11);
	
	
	var totalDet = parseInt(det)+parseInt(det2)+parseInt(det3)+parseInt(det4)
		  +parseInt(det5)+parseInt(det6)+parseInt(det7)+parseInt(det8)
		  +parseInt(det9)+parseInt(det10)+parseInt(det11);
	
	
	var totalDir = parseInt(dir)+parseInt(dir2)+parseInt(dir3)+parseInt(dir4)
		  +parseInt(dir5)+parseInt(dir6)+parseInt(dir7)+parseInt(dir8)
		  +parseInt(dir9)+parseInt(dir10)+parseInt(dir11);
	
	
	var totalSks = parseInt(sks)+parseInt(sks2)+parseInt(sks3)+parseInt(sks4)
		  +parseInt(sks5)+parseInt(sks6)+parseInt(sks7)+parseInt(sks8)
		  +parseInt(sks9)+parseInt(sks10)+parseInt(sks11);
	
	
	var totalSps = parseInt(sps)+parseInt(sps2)+parseInt(sps3)+parseInt(sps4)
		  +parseInt(sps5)+parseInt(sps6)+parseInt(sps7)+parseInt(sps8)
		  +parseInt(sps9)+parseInt(sps10)+parseInt(sps11);
	
	
	var totalTen = parseInt(ten)+parseInt(ten2)+parseInt(ten3)+parseInt(ten4)
		  +parseInt(ten5)+parseInt(ten6)+parseInt(ten7)+parseInt(ten8)
		  +parseInt(ten9)+parseInt(ten10)+parseInt(ten11);
	
	
	var totalPie = parseInt(pie)+parseInt(pie2)+parseInt(pie3)+parseInt(pie4)
		  +parseInt(pie5)+parseInt(pie6)+parseInt(pie7)+parseInt(pie8)
		  +parseInt(pie9)+parseInt(pie10)+parseInt(pie11);
		
	if(str12 == undefined && dex12 == undefined && vit12 == undefined && itg12 == undefined && mnd12 == undefined &&
			   cri12 == undefined && det12 == undefined && dir12 ==undefined && sks12 == undefined && sps12 == undefined &&
			   ten12 == undefined && pie12 == undefined){
				
				document.getElementById("str").innerHTML=+totalStr;
				document.getElementById("dex").innerHTML=+totalDex;
				document.getElementById("vit").innerHTML=+totalVit;
				document.getElementById("itg").innerHTML=+totalItg;
				document.getElementById("mnd").innerHTML=+totalMnd;
				document.getElementById("cri").innerHTML=+totalCri;
				document.getElementById("det").innerHTML=+totalDet;
				document.getElementById("dir").innerHTML=+totalDir;
				document.getElementById("sks").innerHTML=+totalSks;
				document.getElementById("sps").innerHTML=+totalSps;
				document.getElementById("ten").innerHTML=+totalTen;
				document.getElementById("pie").innerHTML=+totalPie;		
							
			}else{
				
				document.getElementById("str").innerHTML=+totalStr+parseInt(str12);
				document.getElementById("dex").innerHTML=+totalDex+parseInt(dex12);
				document.getElementById("vit").innerHTML=+totalVit+parseInt(vit12);
				document.getElementById("itg").innerHTML=+totalItg+parseInt(itg12);
				document.getElementById("mnd").innerHTML=+totalMnd+parseInt(mnd12);
				document.getElementById("cri").innerHTML=+totalCri+parseInt(cri12);
				document.getElementById("det").innerHTML=+totalDet+parseInt(det12);
				document.getElementById("dir").innerHTML=+totalDir+parseInt(dir12);
				document.getElementById("sks").innerHTML=+totalSks+parseInt(sks12);
				document.getElementById("sps").innerHTML=+totalSps+parseInt(sps12);
				document.getElementById("ten").innerHTML=+totalTen+parseInt(ten12);
				document.getElementById("pie").innerHTML=+totalPie+parseInt(pie12);
			}

}


// 주 무기 옵션을 선택했을 때 실행 될 함수
function getWeaponInfo() {
	getTotalValue();
	getWeaponValue();
	getWeaponMateria();
	getItemLv();
} 

// 선택된 아이텝의 아이콘을 가져옴
function getWeaponValue() {
	
	var weaponList = document.getElementById("weaponList");
	var itemIcon = weaponList.options[document.getElementById("weaponList").selectedIndex].value;
	document.getElementById("weaponIcon").src = itemIcon;

}


// 선택된 아이템의 마테리아 홈 갯수를 가져와 그 수에 맞게 마테리아 선택창 생성
function getWeaponMateria() {
	
	$("#mateL").empty();
	
//	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
	
	var materia = $("#weaponList option:selected").attr('value14');

		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList1_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL").innerHTML += str; 
			}
}

// 선택된 마테리아의 스탯을 더해서 출력해주는 함수
function getMateValue() {
	
	$("#cri2").empty(); $("#det2").empty(); $("#dir2").empty();

	var cri1_1=0, det1_1=0, dir1_1=0, cri1_2=0, det1_2=0, dir1_2=0, cri1_3=0, det1_3=0, dir1_3=0, cri1_4=0, det1_4=0, dir1_4=0;
	var tc1, tde1, tdi1;
	
	var list1_1 = $("#materiaList1_1 option:selected").text(); // 마테리아 리스트에서 선택된 옵션을 넣어줌
	var list1_2 = $("#materiaList1_2 option:selected").text();
	var list1_3 = $("#materiaList1_3 option:selected").text();
	var list1_4 = $("#materiaList1_4 option:selected").text();
	
	var list2_1 = $("#materiaList2_1 option:selected").text(); 
	var list2_2 = $("#materiaList2_2 option:selected").text();
	var list2_3 = $("#materiaList2_3 option:selected").text();
	var list2_4 = $("#materiaList2_4 option:selected").text();
	
	var list3_1 = $("#materiaList3_1 option:selected").text(); 
	var list3_2 = $("#materiaList3_2 option:selected").text();
	var list3_3 = $("#materiaList3_3 option:selected").text();
	var list3_4 = $("#materiaList3_4 option:selected").text();
	
	var list4_1 = $("#materiaList4_1 option:selected").text(); 
	var list4_2 = $("#materiaList4_2 option:selected").text();
	var list4_3 = $("#materiaList4_3 option:selected").text();
	var list4_4 = $("#materiaList4_4 option:selected").text();
	
	var list5_1 = $("#materiaList5_1 option:selected").text(); 
	var list5_2 = $("#materiaList5_2 option:selected").text();
	var list5_3 = $("#materiaList5_3 option:selected").text();
	var list5_4 = $("#materiaList5_4 option:selected").text();
	
	var list6_1 = $("#materiaList6_1 option:selected").text(); 
	var list6_2 = $("#materiaList6_2 option:selected").text();
	var list6_3 = $("#materiaList6_3 option:selected").text();
	var list6_4 = $("#materiaList6_4 option:selected").text();
	
	var list7_1 = $("#materiaList7_1 option:selected").text(); 
	var list7_2 = $("#materiaList7_2 option:selected").text();
	var list7_3 = $("#materiaList7_3 option:selected").text();
	var list7_4 = $("#materiaList7_4 option:selected").text();
	
	var list8_1 = $("#materiaList8_1 option:selected").text(); 
	var list8_2 = $("#materiaList8_2 option:selected").text();
	var list8_3 = $("#materiaList8_3 option:selected").text();
	var list8_4 = $("#materiaList8_4 option:selected").text();
	
	var list9_1 = $("#materiaList9_1 option:selected").text(); 
	var list9_2 = $("#materiaList9_2 option:selected").text();
	var list9_3 = $("#materiaList9_3 option:selected").text();
	var list9_4 = $("#materiaList9_4 option:selected").text();
	
	var list10_1 = $("#materiaList10_1 option:selected").text(); 
	var list10_2 = $("#materiaList10_2 option:selected").text();
	var list10_3 = $("#materiaList10_3 option:selected").text();
	var list10_4 = $("#materiaList10_4 option:selected").text();
	
	var list11_1 = $("#materiaList11_1 option:selected").text(); 
	var list11_2 = $("#materiaList11_2 option:selected").text();
	var list11_3 = $("#materiaList11_3 option:selected").text();
	var list11_4 = $("#materiaList11_4 option:selected").text();
	
	if(list1_1 != ""){
		
		var cri = parseInt($("#materiaList1_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList1_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList1_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri1_1 = cri;
		}else if(det != 0){
			det1_1 = det;
		}else{
			dir1_1 = dir;
		}
	}
	
	if(list1_2 != ""){
			
			var cri = parseInt($("#materiaList1_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList1_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList1_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri1_2 = cri;
			}else if(det != 0){
				det1_2 = det;
			}else{
				dir1_2 = dir;
			}
	}
	
	if(list1_3 != ""){
		
		var cri = parseInt($("#materiaList1_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList1_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList1_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri1_3 = cri;
		}else if(det != 0){
			det1_3 = det;
		}else{
			dir1_3 = dir;
		}
	}
	
	if(list1_4 != ""){
			
			var cri = parseInt($("#materiaList1_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList1_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList1_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri1_4 = cri;
			}else if(det != 0){
				det1_4 = det;
			}else{
				dir1_4 = dir;
			}
		}
	
	tc1 = cri1_1 + cri1_2 + cri1_3 + cri1_4;
	tde1 = det1_1 + det1_2 + det1_3 + det1_4;
	tdi1 = dir1_1 + dir1_2 + dir1_3 + dir1_4;
	
	// 두번째 ---------------------------------
	var cri2_1=0, det2_1=0, dir2_1=0, cri2_2=0, det2_2=0, dir2_2=0, cri2_3=0, det2_3=0, dir2_3=0, cri2_4=0, det2_4=0, dir2_4=0;
	var tc2, tde2, tdi2;
	
	if(list2_1 != ""){
		
		var cri = parseInt($("#materiaList2_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList2_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList2_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri2_1 = cri;
		}else if(det != 0){
			det2_1 = det;
		}else{
			dir2_1 = dir;
		}
	}
	
	if(list2_2 != ""){
			
			var cri = parseInt($("#materiaList2_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList2_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList2_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri2_2 = cri;
			}else if(det != 0){
				det2_2 = det;
			}else{
				dir2_2 = dir;
			}
	}
	
	if(list2_3 != ""){
		
		var cri = parseInt($("#materiaList2_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList2_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList2_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri2_3 = cri;
		}else if(det != 0){
			det2_3 = det;
		}else{
			dir2_3 = dir;
		}
	}
	
	if(list2_4 != ""){
			
			var cri = parseInt($("#materiaList2_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList2_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList2_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri2_4 = cri;
			}else if(det != 0){
				det2_4 = det;
			}else{
				dir2_4 = dir;
			}
		}
	
	tc2 = cri2_1 + cri2_2 + cri2_3 + cri2_4;
	tde2 = det2_1 + det2_2 + det2_3 + det2_4;
	tdi2 = dir2_1 + dir2_2 + dir2_3 + dir2_4;
	
	// 세번째 ---------------------------------
	var cri3_1=0, det3_1=0, dir3_1=0, cri3_2=0, det3_2=0, dir3_2=0, cri3_3=0, det3_3=0, dir3_3=0, cri3_4=0, det3_4=0, dir3_4=0;
	var tc3, tde3, tdi3;
	
	if(list3_1 != ""){
		
		var cri = parseInt($("#materiaList3_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList3_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList3_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri3_1 = cri;
		}else if(det != 0){
			det3_1 = det;
		}else{
			dir3_1 = dir;
		}
	}
	
	if(list3_2 != ""){
			
			var cri = parseInt($("#materiaList3_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList3_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList3_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri3_2 = cri;
			}else if(det != 0){
				det3_2 = det;
			}else{
				dir3_2 = dir;
			}
	}
	
	if(list3_3 != ""){
		
		var cri = parseInt($("#materiaList3_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList3_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList3_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri3_3 = cri;
		}else if(det != 0){
			det3_3 = det;
		}else{
			dir3_3 = dir;
		}
	}
	
	if(list3_4 != ""){
			
			var cri = parseInt($("#materiaList3_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList3_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList3_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri3_4 = cri;
			}else if(det != 0){
				det3_4 = det;
			}else{
				dir3_4 = dir;
			}
		}
	
		tc3 = cri3_1 + cri3_2 + cri3_3 + cri3_4;
		tde3 = det3_1 + det3_2 + det3_3 + det3_4;
		tdi3 = dir3_1 + dir3_2 + dir3_3 + dir3_4;
		
	// 네번째 ---------------------------------
	var cri4_1=0, det4_1=0, dir4_1=0, cri4_2=0, det4_2=0, dir4_2=0, cri4_3=0, det4_3=0, dir4_3=0, cri4_4=0, det4_4=0, dir4_4=0;
	var tc4, tde4, tdi4;
	
	if(list4_1 != ""){
		
		var cri = parseInt($("#materiaList4_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList4_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList4_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri4_1 = cri;
		}else if(det != 0){
			det4_1 = det;
		}else{
			dir4_1 = dir;
		}
	}
	
	if(list4_2 != ""){
			
			var cri = parseInt($("#materiaList4_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList4_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList4_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri4_2 = cri;
			}else if(det != 0){
				det4_2 = det;
			}else{
				dir4_2 = dir;
			}
	}
	
	if(list4_3 != ""){
		
		var cri = parseInt($("#materiaList4_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList4_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList4_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri4_3 = cri;
		}else if(det != 0){
			det4_3 = det;
		}else{
			dir4_3 = dir;
		}
	}
	
	if(list4_4 != ""){
			
			var cri = parseInt($("#materiaList4_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList4_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList4_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri4_4 = cri;
			}else if(det != 0){
				det4_4 = det;
			}else{
				dir4_4 =dir;
			}
		}
	
	tc4 = cri4_1 + cri4_2 + cri4_3 + cri4_4;
	tde4 = det4_1 + det4_2 + det4_3 + det4_4;
	tdi4 = dir4_1 + dir4_2 + dir4_3 + dir4_4;	

	// 다섯번째 ---------------------------------
	var cri5_1=0, det5_1=0, dir5_1=0, cri5_2=0, det5_2=0, dir5_2=0, cri5_3=0, det5_3=0, dir5_3=0, cri5_4=0, det5_4=0, dir5_4=0;
	var tc5, tde5, tdi5;
	
	if(list5_1 != ""){
		
		var cri = parseInt($("#materiaList5_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList5_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList5_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri5_1 = cri;
		}else if(det != 0){
			det5_1 = det;
		}else{
			dir5_1 = dir;
		}
	}
	
	if(list5_2 != ""){
			
			var cri = parseInt($("#materiaList5_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList5_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList5_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri5_2 = cri;
			}else if(det != 0){
				det5_2 = det;
			}else{
				dir5_2 = dir;
			}
	}
	
	if(list5_3 != ""){
		
		var cri = parseInt($("#materiaList5_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList5_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList5_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri5_3 = cri;
		}else if(det != 0){
			det5_3 = det;
		}else{
			dir5_3 = dir;
		}
	}
	
	if(list5_4 != ""){
			
			var cri = parseInt($("#materiaList5_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList5_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList5_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri5_4 = cri;
			}else if(det != 0){
				det5_4 = det;
			}else{
				dir5_4 = dir;
			}
		}
	
	tc5 = cri5_1 + cri5_2 + cri5_3 + cri5_4;
	tde5 = det5_1 + det5_2 + det5_3 + det5_4;
	tdi5 = dir5_1 + dir5_2 + dir5_3 + dir5_4;	
	
	// 여섯번째 ---------------------------------
	var cri6_1=0, det6_1=0, dir6_1=0, cri6_2=0, det6_2=0, dir6_2=0, cri6_3=0, det6_3=0, dir6_3=0, cri6_4=0, det6_4=0, dir6_4=0;
	var tc6, tde6, tdi6;
	
	if(list6_1 != ""){
		
		var cri = parseInt($("#materiaList6_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList6_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList6_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri6_1 = cri;
		}else if(det != 0){
			det6_1 = det;
		}else{
			dir6_1 = dir;
		}
	}
	
	if(list6_2 != ""){
			
			var cri = parseInt($("#materiaList6_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList6_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList6_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri6_2 = cri;
			}else if(det != 0){
				det6_2 = det;
			}else{
				dir6_2 = dir;
			}
	}
	
	if(list6_3 != ""){
		
		var cri = parseInt($("#materiaList6_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList6_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList6_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri6_3 = cri;
		}else if(det != 0){
			det6_3 = det;
		}else{
			dir6_3 = dir;
		}
	}
	
	if(list6_4 != ""){
			
			var cri = parseInt($("#materiaList6_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList6_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList6_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri6_4 = cri;
			}else if(det != 0){
				det6_4 = det;
			}else{
				dir6_4 = dir;
			}
		}
	
	tc6 = cri6_1 + cri6_2 + cri6_3 + cri6_4;
	tde6 = det6_1 + det6_2 + det6_3 + det6_4;
	tdi6 = dir6_1 + dir6_2 + dir6_3 + dir6_4;
	
	// 일곱번째 ---------------------------------
	var cri7_1=0, det7_1=0, dir7_1=0, cri7_2=0, det7_2=0, dir7_2=0, cri7_3=0, det7_3=0, dir7_3=0, cri7_4=0, det7_4=0, dir7_4=0;
	var tc7, tde7, tdi7;
	
	if(list7_1 != ""){
		
		var cri = parseInt($("#materiaList7_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList7_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList7_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri7_1 = cri;
		}else if(det != 0){
			det7_1 = det;
		}else{
			dir7_1 = dir;
		}
	}
	
	if(list7_2 != ""){
			
			var cri = parseInt($("#materiaList7_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList7_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList7_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri7_2 = cri;
			}else if(det != 0){
				det7_2 = det;
			}else{
				dir7_2 = dir;
			}
	}
	
	if(list7_3 != ""){
		
		var cri = parseInt($("#materiaList7_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList7_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList7_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri7_3 = cri;
		}else if(det != 0){
			det7_3 = det;
		}else{
			dir7_3 = dir;
		}
	}
	
	if(list7_4 != ""){
			
			var cri = parseInt($("#materiaList7_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList7_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList7_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri7_4 = cri;
			}else if(det != 0){
				det7_4 = det;
			}else{
				dir7_4 = dir;
			}
		}
	
	tc7 = cri7_1 + cri7_2 + cri7_3 + cri7_4;
	tde7 = det7_1 + det7_2 + det7_3 + det7_4;
	tdi7 = dir7_1 + dir7_2 + dir7_3 + dir7_4;
	
	// 여덟번째 ---------------------------------
	var cri8_1=0, det8_1=0, dir8_1=0, cri8_2=0, det8_2=0, dir8_2=0, cri8_3=0, det8_3=0, dir8_3=0, cri8_4=0, det8_4=0, dir8_4=0;
	var tc8, tde8, tdi8;
	
	if(list8_1 != ""){
		
		var cri = parseInt($("#materiaList8_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList8_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList8_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri8_1 = cri;
		}else if(det != 0){
			det8_1 = det;
		}else{
			dir8_1 = dir;
		}
	}
	
	if(list8_2 != ""){
			
			var cri = parseInt($("#materiaList8_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList8_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList8_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri8_2 = cri;
			}else if(det != 0){
				det8_2 = det;
			}else{
				dir8_2 = dir;
			}
	}
	
	if(list8_3 != ""){
		
		var cri = parseInt($("#materiaList8_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList8_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList8_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri8_3 = cri;
		}else if(det != 0){
			det8_3 = det;
		}else{
			dir8_3 = dir;
		}
	}
	
	if(list8_4 != ""){
			
			var cri = parseInt($("#materiaList8_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList8_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList8_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri8_4 = cri;
			}else if(det != 0){
				det8_4 = det;
			}else{
				dir8_4 = dir;
			}
		}
	
	tc8 = cri8_1 + cri8_2 + cri8_3 + cri8_4;
	tde8 = det8_1 + det8_2 + det8_3 + det8_4;
	tdi8 = dir8_1 + dir8_2 + dir8_3 + dir8_4;	
	
	// 아홉번째 ---------------------------------
	var cri9_1=0, det9_1=0, dir9_1=0, cri9_2=0, det9_2=0, dir9_2=0, cri9_3=0, det9_3=0, dir9_3=0, cri9_4=0, det9_4=0, dir9_4=0;
	var tc9, tde9, tdi9;
	
	if(list9_1 != ""){
		
		var cri = parseInt($("#materiaList9_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList9_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList9_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri9_1 = cri;
		}else if(det != 0){
			det9_1 = det;
		}else{
			dir9_1 = dir;
		}
	}
	
	if(list9_2 != ""){
			
			var cri = parseInt($("#materiaList9_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList9_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList9_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri9_2 = cri;
			}else if(det != 0){
				det9_2 = det;
			}else{
				dir9_2 = dir;
			}
	}
	
	if(list9_3 != ""){
		
		var cri = parseInt($("#materiaList9_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList9_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList9_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri9_3 = cri;
		}else if(det != 0){
			det9_3 = det;
		}else{
			dir9_3 = dir;
		}
	}
	
	if(list9_4 != ""){
			
			var cri = parseInt($("#materiaList9_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList9_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList9_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri9_4 = cri;
			}else if(det != 0){
				det9_4 = det;
			}else{
				dir9_4 = dir;
			}
		}
	
	tc9 = cri9_1 + cri9_2 + cri9_3 + cri9_4;
	tde9 = det9_1 + det9_2 + det9_3 + det9_4;
	tdi9 = dir9_1 + dir9_2 + dir9_3 + dir9_4;
	
	// 열번째 ---------------------------------
	var cri10_1=0, det10_1=0, dir10_1=0, cri10_2=0, det10_2=0, dir10_2=0, cri10_3=0, det10_3=0, dir10_3=0, cri10_4=0, det10_4=0, dir10_4=0;
	var tc10, tde10, tdi10;
	
	if(list10_1 != ""){
		
		var cri = parseInt($("#materiaList10_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList10_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList10_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri10_1 = cri;
		}else if(det != 0){
			det10_1 = det;
		}else{
			dir10_1 = dir;
		}
	}
	
	if(list10_2 != ""){
			
			var cri = parseInt($("#materiaList10_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList10_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList10_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri10_2 = cri;
			}else if(det != 0){
				det10_2 = det;
			}else{
				dir10_2 = dir;
			}
	}
	
	if(list10_3 != ""){
		
		var cri = parseInt($("#materiaList10_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList10_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList10_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri10_3 = cri;
		}else if(det != 0){
			det10_3 = det;
		}else{
			dir10_3 = dir;
		}
	}
	
	if(list10_4 != ""){
			
			var cri = parseInt($("#materiaList10_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList10_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList10_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri10_4 = cri;
			}else if(det != 0){
				det10_4 = det;
			}else{
				dir10_4 = dir;
			}
		}
	
	tc10 = cri10_1 + cri10_2 + cri10_3 + cri10_4;
	tde10 = det10_1 + det10_2 + det10_3 + det10_4;
	tdi10 = dir10_1 + dir10_2 + dir10_3 + dir10_4;	
	
	// 열한번째 ---------------------------------
	var cri11_1=0, det11_1=0, dir11_1=0, cri11_2=0, det11_2=0, dir11_2=0, cri11_3=0, det11_3=0, dir11_3=0, cri11_4=0, det11_4=0, dir11_4=0;
	var tc11, tde11, tdi11;
	
	if(list11_1 != ""){
		
		var cri = parseInt($("#materiaList11_1 option:selected").attr('value'));
		var det = parseInt($("#materiaList11_1 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList11_1 option:selected").attr('value3'));
		
		if(cri != 0){
			cri11_1 = cri;
		}else if(det != 0){
			det11_1 = det;
		}else{
			dir11_1 = dir;
		}
	}
	
	if(list11_2 != ""){
			
			var cri = parseInt($("#materiaList11_2 option:selected").attr('value'));
			var det = parseInt($("#materiaList11_2 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList11_2 option:selected").attr('value3'));
			
			if(cri != 0){
				cri11_2 = cri;
			}else if(det != 0){
				det11_2 = det;
			}else{
				dir11_2 = dir;
			}
	}
	
	if(list11_3 != ""){
		
		var cri = parseInt($("#materiaList11_3 option:selected").attr('value'));
		var det = parseInt($("#materiaList11_3 option:selected").attr('value2'));
		var dir = parseInt($("#materiaList11_3 option:selected").attr('value3'));
		
		if(cri != 0){
			cri11_3 = cri;
		}else if(det != 0){
			det11_3 = det;
		}else{
			dir11_3 = dir;
		}
	}
	
	if(list11_4 != ""){
			
			var cri = parseInt($("#materiaList11_4 option:selected").attr('value'));
			var det = parseInt($("#materiaList11_4 option:selected").attr('value2'));
			var dir = parseInt($("#materiaList11_4 option:selected").attr('value3'));
			
			if(cri != 0){
				cri11_4 = cri;
			}else if(det != 0){
				det11_4 = det;
			}else{
				dir11_4 = dir;
			}
		}
	
	tc11 = cri11_1 + cri11_2 + cri11_3 + cri11_4;
	tde11 = det11_1 + det11_2 + det11_3 + det11_4;
	tdi11 = dir11_1 + dir11_2 + dir11_3 + dir11_4;	
	
	var totalCri = tc1+tc2+tc3+tc4+tc5+tc6+tc7+tc8+tc9+tc10+tc11;
	var totalDet = tde1+tde2+tde3+tde4+tde5+tde6+tde7+tde8+tde9+tde10+tde11;
	var totalDir = tdi1+tdi2+tdi3+tdi4+tdi5+tdi6+tdi7+tdi8+tdi9+tdi10+tdi11;
	
	if(totalCri != 0){
		document.getElementById("cri2").innerHTML+= "+"+totalCri;
	}else{
		document.getElementById("cri2").innerHTML+= "";
	}
	
	if(totalDet != 0){
		document.getElementById("det2").innerHTML+= "+"+totalDet;
	}else{
		document.getElementById("det2").innerHTML+= "";
	}
	
	if(totalDir != 0){
		document.getElementById("dir2").innerHTML+= "+"+totalDir;
	}else{
		document.getElementById("dir2").innerHTML+= "";
	}
}

// 방패(부 무기)
function getShieldInfo() {
	getTotalValue();
	getShieldValue();
	getShieldValue();
	getItemLv();
} 

function getShieldValue() {
	
	var shieldList = document.getElementById("shieldList");
	var itemIcon = shieldList.options[document.getElementById("shieldList").selectedIndex].value;
	document.getElementById("shieldIcon").src = itemIcon;	
}


// 머리
function getHeadInfo() {
	getTotalValue();
	getHeadValue();
	getHeadMateria();
	getItemLv();
} 

function getHeadValue() {
	
	var headList = document.getElementById("headList");
	var itemIcon = headList.options[document.getElementById("headList").selectedIndex].value;
	document.getElementById("headIcon").src = itemIcon;
}


function getheadMateria() {
	
	$("#mateL2").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#headList option:selected").attr('value14');
	
		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList2_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL2").innerHTML += str; 
			}
}

//몸통
function getTopInfo() {
	getTotalValue();
	getTopValue();
	getTopMateria();
	getItemLv();
} 

function getTopValue() {
	
	var topList = document.getElementById("topList");
	var itemIcon = topList.options[document.getElementById("topList").selectedIndex].value;
	document.getElementById("topIcon").src = itemIcon;
}

function getTopMateria() {
	
	$("#mateL3").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#topList option:selected").attr('value14');
	
		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList3_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL3").innerHTML += str; 
			}	
}

//손
function getHandInfo() {
	getTotalValue();
	getHandValue();
	getHandMateria();
	getItemLv();
} 

function getHandValue() {
	
	var handList = document.getElementById("handList");
	var itemIcon = handList.options[document.getElementById("handList").selectedIndex].value;
	document.getElementById("handIcon").src = itemIcon;
}


function gethandMateria() {
	
	$("#mateL4").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#handList option:selected").attr('value14');
	
		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList4_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL4").innerHTML += str; 
			}	
}

// 다리
function getBottomsInfo() {
	getTotalValue();
	getBottomsValue();
	getBottomsMateria();
	getItemLv();
} 

function getBottomsValue() {
	
	var bottomsList = document.getElementById("bottomsList");
	var itemIcon = bottomsList.options[document.getElementById("bottomsList").selectedIndex].value;
	document.getElementById("bottomsIcon").src = itemIcon;
}


function getBottomsMateria() {
	
	$("#mateL5").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#bottomsList option:selected").attr('value14');

		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList5_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL5").innerHTML += str; 
		}	
}

// 발
function getFootInfo() {
	getTotalValue();
	getFootValue();
	getFootMateria();
	getItemLv();
} 

function getFootValue() {
	
	var footList = document.getElementById("footList");
	var itemIcon = footList.options[document.getElementById("footList").selectedIndex].value;
	document.getElementById("footIcon").src = itemIcon;
}


function getFootMateria() {
	
	$("#mateL6").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#footList option:selected").attr('value14');

		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList6_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL6").innerHTML += str; 
		}
}

// 귀
function getEarInfo() {
	getTotalValue();
	getEarValue();
	getEarMateria();
	getItemLv();
} 

function getEarValue() {
	
	var earList = document.getElementById("earList");
	var itemIcon = earList.options[document.getElementById("earList").selectedIndex].value;
	document.getElementById("earIcon").src = itemIcon;
}


function getEarMateria() {
	
	$("#mateL7").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#earList option:selected").attr('value14');

		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList7_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL7").innerHTML += str; 
			
	}	
}

// 목
function getNeckInfo() {
	getTotalValue();
	getNeckValue();
	getNeckMateria();
	getItemLv();
} 

function getNeckValue() {
	
	var neckList = document.getElementById("neckList");
	var itemIcon = neckList.options[document.getElementById("neckList").selectedIndex].value;
	document.getElementById("neckIcon").src = itemIcon;
}


function getNeckMateria() {
	
	$("#mateL8").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#neckList option:selected").attr('value14');

		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList8_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL8").innerHTML += str; 
	}	
}

// 팔
function getArmInfo() {
	getTotalValue();
	getArmValue();
	getArmMateria();
	getItemLv();
} 

function getArmValue() {
	
	var armList = document.getElementById("armList");
	var itemIcon = armList.options[document.getElementById("armList").selectedIndex].value;
	document.getElementById("armIcon").src = itemIcon;
}

function getArmMateria() {
	
	$("#mateL9").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#armList option:selected").attr('value14');
	
		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList9_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL9").innerHTML += str; 
	}	
}

// 손가락1
function getFingerInfo() {
	getTotalValue();
	getFingerValue();
	getFingerMateria();
	getItemLv();
} 

function getFingerValue() {
	
	var fingerList = document.getElementById("fingerList");
	var itemIcon = fingerList.options[document.getElementById("fingerList").selectedIndex].value;
	document.getElementById("fingerIcon").src = itemIcon;
}


function getFingerMateria() {
	
	$("#mateL10").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#fingerList option:selected").attr('value14');
	
		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList10_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL10").innerHTML += str; 
	}	
}

//손가락2
function getFingerInfo2() {
	getTotalValue();
	getFingerValue2();
	getFingerMateria2();
	getItemLv();
} 

function getFingerValue2() {
	
	var fingerList = document.getElementById("fingerList2");
	var itemIcon = fingerList.options[document.getElementById("fingerList2").selectedIndex].value;
	document.getElementById("fingerIcon2").src = itemIcon;
}


function getFingerMateria2() {
	
	$("#mateL11").empty();
	
	var jobCode = $("#jobCode option:selected").attr('value'); // 현재 선택한 잡에 따라 필요 마테리아를 걸러내기 위함
//	alert(jobCode);
	
	var materia = $("#fingerList2 option:selected").attr('value14');
	
		for( var i = 1; i <= materia; i++){	
			  var str = "";
			  str += "<select id='materiaList11_"+i+"' onchange='getMateValue();' style='border-radius:15px; width:206px; background-color: #393837; outline: none; color:white; border-color:white; padding:5px; margin-right:10px; margin-top:5px'>";
			  str += "<c:forEach items='${materiaList}' var='mate'>";
			  str += "<option value='${mate.cri}' value2='${mate.det}' value3='${mate.dir}'>";
			  str += "<c:if test='${mate.cri ne 0}'> ${mate.itemName} | 극대+${mate.cri} </c:if>";
			  str += "<c:if test='${mate.det ne 0}'> ${mate.itemName} | 의지+${mate.det} </c:if>";
		      str += "<c:if test='${mate.dir ne 0}'> ${mate.itemName} | 직격+${mate.dir} </c:if>";
			  str += "</option>"
			  str += "</c:forEach>";
			  str += "</select>";
			  document.getElementById("mateL11").innerHTML += str; 
	}	
}


</script>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

 


</style>
</head>
<body>
<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 300px; background-color: #393837; padding-bottom: 10px">
	
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 296px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	<hr style=" position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; top: 5px" width="270px">
	
	<div style="color: white; color: white; postion:relative; margin-top:-36px; margin-left:17px">조건 검색</div>
	
	<form id="searchForm" action="eqSim" style="color: white; padding-top:15px; padding-left:15px">
		<table style="border-spacing: 5px;">
			<tr>
				<td style="left: 10px">직업</td>
				<td>
				  <select id="jobCode" name="jobCode" style="height:35px; width:170px">
				  	<c:forEach items="${jobList}" var="job">
				    	<option value="${job.code}">
				    	${job.name}
				    	</option>
				    </c:forEach>
				  </select>
				</td>
			</tr>
			<tr>
				<td>레벨</td>
				<td>
					<input style="height: 25px; width: 50px" type="number" name="minLv" value="80" min="1" max="90">
					~
					<input style="height: 25px; width: 50px"" type="number" name="maxLv" value="90" min="1" max="90">
				</td>
			</tr>
			<tr>
				<td>아이템 레벨</td>
				<td>
					<input style="height: 25px; width: 50px" type="number" name="minItemLv" value="600" min="1" max="635">
					~
					<input style="height: 25px; width: 50px" type="number" name="maxItemLv" value="615" min="1" max="635">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input style="height:35px; width: 250px; background-color: #393837; color: white; margin-top:5px" value="확인" type="submit">
				</td>
			</tr>
		</table>
		</form>
</div>		

<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; position:relative;
	 box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset; width: 600px; background-color: #393837; 
	 padding-bottom: 30px; left: 309px; top: -230px">
	
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 596px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	<hr style=" position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; top: 5px" width="570px">

	<!-- 주 무기 -->	
	<div style="margin-top: 20px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="weaponList" onchange="getWeaponInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${weaponList}" var="weapon">
					<option value="${weapon.itemIcon}" value2="${weapon.strength}" value3="${weapon.dexterity}" value4="${weapon.vitality}" value5="${weapon.intelligence}"
							value6="${weapon.mind}" value7="${weapon.criticalHit}" value8="${weapon.determination}" value9="${weapon.directHitRate}"
							value10="${weapon.skillSpeed}" value11="${weapon.spellSpeed}" value12="${weapon.tenacity}" value13="${weapon.piety}" value14="${weapon.materia}" value15="itemDetail?itemId=${weapon.itemId}" value16="${weapon.itemLevel}">
					   [${weapon.jobLevel}/${weapon.itemLevel}] ${weapon.itemName}
					</option>
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 20px; margin-top: -65px">주 무기</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="weaponIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var weaponList = document.getElementById("weaponList");
			var itemIcon = weaponList.options[document.getElementById("weaponList").selectedIndex].value;
			document.getElementById("weaponIcon").src = itemIcon;
			</script>
		</div>	
			
		<input type="button" value="🔍︎" onclick="getWeaponDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:absolute; left:520px; top:69px; border: 0" >
		
		<div id="mateL" style="margin-left: 146px;"></div>
		<script type="text/javascript">
		getWeaponMateria();
		</script>
		</c:if>
		
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	
	</div>	
	
	
		<!-- 부 무기★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  -->	
	
	<div style="margin-top: 30px; height:45px">	
	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="shieldList" onchange="getShieldInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${shieldList}" var="shield">
					<option value="${shield.itemIcon}" value2="${shield.strength}" value3="${shield.dexterity}" value4="${shield.vitality}" value5="${shield.intelligence}"
							value6="${shield.mind}" value7="${shield.criticalHit}" value8="${shield.determination}" value9="${shield.directHitRate}"
							value10="${shield.skillSpeed}" value11="${shield.spellSpeed}" value12="${shield.tenacity}" value13="${shield.piety}" value14="${shield.materia}" value15="itemDetail?itemId=${shield.itemId}" value16="${shield.itemLevel}">
					   [${shield.jobLevel}/${shield.itemLevel}] ${shield.itemName} 
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 20px; margin-top: -65px">부 무기</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
		
		
		<c:if test="${jobCode eq 1 }">	
		<div style="margin-left:84px; margin-top:-42px; margin-bottom:-12px">	
			<img id="shieldIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var shieldList = document.getElementById("shieldList");
			var itemIcon = shieldList.options[document.getElementById("shieldList").selectedIndex].value;
			document.getElementById("shieldIcon").src = itemIcon;
			</script>
		</div>
		
		<input type="button" value="🔍︎" onclick="getShieldDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-33px; border: 0" >
		
	</c:if>
	</div>
	<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">

	
	<!-- 머리 ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  -->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="headList" onchange="getHeadInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${headList}" var="head">
					<option value="${head.itemIcon}" value2="${head.strength}" value3="${head.dexterity}" value4="${head.vitality}" value5="${head.intelligence}"
							value6="${head.mind}" value7="${head.criticalHit}" value8="${head.determination}" value9="${head.directHitRate}"
							value10="${head.skillSpeed}" value11="${head.spellSpeed}" value12="${head.tenacity}" value13="${head.piety}" value14="${head.materia}" value15="itemDetail?itemId=${head.itemId}" value16="${head.itemLevel}">
					   [${head.jobLevel}/${head.itemLevel}] ${head.itemName} 
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 30px; margin-top: -65px">머리</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
	
	
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="headIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var headList = document.getElementById("headList");
			var itemIcon = headList.options[document.getElementById("headList").selectedIndex].value;
			document.getElementById("headIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getHeadDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL2" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getheadMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	</div>	
	
	
	<!-- 몸통 ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  -->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="topList" onchange="getTopInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${topList}" var="top">
					<option value="${top.itemIcon}" value2="${top.strength}" value3="${top.dexterity}" value4="${top.vitality}" value5="${top.intelligence}"
							value6="${top.mind}" value7="${top.criticalHit}" value8="${top.determination}" value9="${top.directHitRate}"
							value10="${top.skillSpeed}" value11="${top.spellSpeed}" value12="${top.tenacity}" value13="${top.piety}" value14="${top.materia}" value15="itemDetail?itemId=${top.itemId}" value16="${top.itemLevel}">
					   [${top.jobLevel}/${top.itemLevel}] ${top.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 30px; margin-top: -65px">몸통</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
	
	
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="topIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var topList = document.getElementById("topList");
			var itemIcon = topList.options[document.getElementById("topList").selectedIndex].value;
			document.getElementById("topIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getTopDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		
		<div id="mateL3" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getTopMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">

	</div>	
	
	
	<!-- 손 ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  -->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="handList" onchange="getHandInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${handList}" var="hand">
					<option value="${hand.itemIcon}" value2="${hand.strength}" value3="${hand.dexterity}" value4="${hand.vitality}" value5="${hand.intelligence}"
							value6="${hand.mind}" value7="${hand.criticalHit}" value8="${hand.determination}" value9="${hand.directHitRate}"
							value10="${hand.skillSpeed}" value11="${hand.spellSpeed}" value12="${hand.tenacity}" value13="${hand.piety}" value14="${hand.materia}" value15="itemDetail?itemId=${hand.itemId}" value16="${hand.itemLevel}">
					   [${hand.jobLevel}/${hand.itemLevel}] ${hand.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 40px; margin-top: -65px">손</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
	
	
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="handIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var handList = document.getElementById("handList");
			var itemIcon = handList.options[document.getElementById("handList").selectedIndex].value;
			document.getElementById("handIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getHandDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL4" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		gethandMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	
	</div>	
	
	<!-- 다리 ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  -->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="bottomsList" onchange="getBottomsInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${bottomsList}" var="bottoms">
					<option value="${bottoms.itemIcon}" value2="${bottoms.strength}" value3="${bottoms.dexterity}" value4="${bottoms.vitality}" value5="${bottoms.intelligence}"
							value6="${bottoms.mind}" value7="${bottoms.criticalHit}" value8="${bottoms.determination}" value9="${bottoms.directHitRate}"
							value10="${bottoms.skillSpeed}" value11="${bottoms.spellSpeed}" value12="${bottoms.tenacity}" value13="${bottoms.piety}" value14="${bottoms.materia}" value15="itemDetail?itemId=${bottoms.itemId}" value16="${bottoms.itemLevel}">
					   [${bottoms.jobLevel}/${bottoms.itemLevel}] ${bottoms.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 30px; margin-top: -65px">다리</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
	
	
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="bottomsIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var bottomsList = document.getElementById("bottomsList");
			var itemIcon = bottomsList.options[document.getElementById("bottomsList").selectedIndex].value;
			document.getElementById("bottomsIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getBottomsDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL5" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getBottomsMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	
	</div>	
	
	<!-- 발 ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  -->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="footList" onchange="getFootInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${footList}" var="foot">
					<option value="${foot.itemIcon}" value2="${foot.strength}" value3="${foot.dexterity}" value4="${foot.vitality}" value5="${foot.intelligence}"
							value6="${foot.mind}" value7="${foot.criticalHit}" value8="${foot.determination}" value9="${foot.directHitRate}"
							value10="${foot.skillSpeed}" value11="${foot.spellSpeed}" value12="${foot.tenacity}" value13="${foot.piety}" value14="${foot.materia}" value15="itemDetail?itemId=${foot.itemId}" value16="${foot.itemLevel}">
					   [${foot.jobLevel}/${foot.itemLevel}] ${foot.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 40px; margin-top: -65px">발</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
	
	
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="footIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var footList = document.getElementById("footList");
			var itemIcon = footList.options[document.getElementById("footList").selectedIndex].value;
			document.getElementById("footIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getFootDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL6" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getFootMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	
	</div>	
	
	<!-- ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  귀걸이-->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="earList" onchange="getEarInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${earList}" var="ear">
					<option value="${ear.itemIcon}" value2="${ear.strength}" value3="${ear.dexterity}" value4="${ear.vitality}" value5="${ear.intelligence}"
							value6="${ear.mind}" value7="${ear.criticalHit}" value8="${ear.determination}" value9="${ear.directHitRate}"
							value10="${ear.skillSpeed}" value11="${ear.spellSpeed}" value12="${ear.tenacity}" value13="${ear.piety}" value14="${ear.materia}" value15="itemDetail?itemId=${ear.itemId}" value16="${ear.itemLevel}">
					   [${ear.jobLevel}/${ear.itemLevel}] ${ear.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 40px; margin-top: -65px">귀</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
	
	
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="earIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var earList = document.getElementById("earList");
			var itemIcon = earList.options[document.getElementById("earList").selectedIndex].value;
			document.getElementById("earIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getEarDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL7" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getEarMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	
	</div>	
	
	<!-- ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  목걸이-->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="neckList" onchange="getNeckInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${neckList}" var="neck">
					<option value="${neck.itemIcon}" value2="${neck.strength}" value3="${neck.dexterity}" value4="${neck.vitality}" value5="${neck.intelligence}"
							value6="${neck.mind}" value7="${neck.criticalHit}" value8="${neck.determination}" value9="${neck.directHitRate}"
							value10="${neck.skillSpeed}" value11="${neck.spellSpeed}" value12="${neck.tenacity}" value13="${neck.piety}" value14="${neck.materia}" value15="itemDetail?itemId=${neck.itemId}" value16="${neck.itemLevel}">
					   [${neck.jobLevel}/${neck.itemLevel}] ${neck.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 40px; margin-top: -65px">목</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
	
	
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="neckIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var neckList = document.getElementById("neckList");
			var itemIcon = neckList.options[document.getElementById("neckList").selectedIndex].value;
			document.getElementById("neckIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getNeckDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL8" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getNeckMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	
	</div>	
	
	<!-- ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  팔찌-->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="armList" onchange="getArmInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${armList}" var="arm">
					<option value="${arm.itemIcon}" value2="${arm.strength}" value3="${arm.dexterity}" value4="${arm.vitality}" value5="${arm.intelligence}"
							value6="${arm.mind}" value7="${arm.criticalHit}" value8="${arm.determination}" value9="${arm.directHitRate}"
							value10="${arm.skillSpeed}" value11="${arm.spellSpeed}" value12="${arm.tenacity}" value13="${arm.piety}" value14="${arm.materia}" value15="itemDetail?itemId=${arm.itemId}" value16="${arm.itemLevel}">
					   [${arm.jobLevel}/${arm.itemLevel}] ${arm.itemName}
					</option>
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 40px; margin-top: -65px">팔</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
			
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="armIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var armList = document.getElementById("armList");
			var itemIcon = armList.options[document.getElementById("armList").selectedIndex].value;
			document.getElementById("armIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getArmDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL9" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getArmMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	
	</div>	
	
	<!-- ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  반지1-->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="fingerList" onchange="getFingerInfo()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${fingerList}" var="finger">
					<option value="${finger.itemIcon}" value2="${finger.strength}" value3="${finger.dexterity}" value4="${finger.vitality}" value5="${finger.intelligence}"
							value6="${finger.mind}" value7="${finger.criticalHit}" value8="${finger.determination}" value9="${finger.directHitRate}"
							value10="${finger.skillSpeed}" value11="${finger.spellSpeed}" value12="${finger.tenacity}" value13="${finger.piety}" value14="${finger.materia}" value15="itemDetail?itemId=${finger.itemId}" value16="${finger.itemLevel}">
					   [${finger.jobLevel}/${finger.itemLevel}] ${finger.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 20px; margin-top: -65px">손가락</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="fingerIcon" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var fingerList = document.getElementById("fingerList");
			var itemIcon = fingerList.options[document.getElementById("fingerList").selectedIndex].value;
			document.getElementById("fingerIcon").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getFingerDetail()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL10" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getFingerMateria();
		</script>
		
		</c:if>
		<hr style=" position: relative; width: 550px; top:15px; background-color: #5b5a58; height: 2px; border: 0px">
	</div>	
	
	<!-- ★★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★ ★  반지2-->	
	<div style="margin-top: 30px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		
			<select id="fingerList2" onchange="getFingerInfo2()"  style="width: 420px; height: 30px; color: white; border-radius: 20px 20px; background-color: #393837; position: relative; 
					margin-left:146px; bottom: 40px; font-weight: normal; font-size: 18px; border-style: none; outline: none">
				<c:forEach items="${fingerList}" var="finger">
					<option value="${finger.itemIcon}" value2="${finger.strength}" value3="${finger.dexterity}" value4="${finger.vitality}" value5="${finger.intelligence}"
							value6="${finger.mind}" value7="${finger.criticalHit}" value8="${finger.determination}" value9="${finger.directHitRate}"
							value10="${finger.skillSpeed}" value11="${finger.spellSpeed}" value12="${finger.tenacity}" value13="${finger.piety}" value14="${finger.materia}" value15="itemDetail?itemId=${finger.itemId}" value16="${finger.itemLevel}">
					   [${finger.jobLevel}/${finger.itemLevel}] ${finger.itemName}
					</option>
			
				</c:forEach>
			</select>
		
		<div style="color: white; margin-left: 20px; margin-top: -65px">손가락</div>	
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:144px; margin-top: -28px "></div>
		
		<c:if test="${jobCode ne null }">
		
		<div style="margin-left:84px; margin-top:-42px">	
			<img id="fingerIcon2" border="1px" style="border-color:black; width: 50px; height: 50px; border-radius: 6px;" 
			src="">
			<script type="text/javascript">
			var fingerList2 = document.getElementById("fingerList2");
			var itemIcon2 = fingerList2.options[document.getElementById("fingerList2").selectedIndex].value;
			document.getElementById("fingerIcon2").src = itemIcon;
			</script>
		</div>	
		
		<input type="button" value="🔍︎" onclick="getFingerDetail2()" style="width: 25px; height: 25px; border-radius:20px; background-color:transparent;
		color:white; font-size: 20px; position:relative; left:520px; top:-45px; border: 0" >
		
		<div id="mateL11" style="margin-left: 146px; margin-top:-25px"></div>
		<script type="text/javascript">
		getFingerMateria2();
		</script>
		
		</c:if>
	</div>	
	
</div>	
	
	
	<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 300px; background-color: #393837; padding-bottom: 10px;
		 position:fixed; left:926px; top:8px">	 
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 296px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	<div style="color: white; margin-left:17px; margin-top:-17px">평균 레벨 <span id="level"></span></div>
	</div>
	<c:if test="${jobCode ne null }">
	<script type="text/javascript">getItemLv();</script>
	</c:if>
	
	<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 300px; background-color: #393837; padding-bottom: 10px;
		 position:fixed; left:926px; top:57px">
	
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 296px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	<hr style=" position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; top: 5px" width="270px">
	
	<div style="color: white; color: white; postion:relative; margin-top:-36px; margin-left:17px">능력치 합계</div>
	
	<div id="val">
	<div style="margin-left: 20px; margin-top: 20px; color: white;">
		힘<span style="margin-left: 100px" id="str"></span><span id="str2"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		민첩성<span style="margin-left: 68px" id="dex"></span><span id="dex2"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		활력<span style="margin-left: 84px" id="vit"></span><span id="vit2"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		지능<span style="margin-left: 84px" id="itg"></span><span id="itg2"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		정신력<span style="margin-left: 68px" id="mnd"></span><span id="mnd2"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		극대화<span style="margin-left: 68px; position: absolute;" id="cri"></span><span id="cri2" style="margin-left: 150px;"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		의지력<span style="margin-left: 68px; position: absolute;" id="det"></span><span id="det2" style="margin-left: 150px;"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		직격<span style="margin-left: 84px; position: absolute;" id="dir"></span><span id="dir2" style="margin-left: 166px;"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		기시속<span style="margin-left: 68px" id="sks"></span><span id="sks2"></span>
	</div>
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		마시속<span style="margin-left: 68px" id="sps"></span><span id="sps2"></span>
	</div>	
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		불굴<span style="margin-left: 84px" id="ten"></span><span id="ten2"></span>
	</div>	
	<div style="margin-left: 20px; margin-top: 5px; color: white;">
		신앙심<span style="margin-left: 68px" id="pie"></span><span id="pie2"></span>
	</div>
	<c:if test="${jobCode ne null }">
	<script type="text/javascript">getTotalValue();</script>
	</c:if>
	
	
	</div>
	
</div>
	
</body>
</html>