<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false" %> 이 jsp파일에선 세션을 사용하지 않겠다는 뜻 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<script src="main.js"></script>
</head>

<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="#">LOGO</a>
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
					<li class="nav-item"><a class="nav-link" href="member/login">로그인</a>
					</li>
				</c:if>
				<c:if test="${member!=null}">
					<li class="nav-item"><a class="nav-link" href="member/modify">MYPAGE</a>
					</li>
				</c:if>
				<c:if test="${member!=null}">
					<li class="nav-item"><a class="nav-link" href="member/logout">로그아웃</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
	</div>
	<div class="dday">
		<div id="d-day"></div>
	</div>

	<script type="text/javascript">
    var now = new Date();
    var then = new Date("November 14,2019");
    var gap = now.getTime() - then.getTime();
    gap = Math.floor(gap / (1000 * 60 * 60 * 24));
    document.getElementById("d-day").innerHTML = "2020 수능 " + "D" + gap;


    </script>
</body>

</html>