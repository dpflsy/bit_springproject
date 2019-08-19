<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="mypage.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>mypage</title>
</head>

<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="/">LOGO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">기출</a></li>
				<li class="nav-item"><a class="nav-link" href="#">중고장터</a></li>
				<li class="nav-item"><a class="nav-link" href="#">소통</a></li>
				<li class="nav-item"><a class="nav-link"
					href="http://www.uwayapply.com/">유웨이</a></li>
				<li class="nav-item"><a class="nav-link"
					href="http://www.jinhak.com/">진학사</a></li>
				<c:if test="${member==null }">
					<li class="nav-item"><a class="nav-link" href="/member/login">로그인</a>
					</li>
				</c:if>
				<c:if test="${ member!=null}">
					<li class="nav-item"><a class="nav-link" href="#">MYPAGE</a></li>
				</c:if>
				<c:if test="${ member!=null}">
					<li class="nav-item"><a class="nav-link" href="/member/logout">로그아웃</a>
					</li>
				</c:if>
			</ul>
		</div>
	</nav>
	<form role="form" method="post" autocomplete="off">
		<p>
			<label for="userid">아이디</label> <input type="text" id="userid"
				name="userid" value="${member.userid }" readonly="readonly" />
		</p>
		<p>
			<label for="userpw"> 새로운 패스워드</label> <input type="password"
				id="userpw" name="userpw" />
		</p>
		<p>
			<label for="phone">핸드폰</label> <input type="text" id="phone"
				name="phone" value="${member.phone}" readonly="readonly" />
		</p>
		<p>
			<label for="email">이메일</label> <input type="text" id="email"
				name="email" value="${member.email}" readonly="readonly" />
		</p>
		<p>
			<button type="submit">회원정보 수정</button>
		</p>
		<p>
			<button type="button" onClick="location.href='/member/withdrawal'">회원탈퇴</button>
		</p>
		<p>
			<a href="/">처음으로</a>
		</p>

	</form>
</body>

</html>