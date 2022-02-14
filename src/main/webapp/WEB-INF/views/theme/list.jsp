<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>
<!DOCTYPE html>
<!-- saved from url=(0053)search-result.html -->
<html dir="ko" lang="UTF-8">
<head>
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


<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>

<title>Tastebite - Search Result</title>


</head>
<body>

	

		
		<div class="container">

		
				<h5 class="py-3 mb-0">Search results</h5>
				


		
	</div>
				 	<div class="search">
	   <select name="searchType" >
         <option value="n"
            <c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
         <option value="t"
            <c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>테마 이름</option>
         <option value="w"
            <c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>테마 종류</option>
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
				 
				 
				 
				 
				 
				 
				<div class="">
				<table>
						<tr>
								<th>번호</th>
								<th>이름</th>
								<th>주제</th>
						</tr>
				<script>
				
				
				
				
				</script>
				<c:forEach items="${list}" var="item">
							<tr>
								<td>${item.themeNo}</td>
								<td>${item.themeName}</td>
								<td>${item.themeType}</td>

    								<c:if test="${item.count == 0}">
										<td>
											<a href="/theme/delete?themeNo=${item.themeNo}"class="btn btn-primary px-5">테마 삭제</a>
										</td>
							    	</c:if>
							    	 <c:if test="${item.count != 0}">
										<td>
											<a class="btn btn-primary px-5">삭제 불가</a>
										</td>
							    	</c:if>
							</tr>
				</c:forEach>
				</table>
					+
				</div>
					<div>
	</div>
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
			</section>
			
		</div>



	
</body>

<%@include file="../include/footer.jsp"%>
</html>