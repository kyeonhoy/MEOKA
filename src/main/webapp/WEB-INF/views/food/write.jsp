<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0047)profile.html -->
<html dir="ltr" lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>

<link href="/resources/css/recipeWrite.css" rel="stylesheet"
	type="text/css" media="all">

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<title>Tastebite - Category</title>
<link href="/assets/images/favicon.ico" rel="shortcut icon"
	type="image/x-icon">

<link href="../resources/css/tastebite-styles.css" rel="stylesheet"
	type="text/css" media="all">

<style>
.fileDrop {
	width: 160px;
	height: 120px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	overflow: hidden;
}

.fileDrop img {
	max-width: 100%;
	height: auto;
}
</style>

</head>
<body>

	<%@include file="../include/header.jsp"%>

	<!-- 여기까지 헤더부분. -->



	<!-- 헤더 옆 검색부분 -->

	<div class="container">
		<!--  콘텐츠 시작 -->
		<!-- 데이터 전송용 form 만들어줘야함!! -->

		<form method="post">


			<section class="tstbite-components my-4 my-md-5">
			
			<div class="bg-lightest-gray bg-custom">
					<!-- class="row mt-0 mt-md-5" -->
					<div class="col-md-12">
						<label style="font-size: 40px; font-weight: 600; margin-top: 5%; margin-bottom: 5%;">food</label>
						<ul class="list-unstyled component-list tstbite-svg">
							
							<h1>
								<input type='text' class="py-2 py-md-3 mb-0" name="foodName"
									placeholder='FoodName'
									style="width: 250px; height: 56px; margin-left: 92%;">
							</h1>
							
							
						</ul>
					</div>
				</div>
				</section>
				
				<div class="bg-lightest-gray bg-custom">
					<!-- class="row mt-0 mt-md-5" -->
					<div class="col-md-12">
						<label style="font-size: 40px; font-weight: 600; margin-top: 5%; margin-bottom: 5%;">type</label>
						<ul class="list-unstyled component-list tstbite-svg">
							
							<li><small>food type</small> <span> <select name="RANKNO">
										<option value="한식">한식</option>
										<option value="중식">중식</option>
										<option value="일식">일식</option>
										<option value="양식">양식</option>
								</select> <br />
							</span></li>
							
						</ul>
					</div>
				</div>

			
			<section class="tstbite-components my-4 my-md-5">
				<!-- 수정 필요. 밑에 form으로 -->
				<button id="submitButton"
					class="btn btn-lg btn-primary px-4 px-md-5 text-uppercase"
					type="submit">작성</button>
			</section>
		</form>
	</div>

	</section>
	<%@include file="../include/footer.jsp"%>

	<script src="../resources/js/bootstrap.bundle.min.js"
		type="text/javascript"></script>
	<script src="../resources/js/html5.min.js" type="text/javascript"></script>
	<script src="../resources/js/sticky.min.js" type="text/javascript"></script>
	<script src="../resources/js/swiper-bundle.min.js"
		type="text/javascript"></script>
	<script src="../resources/js/masonry.min.js" type="text/javascript"></script>
	<script src="../resources/js/tastebite-scripts.js"
		type="text/javascript"></script>
	<script defer="" src="../resources/js/beacon.min.js"
		data-cf-beacon="{&quot;rayId&quot;:&quot;6a50d6908fc02079&quot;,&quot;version&quot;:&quot;2021.10.0&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;9ae02b4a12234f118cf01e6f25c04e9d&quot;,&quot;si&quot;:100}"></script>


</body>
</html>