<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>

<div class="basic" style="margin-left: 15px"></div>
<style>
	.basic{
		margin-left: 15px;
	}
	
	.font{
		color: #ada9a3
	}
	
	.font1{
		color: white;
	}
	
	.gr{
		#393837
	}
	
	.baseD_right{
		position: relative; 
		right: 150px;
	}
	
	.baseD_left{
		position: relative; 
		right: 15px; 
		bottom: 105px;
	}
	
	.baseD_right2{
		position: relative; 
		right: 150px;
		top: -105px;
	}
	
	.baseD_left2{
		position: relative; 
		right: 15px; 
		top: 1px;
	}
	
	.baseD_share{
		font-size: 25px; 
		color :white; 
		position: relative; 
		bottom: 25px;
	}
	
	.baseD_Color{
	
		color: #ccc5a2;
	}
	
	.materia_icon{
		
	
	}
	

</style>


</head>
<body>
	<table>
	<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 500px; height: 550px; background-color: #393837">
	
	<div style="background: linear-gradient(gray, #393837); border-radius:7px 7px 0px 0px; width: 496px; height: 25px; margin-top: 2px; margin-left: 2px"></div>
	
	<div style="height: 110px">
		<div style="width: 130px">
			<img src="${itemDetailInfo.itemIcon}" width="100" height="100" style="border-radius: 13px;
		 	box-shadow: 0px 2px 5px; margin-left: 15px"  border="2px">
		 </div>
		<div style=" width: 370px; position: relative; bottom: 85px; left: 135px;">
			<h3 class="font1">${itemDetailInfo.itemName}</h3>
		</div>
	</div>
		
	<div class="font1" style="margin-left: 15px; height: 50px;">
		${category3}
	</div>
	
	<div style="height: 70px; position: relative; bottom: 40px; text-align: right;">
		
			<c:if test="${itemDetailInfo.physicalDamage ne 0}">
				<div class="baseD_right">
					<p class="baseD_Color">물리 기본 성능</p>
					<p class="baseD_share">${itemDetailInfo.physicalDamage}</p>
				</div>
			</c:if>
			
			<c:if test="${itemDetailInfo.magicDamage ne 0}">
				<div class="baseD_right">
					<p class="baseD_Color">마법 기본 성능</p>
					<p class="baseD_share">${itemDetailInfo.magicDamage}</p>
				</div>
			</c:if>
			
			<c:if test="${itemDetailInfo.blockStrength ne 0}">
				<div class="baseD_right">
					<p class="baseD_Color">방패 막기 발동력</p>
					<p class="baseD_share">${itemDetailInfo.blockStrength}</p>
				</div>
			</c:if>
			
			<c:if test="${itemDetailInfo.blockRate ne 0}">
				<div class="baseD_left">
					<p class="baseD_Color">방패 막기 성능</p>
					<p class="baseD_share">${itemDetailInfo.blockRate}</p>
				</div>
			</c:if>
			
			<c:if test="${itemDetailInfo.defence ne 0}">
				<div class="baseD_left2">
					<p class="baseD_Color">물리 방어력</p>
					<p class="baseD_share">${itemDetailInfo.defence}</p>
				</div>
			</c:if>
			
			<c:if test="${itemDetailInfo.magicDefence ne 0}">
				<div class="baseD_right2">
					<p class="baseD_Color">마법 방어력</p>
					<p class="baseD_share">${itemDetailInfo.magicDefence}</p>
				</div>	
			</c:if>
			
			<c:if test="${itemDetailInfo.delay ne 0}">
				<div class="baseD_left">
					<p class="baseD_Color">공격 주기</p>
					<p class="baseD_share">${itemDetailInfo.delay}</p>
				</div>
			</c:if>
	</div>
	
	<div style="position: relative; bottom: 59px; background-color: #5b5a58; width: 130px; height: 6px; border-radius: 3px 3px 3px 3px; left: 220px"></div>
	<div style="position: relative; bottom: 64px; background-color: #5b5a58; width: 130px; height: 6px; border-radius: 3px 3px 3px 3px; left: 360px"></div>
	
	<div style="position: relative; bottom: 60px; height:20px; background-color: black">
		<span style="margin-left: 15px; color: white;">아이템 레벨 ${itemDetailInfo.itemLevel}</span>
	</div>
	<div style="position: relative; bottom: 60px; height: 50px">
		<span style="margin-left: 15px; color: #61b361">${itemDetailInfo.itemJob}</span>
		<p style="position: relative; color: #61b361; bottom: 15px; margin-left: 15px">레벨 ${itemDetailInfo.jobLevel} 이상</p>
	</div>
	
	<div style="position: relative; bottom: 60px;">
		<span style="margin-left: 15px; color: #ada9a3">추가 능력치</span>
	</div>
	<hr style="position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; bottom: 68px"; width="470px">
	
	<div style="position: relative; color: white; bottom: 77px; left: 20px">
		<c:if test="${itemDetailInfo.strength ne 0}">
			힘 +${itemDetailInfo.strength}
		</c:if>
		<c:if test="${itemDetailInfo.dexterity ne 0}">
			민첩성 +${itemDetailInfo.dexterity}
		</c:if>
		<c:if test="${itemDetailInfo.vitality ne 0}">
			활력 +${itemDetailInfo.vitality}
		</c:if>
		<c:if test="${itemDetailInfo.intelligence ne 0}">
			지능 +${itemDetailInfo.intelligence}
		</c:if>
		<c:if test="${itemDetailInfo.mind ne 0}">
			정신력 +${itemDetailInfo.mind}
		</c:if>
		<c:if test="${itemDetailInfo.criticalHit ne 0}">
			극대화 +${itemDetailInfo.criticalHit}
		</c:if>
		<c:if test="${itemDetailInfo.determination ne 0}">
			의지력 +${itemDetailInfo.determination}
		</c:if>
		<c:if test="${itemDetailInfo.directHitRate ne 0}">
			직격 +${itemDetailInfo.directHitRate}
		</c:if>
		<c:if test="${itemDetailInfo.skillSpeed ne 0}">
			기술 시전 속도 +${itemDetailInfo.skillSpeed}
		</c:if>
		<c:if test="${itemDetailInfo.spellSpeed ne 0}">
			마법 시전 속도 +${itemDetailInfo.spellSpeed}
		</c:if>
		<c:if test="${itemDetailInfo.tenacity ne 0}">
			불굴 +${itemDetailInfo.tenacity}
		</c:if>
		<c:if test="${itemDetailInfo.piety ne 0}">
			신앙심 +${itemDetailInfo.piety}
		</c:if>
	</div>
	
	<div style=" margin-left: 15px; color: #ada9a3; margin-top: -40px">마테리아</div>
	
	<hr style="position: relative; background-color: #5b5a58; height: 3px; border: 0px; box-shadow: 0px -1px 1px; bottom: 9px; width: 470px">
	
	<div style="margin-left: 15px; margin-top: -15px">
		<c:forEach begin="1" end="${itemDetailInfo.materia}">
			<img src="//image.ff14.co.kr/html2/guide/img/materia.png">
		</c:forEach>
		<c:if test="${itemDetailInfo.materia eq 0}">
			<span style="color: white;">마테리아를 장착할 수 없습니다.</span>
		</c:if>
	</div>
	
	<div>
		${itemDetailInfo.relicWp}
	</div>
</div>
	</table>
</body>
</html>