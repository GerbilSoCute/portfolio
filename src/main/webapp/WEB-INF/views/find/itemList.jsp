<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>

function dp_menu1(){
    let click = document.getElementById("drop1");
    
    if(click.style.display === "none"){
        click.style.display = "block";
    }else{
        click.style.display = "none";
    }
}

function dp_menu2(){
	 let click = document.getElementById("drop2");
    
    if(click.style.display === "none"){
        click.style.display = "block";
    }else{
        click.style.display = "none";
    }
}

function dp_menu3(){
	 let click = document.getElementById("drop3");
    
    if(click.style.display === "none"){
        click.style.display = "block";
    }else{
        click.style.display = "none";
    }
}     

</script>
<head>
<meta charset="UTF-8">
<title>아이템 전체 리스트</title>

<style>
	.page_btn
	{
	display: inline;
	}
	
.dropdown{
    position: relative;
    display: inline-block;
    border: 3px solid; 
    border-radius:10px; 
    border-color: #C8AD6B; 
    box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; 
    background-color: #393837; 
    width: 192px;
}
.button{
   padding: 10px;  
   color: white;
   font-size:20px;
   text-align: center;
}
.button a{
	text-decoration: none;
	color: white;
}
#drop1, #drop2, #drop3{
    position: absolute;
    z-index: 1;
    color: white;
}
#drop1 a, #drop2 a, #drop3 a{
    display:block;
    font-size: 20px;
    text-align: center;
    background-color: #dfdfdf;
    color: black;
    text-decoration: none;
    padding: 10px 36px;
    margin: 2px 0px 0px 0px;
    width: 120px;
}

</style>
</head>
<body>
<div style="margin:auto;">
<div style="padding: 10px 0px 10px 0px; text-align: center;">

	<div class="dropdown">
        <div onclick="dp_menu1()" class="button">
			<a href="itemList?category2=1">${weaponList2}</a>
        </div>
        <div style="display: none;" id="drop1">
            <c:forEach items="${weaponList3}" var="weapon">
			<a href="itemList?category2=1&category3=${weapon.category3}">${weapon.cateName3}</a>
			</c:forEach>
        </div>
    </div>
    
    <div class="dropdown">
        <div onclick="dp_menu2()" class="button">
			<a href="itemList?category2=3">${armorList2}</a>
        </div>
        <div style="display: none;" id="drop2">
            <c:forEach items="${armorList3}" var="armor">
			<a href="itemList?category2=3&category3=${armor.category3}">${armor.cateName3}</a>
			</c:forEach>
        </div>
    </div>
    
    <div class="dropdown">
        <div onclick="dp_menu3()" class="button">
			<a href="itemList?category2=4">${acceList2}</a>
        </div>
        <div style="display: none;" id="drop3">
            <c:forEach items="${acceList3}" var="acce">
			<a href="itemList?category2=4&category3=${acce.category3}">${acce.cateName3}</a>
			</c:forEach>
        </div>
    </div>
</div>

<div style="border: 3px solid; border-radius:10px; border-color: #C8AD6B; box-shadow: 0px 0px 2px 2px, 0px 0px 0px 2px inset ; width: 600px; background-color: #393837; padding-bottom: 20px;
margin:auto;">
	
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
			<c:forEach items="${itemList}" var="item">
				<tr height="65px" style="color: white;"> <!-- pk넘버 어떻게 할지 고민해보기 -->
					<td><img border="1px" style="border-color:black; width: 50px; height: 50px; margin-left: 15px; border-radius: 6px; box-shadow: 0px 2px 5px black;" src="${item.itemImg}"> 
						<a href="itemDetail?itemId=${item.itemId}" 
						style="color: white; text-decoration-line: none; position: relative; bottom: 18px; left: 10px">${item.itemName}</a>
					</td>
					<td><span style="float: right;">${item.itemLevel}</span></td>
					<td><span style="float: right;">${item.jobLevel}</span></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>	
<div style="margin-top: 20px; text-align: center;" id="PageMaker">
	<ul style="list-style: none;">
	
	<c:choose>
		<c:when test="${currCate2 ne null && currCate3 eq null}">
			<c:if test="${pageMaker.prev}">
				<li class="page_btn"><a href="itemList?category2=${currCate2}&page=${pageMaker.nowPage-1}" style="text-decoration-line: none;color: black;"><</a></li>
			</c:if>
		</c:when>
		<c:when test="${currCate2 ne null && currCate3 ne null}">
			<c:if test="${pageMaker.prev}">
				<li class="page_btn"><a href="itemList?category2=${currCate2}&category3=${currCate3}&page=${pageMaker.nowPage-1}" style="text-decoration-line: none;color: black;"><</a></li>
			</c:if>
		</c:when>
		<c:otherwise>
			<c:if test="${pageMaker.prev}">
				<li class="page_btn"><a href="itemList?page=${pageMaker.nowPage-1}" style="text-decoration-line: none;color: black;"><</a></li>
			</c:if>
		</c:otherwise>
	</c:choose>

	<c:choose>
		<c:when test="${currCate2 ne null && currCate3 eq null}">
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="page_btn"><a href="itemList?category2=${currCate2}&page=${num}" style="text-decoration-line: none;color: black;">${num}</a></li>
			</c:forEach>
		</c:when>
		
		<c:when test="${currCate2 ne null && currCate3 ne null}">
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="page_btn"><a href="itemList?category2=${currCate2}&category3=${currCate3}&page=${num}" style="text-decoration-line: none;color: black;">${num}</a></li>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="page_btn"><a href="itemList?page=${num}" style="text-decoration-line: none;color: black;">${num}</a></li>
			</c:forEach>
		</c:otherwise>
	</c:choose>	
			
	<c:choose>
		<c:when test="${currCate2 ne null && currCate3 eq null}">
			<c:if test="${pageMaker.next}">
				<li class="page_btn"><a href="itemList?category2=${currCate2}&page=${pageMaker.nowPage+1}" style="text-decoration-line: none;color: black;">></a></li>
			</c:if>
		</c:when>
		<c:when test="${currCate2 ne null && currCate3 ne null}">
			<c:if test="${pageMaker.next}">
				<li class="page_btn"><a href="itemList?category2=${currCate2}&category3=${currCate3}&page=${pageMaker.nowPage+1}" style="text-decoration-line: none;color: black;">></a></li>
			</c:if>
		</c:when>
		<c:otherwise>		
			<li class="page_btn"><a href="itemList?page=${pageMaker.nowPage+1}" style="text-decoration-line: none;color: black;">></a></li>
		</c:otherwise>
	</c:choose>

	</ul>
</div>
</div>
</body>
</html>