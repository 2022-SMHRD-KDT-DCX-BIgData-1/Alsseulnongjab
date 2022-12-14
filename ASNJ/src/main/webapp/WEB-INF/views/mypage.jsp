<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>마이페이지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="resources/image/Tab-icon.png" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->

<!-- 본문 탭 active -->
<style type="text/css">
.note-tab:active {
	color: #50D050 !important;
}
</style>

<script type="text/javascript">
	function Delete(mem_pk){
		location.href="MemberDelet.do?mem_pk="+mem_pk;
		}
	function QDel(ques_pk, mem_pk){
		location.href="QuestionDelete.do?ques_pk="+ques_pk+"&mem_pk="+mem_pk;
		}
</script>
</head>

<body>
	<div class="sticky-top">
		<!-- 헤더 시작 -->
		<jsp:include page="layout/top.jsp" />
		<!-- 헤더 끝 -->
	
		<!-- Full Screen Search Start -->
		<div class="modal fade" id="searchModal" tabindex="-1">
			<div class="modal-dialog modal-fullscreen">
				<div class="modal-content" style="background: rgba(29, 40, 51, 0.8);">
					<div class="modal-header border-0">
						<button type="button" class="btn bg-white btn-close"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div
						class="modal-body d-flex align-items-center justify-content-center">
						<div class="input-group" style="max-width: 600px;">
							<input type="text"
								class="form-control bg-transparent border-light p-3"
								placeholder="Type search keyword">
							<button class="btn btn-light px-4">
								<i class="bi bi-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Full Screen Search End -->
	
		<!-- 카테고리 시작 -->
		<div class="container-xxl py-5 bg-primary hero-header mb-0"
			style="padding-top: 2rem !important; padding-bottom: 2rem !important; max-width: none;">
			<div class="container-xxl position-relative p-0" style="margin-right: 0px; max-width: inherit;">
				<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"
					style="bottom: 0px;">
					<a href="index.jsp" class="navbar-brand p-0">
						<h4 class="m-0 text-white" style="font-style: italic;">
							<i class="fa me-3"></i> 알쓸농잡
						</h4>
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
						<span class="fa fa-bars"></span>
					</button>
					<c:choose>
					<%-- 로그인 안 했을 때 --%>
					<c:when test="${empty loginMember}">
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a>
							<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충	분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do?disease_crops=고추" class="dropdown-item">병(病) 피해</a>
									<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link">커뮤니티</a> 
						</div>
					</div>
					</c:when>
					<c:otherwise>
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a>
							<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충	분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do?disease_crops=고추" class="dropdown-item">병(病) 피해</a>
									<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link">커뮤니티</a> 
							<a href="${cpath}/Mypage.do?mem_pk=${loginMember.mem_pk}" class="nav-item nav-link active">마이페이지</a>
							<c:if test="${loginMember.mem_user_job eq '관리자'}">
							<a href="${cpath}/UserInfo.do" class="nav-item nav-link">회원정보 관리</a>
							</c:if>
						</div>
					</div>
					</c:otherwise>
					</c:choose>
				</nav>
			</div>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 마이페이지 시작 -->
	<div class="container-xxl bg-white p-0"	style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid p-4 px-4">
			<div style="margin-left: 10%;">
				<div class="mx-auto" style="width: 320px;">
					<div id="underline">
						<h3 style="margin-bottom: 0px;">${loginMember.mem_user_name}님 마이페이지</h3>
					</div>
				</div>
			</div>	
		</div>
	</div><br>
			
			<!-- 마이페이지 탭 시작  -->
			<div class="container-xxl bg-white" style="display: flex; justify-content: center; align-items: center;">
				<div class="container-fluid pt-4 px-4">
					<ul class="nav nav-tabs nav-justified nav-pills nav-fill">
						<li class="nav-item">
							<a class="nav-link active"	data-bs-toggle="tab" href="#info">
								<h4 class="note-tab" style="color: currentcolor;"><i class="bi bi-file-lock2"></i>&nbsp;개인정보</h4></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-bs-toggle="tab" href="#actlist">
								<h4 class="note-tab" style="color: currentcolor;"><i class="bi bi-clipboard-data"></i>&nbsp;활동내역</h4>
							</a>
						</li>
					</ul>
					<div class="tab-content">
						<!-- 개인정보 시작 -->
						<div class="container tab-pane active" id="info" style="width: 100%; height: auto;">
							<br>
							<form action="${cpath}/MypageInfo.do" method="post" style="margin-left: 15%; margin-right: 15%;">
							<input type="hidden" name="mem_pk" value="${loginMember.mem_pk}">
								<table class="table table-bordered caption-top"	style="vertical-align: middle;">
									<thead class="table table-light">
										<th>아이디</th>
										<th>${loginMember.mem_user_id}</th> <!-- 아이디값 받을 곳 -->
									</thead>
									<tbody>
										<!-- 닉네임  -->
										<tr>
											<td>닉네임</td>
											<td>${loginMember.mem_user_name}</td>
										</tr>
										<!-- 수정할 닉네임  -->
										<tr>
											<td>수정할 닉네임</td>
											<td>
												<input type="text" name="mem_user_name" value="${loginMember.mem_user_name}" class="form-control" placeholder="수정할 닉네임을 적어주세요" aria-label="Recipient's username1" aria-describedby="button-addon1">
												<!-- <button class="btn btn-success" type="submit" id="button-addon1">수정하기</button></td> -->
										</tr>
										<!-- 비밀번호  -->
										<tr>
											<td>비밀번호</td>
											<td><input type="password" value="${loginMember.mem_user_pw}" style="border: none;" disabled/></td>
										</tr>
										<!-- 수정할 비밀번호 -->
										<tr>
											<td>수정할 비밀번호</td>
											<td><input type="password" name="mem_user_pw" value="${loginMember.mem_user_pw}" class="form-control" placeholder="수정할 비밀번호를 적어주세요" aria-label="Recipient's username2" aria-describedby="button-addon2"/></td>
										</tr>
										<%--<!-- 비밀번호 재확인 -->
										<tr>
											<td>비밀번호 재확인</td>
											<td>
												<input type="text" class="form-control" placeholder="비밀번호 재확인" aria-label="Recipient's username3" aria-describedby="button-addon3">
												<!-- <button class="btn btn-success" type="submit" id="button-addon3">수정하기</button></td> -->
										</tr> --%>
										<!-- 사용자 -->
										<tr>
											<td>사용자</td>
											<td>
											<c:choose>
											<c:when test="${loginMember.mem_user_job eq '농부'}">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mem_user_job" id="inlineRadio1" value="농부" checked> 
													<label class="form-check-label"	for="inlineRadio1">농부</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mem_user_job" id="inlineRadio2" value="홈가드닝">
													<label class="form-check-label"	for="inlineRadio2">홈가드닝</label>
												</div>
											</c:when>
											<c:otherwise>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mem_user_job" id="inlineRadio1" value="농부"> 
													<label class="form-check-label"	for="inlineRadio1">농부</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mem_user_job" id="inlineRadio2" value="홈가드닝" checked>
													<label class="form-check-label"	for="inlineRadio2">홈가드닝</label>
												</div>
											</c:otherwise>
											</c:choose>
											</td>
										</tr>
									</tbody>
								</table>
								<!-- send -->
								<div style="display:flex; justify-content: center; align-items: center;">
									<button class="btn btn-success" style="width:100px; " type="submit" id="button-addon4"><i class="bi bi-inboxes"></i>&nbsp;저장</button>
									&nbsp; &nbsp;&nbsp; &nbsp;
									<button class="btn btn-success" type="submit" id="button-addon5"><i class="bi bi-emoji-frown"></i>&nbsp;회원탈퇴</button>
								</div>
							</form>
						</div>
						<br>
						<!-- 개인정보 끝 -->

						<!-- 활동내역 시작  -->
						<div id="actlist" class="container tab-pane fade">
							<div class="container-xxl p-0" style="display: flex; justify-content: center; align-items: center;">
							
								<!-- 문의사항 시작 -->
								<div class="container-fluid pt-4 px-4">
									<h3><i class="bi bi-pen">문의사항</i></h3>
									<div class="container" style=" width: 100%; height: auto; border-radius: 1em; margin-top: 5px;">
										<br>
										<from action="">
											<table class="table table-bordered caption-top" style="vertical-align: middle;">
												<thead class="table table-light" align="center">
													<th>#</th>
													<th >제목</th>
													<th>내용</th>
													<th style="width:120px;">작성날짜</th>
													<th style="width:120px;">삭제</th>
												</thead>
												<tbody>
												<c:forEach items="${myquestionlist}" var="list" varStatus="status">
												<c:set var="ques_time" value="${fn:split(list.ques_time, ' ')[0]}"/>
													<tr>
														<td align="center">${status.count}</td>
														<td>${list.ques_title}</td>
														<td>${list.ques_content}</td>
														<td>${ques_time}</td>
														<td align="center"><button type="button" class="btn-sm btn-danger" onclick="QDel(${list.ques_pk}, ${list.mem_pk})">삭제</button></td>
													</tr>
												</c:forEach>
												</tbody>
											</table>
											<!-- 페이징 시작 -->
											<nav class=" d-flex justify-content-center" aria-label="Page navigation example">
											  <ul class="pagination">
											    <li class="page-item">
											      <a class="page-link" href="#" aria-label="Previous">
											        <span aria-hidden="true">&laquo;</span>
											      </a>
											    </li>
											    <li class="page-item active"><a class="page-link" href="#">1</a></li>
											    <li class="page-item">
											      <a class="page-link" href="#" aria-label="Next">
											        <span aria-hidden="true">&raquo;</span>
											      </a>
											    </li>
											  </ul>
											</nav>
											<!-- 페이징 끝 -->											
										</from>
									</div>
								</div>
								<!-- 문의사항 끝  -->
							</div>
						</div>
						<br><br>
						<!-- 활동내역 끝  -->
					</div>
				</div>
			</div>
	<!-- 마이페이지 탭 끝  -->

	<!-- 마이페이지 끝  -->

	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

</body>
</html>