<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0053)search-result.html -->
<html dir="ko" lang="UTF-8">
<head>

<title>Tastebite - Search Result</title>

<link href="/resources/css/recipeList.css" rel="stylesheet"
	type="text/css" media="all">
<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>


<body>

	
	

		
		
		<section class="tstbite-components my-4 my-md-5">
				<h3 class="py-3 mb-0" id="title">Food type List</h3>
		
	<div class="search">
		   <select name="searchType" >
	         <option value="n"
	            <c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
	         <option value="t"
	            <c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>이름</option>
	         <option value="w"
	            <c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>유형</option>
	         <option value="tc"
	            <c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>이름+유형</option>
	      </select> 

			<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" placeholder="Search" class="input-group search-box"/>
	
			<button id="searchBtn" >검색</button>
		<script>
			$(function() {
				$('#searchBtn').click(
						function() {
							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword="
									+ encodeURIComponent($('#keywordInput')
											.val());
						});
			});
			
			
		</script>
	</div>
		
		<div class="container">

			<section class="tstbite-components my-4 my-md-5">
		
				<table>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>유형</th>
						</tr>
					<c:forEach items="${list}" var="item">
						<tr>
							<td>${item.foodNo}</td>
							<td>${item.foodName}</td>
							<td>${item.foodType}</td>
								<c:if test="${item.count1==0&&item.count2==0}">
						   		 	<td><a href = "/food/delete?foodNo=${item.foodNo}" class="btn btn-primary px-5" onclick="if(!confirm('삭제 하시겠습니까?')){return false;}">삭제</a></td>
						   		</c:if>	
						</tr>
					</c:forEach>
				</table>
				<div>
					<ul>
						<c:if test="${pageMaker.prev}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
						</c:if>
			
						<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
							var="idx">
							<a href="list${pageMaker.makeSearch(idx)}">[${idx}]</a>
						</c:forEach>
			
						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
						</c:if>
					</ul>
				</div>
			</section>
		</div>
	
	</section>
<%@include file="../include/footer.jsp"%>
	
</body>
</html>