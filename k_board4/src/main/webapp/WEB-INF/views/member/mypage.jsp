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
      <li class="nav-item">
        <a class="nav-link" href="#">기출</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">중고장터</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">소통</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="http://www.uwayapply.com/">유웨이</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://www.jinhak.com/">진학사</a>
      </li>
      <c:if test="${member==null }" >   
      <li class="nav-item">
        <a class="nav-link" href="member/login">로그인</a>
      </li>
      </c:if> 
      <c:if test="${ member!=null}">
      	<li class="nav-item">
        <a class="nav-link" href="member/mypage">MYPAGE</a>
      </li>
      </c:if>        
    </ul>
		</div>
	</nav>
	<div class="container">
		<h2>회원정보수정</h2>
		<form role="form" method="post" autocomplete="off">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td class="userAttr">아이디</td>
						<td id="userName" name="userName"
								value="${member.userId }" readonly="readonly">${member.userId }</td>
					</tr>
				<!-- 	<tr>
						<td class="userAttr">비밀번호</td>
						<td class="userPass"><input type="password" id="userPASS"
							name="userPass" class="txtinput" maxlength="15"
							placeholder="비밀번호를 입력하세요"></td>
					</tr> -->
					<tr>
						<td class="userAttr">새 비밀번호</td>
						<td class="userPass"><input type="password"
				id="userPass" name="userPass" class="txtinput" placeholder="새로운 패스워드"></td>
					</tr>
					<!-- <tr>
						<td class="userAttr">새 비밀번호 확인</td>
						<td class="userpw"><input type="password" id="password"
							name="password" class="txtinput" maxlength="15" placeholder="">
						</td>
					</tr> -->
					<tr>
						<td class="userAttr">이름</td>
						<td class="name">userName</td>
					</tr>
					<tr>
						<td class="userAttr">전화번호</td>
						<td class="phone">010-0000-0000</td>
					</tr>
					<tr>
						<td class="userAttr">이메일</td>
						<td class="email">user@gmail.com</td>
					</tr>
				</tbody>
			</table>
			<button type="submit" class="btn btn-dark">수정 완료</button>
		</form>
</body>

</html>