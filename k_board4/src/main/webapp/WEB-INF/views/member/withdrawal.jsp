<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>게시판</title>
</head>
<body>

	<form role="form" method="post" autocomplete="off">
		<p>
			<label for="userid">아이디</label> <input type="text" id="userid"
				name="userid" value="${member.userid}" />
		</p>
		<p>
			<label for="userpw">비밀번호</label> <input type="password"
				id="userpw" name="userpw" value="${member.userpw}" />
		</p>

		<p>
			<button type="submit" >회원탈퇴</button>
		</p>
		<p>
			<a href="/">처음으로</a>
		</p>

	</form>
	<c:if test="${msg == false }">
		<p>입력한 비밀번호가 잘 못 되었습니다.</p>
	</c:if>
</body>
</html>