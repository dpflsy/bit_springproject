<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<title>LOGIN</title>
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
					<li class="nav-item"><a class="nav-link" href="#">로그인</a>
					</li>
				</c:if>
				<%-- <c:if test="${ member!=null}">
					<li class="nav-item"><a class="nav-link" href="#" onclick="location.href='member/mypage">MYPAGE</a>
					</li>
					</c:if>
					<c:if>
					<li class="nav-item"><a class="nav-link" href="#" onclick="location.href='member/logout">로그아웃</a>
					</li>
				</c:if> --%>
			</ul>
		</div>
	</nav>

		<div class="card align-middle"
			style="width: 20rem; border-radius: 20px;">
			<div class="card-title" style="margin-top: 30px;">
				<h2 class="card-title text-center" style="color: #113366;">LOGIN</h2>
			</div>
			<div class="card-body">
				<form class="form-signin" method="POST"
					onSubmit="logincall();return false">
					<h5 class="form-signin-heading">로그인 정보를 입력하세요</h5>
					<label for="userId" class="sr-only">Your ID</label> <input
						type="text" id="userid" name="userid" class="form-control"
						placeholder="Your ID" required autofocus><BR> <label
						for="userPass" class="sr-only">Password</label> <input
						type="password" id="userpw" name="userpw" class="form-control"
						placeholder="Password" required><br>
					<div class="loginRegister">
						<button id="btn-Yes" class="btn btn-lg btn-dark btn-block"
							type="submit">로그인</button>
						<button id="btn-Register" class="btn btn-lg btn-dark btn-block"
							type="button" onClick="location.href='/member/register'">회원가입
						</button>
					</div>
				</form>
			</div>
		</div>
		<div class="modal"></div>
</body>

</html>