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
<link rel="stylesheet" type="text/css" href="register.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<title>Register</title>
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
					<li class="nav-item"><a class="nav-link" href="/member/mypage">MYPAGE</a>
					</li>
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
			<label for="userId">아이디</label> <input type="text" id="userid"
				name="userid" />
			<button type="button" class="idCheck">아이디 확인</button>
		</p>
		<p class="result">
			<span class="msg">아이디를 확인해주십시오.</span>
		</p>
		<p>
			<label for="userPass">패스워드</label> <input type="password" id="userpw"
				name="userpw" />
		</p>
		<p>
			<label for="phone">핸드폰</label> <input type="text" id="phone"
				name="phone" />
		</p>
		<p>
			<label for="email">이메일</label> <input type="text" id="email"
				name="email" />
		</p>
		<p>
			<button type="submit" id="submit">가입</button>
		</p>
		<p>
			<a href="/">처음으로</a>
		</p>

	</form>

	<script>
		$(".idCheck").click(function() {

			var query = {
				userid : $("#userid").val()
			};

			$.ajax({
				url : "/member/idCheck",
				type : "post",
				data : query,
				success : function(data) {

					if (data == 1) {
						$(".result .msg").text("사용 불가");
						$(".result .msg").attr("style", "color:#f00");
					} else {
						$(".result .msg").text("사용 가능");
						$(".result .msg").attr("style", "color:#00f");
					}
				}
			}); // ajax 끝
		});
		function autoHypenPhone(str) {
			str = str.replace(/[^0-9]/g, '');
			var tmp = '';
			if (str.length < 4) {
				return str;
			} else if (str.length < 7) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3);
				return tmp;
			} else if (str.length < 11) {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 3);
				tmp += '-';
				tmp += str.substr(6);
				return tmp;
			} else {
				tmp += str.substr(0, 3);
				tmp += '-';
				tmp += str.substr(3, 4);
				tmp += '-';
				tmp += str.substr(7);
				return tmp;
			}
			return str;
		}

		var cellPhone = document.getElementById('phone');
		cellPhone.onkeyup = function(event) {
			event = event || window.event;
			var _val = this.value.trim();
			this.value = autoHypenPhone(_val);
		}
	</script>

</body>

</html>