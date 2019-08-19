<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>게시물 목록</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<!-- forEach는 리스트형 데이터를 받아 그 리스트의 갯수만큼 반복 -->
				<!-- items에는 Controller에서 작성했던 list가 들어감  -->
				<!-- 에러가 발생할 경우 위에 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>를 추가하면 된다. -->
				<tr>
					<td>${list.bno}</td>
					<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
					<!-- 여기서 물음표는 일반url과 매개변수의 사이를 구분  -->
					<td>${list.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd"
							value="${list.regDate}" /></td>
					<td>${list.viewCnt}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<c:forEach begin="1" end="${pageNum}" var="num">
  <span>
    <a href="/board/listPage?num=${num}">${num}</a>
  </span>
</c:forEach>

</body>
</html>