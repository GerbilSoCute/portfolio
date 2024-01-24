<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<script>

//팝업 띄우기
function openPop() {
    document.getElementById("popup_layer").style.display = "block";

}

function openPop2() {
    document.getElementById("popup_layer2").style.display = "block";

}

//팝업 닫기
function closePop() {
    document.getElementById("popup_layer").style.display = "none";
}

function closePop2() {
    document.getElementById("popup_layer2").style.display = "none";
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
	
	<form action="eqSim" style="color: white; padding-top:15px; padding-left:15px">
		<table style="border-spacing: 5px;">
			<tr>
				<td style="left: 10px">직업</td>
				<td>
				  <select name="jobCode" style="height:35px; width:170px">
				  	<c:forEach items="${jobList}" var="job">
				    	<option style="background-image:url('https://img.finalfantasyxiv.com/lds/promo/h/V/NUXU4h6iXzF8HS4BxHKYf7vOa0.png');" value="${job.code}">
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

<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; 
	 box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 600px; height: 1080px; background-color: #393837; 
	 padding-bottom: 20px; position: relative; left: 310px; bottom: 225px">
	
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 596px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	<hr style=" position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; top: 5px" width="570px">
		
	<!-- 빈칸 이미지 주무기 -->	
	<div style="position: relative; top: 20px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
	</div>	
	<div style="color: white; margin-left: 20px; margin-top: -9px">주 무기</div>
	
	<!-- 빈칸 이미지 부무기 -->	
	<div style="position: relative; top: 50px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">부 무기</div>
	</div>	
	
	<!-- 빈칸 이미지 머리 -->	
	<div style="position: relative; top: 100px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop2()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">머리</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 150px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">몸통</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 200px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">손</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 250px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">다리</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 300px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">발</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 350px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">귀걸이</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 400px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">목걸이</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 450px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">팔찌</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 500px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">반지</div>
	</div>	
	
	<!-- 빈칸 이미지 몸통 -->	
	<div style="position: relative; top: 550px">	
		<div style="border-color:black; width: 50px; height: 50px; margin-left: 85px; border-radius: 6px; box-shadow: 0px 2px 5px black;"> 
		</div>
		<a href="javascript:openPop()">
		<div style="border: 2px outset; border-radius: 20px 20px; border-color:black; width: 420px; height: 30px;
			 margin-left:146px; margin-top: -40px "></div>
		</a>
		<div style="color: white; margin-left: 20px; margin-top: -29px">반지</div>
	</div>	
	
	
	
	
		<c:if test="${jobCode ne null }">
		
		<div style="margin-top:-420px">
			<div style="margin-left: 160px; margin-top: -20px; color: white;">
				[${maxWeapon.jobLevel}/${maxWeapon.itemLevel}] ${maxWeapon.itemName}
			</div>
			
			<img border="1px" style="border-color:black; width: 50px; height: 50px; position: relative; left: 84px; top:-38px; border-radius: 6px; box-shadow: 0px 2px 5px black;" src="${maxWeapon.itemIcon}">
		</div>

<div class="popup_layer" id="popup_layer" style="display: none; margin-top:-40px">
  <div class="popup_box">
      <div style="height: 10px; width: 375px; float: top;">
      </div>
      	
<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 600px; background-color: #393837; padding-bottom: 20px">
	
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 596px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	<hr style=" position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; top: 5px" width="570px">
      	
		<table style="margin-top: -45px">
		<thead>
			<tr style="color: white; height: 35px;">
				<td><span style="margin-left: 15px">아이템</span></td>
				<td><span style="float: right;">아이템 레벨</span></td>
				<td><span style="margin-left: 70px">착용 레벨</span></td>
			</tr>
		</thead>
			
		<tbody style="position: relative; top: 15px">
			<c:forEach items="${weaponList}" var="wea">
				<tr height="65px" style="color: white;"> <!-- pk넘버 어떻게 할지 고민해보기 -->
					<td><img border="1px" style="border-color:black; width: 50px; height: 50px; margin-left: 15px; border-radius: 6px; box-shadow: 0px 2px 5px black;" src="${wea.itemIcon}"> 
						<a href="itemDetail?itemId=${wea.itemId}" 
						style="color: white; text-decoration-line: none; position: relative; bottom: 18px; left: 10px">${wea.itemName}</a>
					</td>
					<td><span style="float: right;">${wea.itemLevel}</span></td>
					<td><span style="float: right;">${wea.jobLevel}</span></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
		 <a href="javascript:closePop();">
        <div style="border: 2px solid; border-radius: 20px 20px; width: 20px; height: 20px;
        position: relative; left: 500px; left: 565px; bottom:432px; color: #C8AD6B; text-decoration: none"></div>
        </a>	      
  </div>
</div>
</div>

<div style="margin-top: 116px">
			<div style="margin-left: 160px; margin-top: -20px; color: white;">
				[${maxHead.jobLevel}/${maxHead.itemLevel}] ${maxHead.itemName}
			</div>
			
			<img border="1px" style="border-color:black; width: 50px; height: 50px; position: relative; left: 84px; top:-38px; border-radius: 6px; box-shadow: 0px 2px 5px black;" src="${maxHead.itemIcon}">
		</div>

<div class="popup_layer" id="popup_layer2" style="display: none; margin-top:-40px">
  <div class="popup_box">
      <div style="height: 10px; width: 375px; float: top;">
      </div>
      	
<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 600px; background-color: #393837; padding-bottom: 20px">
	
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 596px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	<hr style=" position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; top: 5px" width="570px">
      	
		<table style="margin-top: -45px">
		<thead>
			<tr style="color: white; height: 35px;">
				<td><span style="margin-left: 15px">아이템</span></td>
				<td><span style="float: right;">아이템 레벨</span></td>
				<td><span style="margin-left: 70px">착용 레벨</span></td>
			</tr>
		</thead>
			
		<tbody style="position: relative; top: 15px">
			<c:forEach items="${headList}" var="head">
				<tr height="65px" style="color: white;"> <!-- pk넘버 어떻게 할지 고민해보기 -->
					<td><img border="1px" style="border-color:black; width: 50px; height: 50px; margin-left: 15px; border-radius: 6px; box-shadow: 0px 2px 5px black;" src="${head.itemIcon}"> 
						<a href="itemDetail?itemId=${head.itemId}" 
						style="color: white; text-decoration-line: none; position: relative; bottom: 18px; left: 10px">${head.itemName}</a>
					</td>
					<td><span style="float: right;">${head.itemLevel}</span></td>
					<td><span style="float: right;">${head.jobLevel}</span></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
		 <a href="javascript:closePop2();">
        <div style="border: 2px solid; border-radius: 20px 20px; width: 20px; height: 20px;
        position: relative; left: 500px; left: 565px; bottom:233px; color: #C8AD6B; text-decoration: none"></div>
        </a>	      
  </div>
</div>
</div>

</c:if>
		

</div>
	
</body>
</html>