<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이템 전체 리스트</title>

<style>
	.page_btn
	{
	display: inline;
	}

</style>

</head>
<body>

<div>
	<c:forEach items="${cateList2}" var="cate2">
		${cate2.cateName2}
	</c:forEach>
	<c:forEach items="${cateList3}" var="cate3">
		<a href="itemCategory?cateId3=${cate3.cateId3}">${cate3.cateName3}</a>
	</c:forEach>

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
<div style="margin-top: 20px">
	<ul style="list-style: none;">
			<c:if test="${pageMaker.prev}">
				<li class="page_btn"><a href="itemList?page=${pageMaker.nowPage-1}">이전</a></li>
			</c:if>
			
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="page_btn"><a href="itemList?page=${num}" style="text-decoration-line: none;">${num}</a></li>
			</c:forEach>
			
			<c:if test="${pageMaker.next}">
				<li class="page_btn"><a href="itemList?page=${pageMaker.nowPage+1}">다음</a></li>
			</c:if>	
		</ul>
</div>
</body>
</html>