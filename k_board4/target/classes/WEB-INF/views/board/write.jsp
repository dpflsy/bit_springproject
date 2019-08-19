<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post"> 
	<!-- form태그는 데이터 전송을 위한 HTML 엘리먼트 입니다. 
		 form의 post메서드는 데이터를 전송-->
	<!-- input태그는 한줄로 이루어진 텍스트를 다루고 
		 textarea태그는 여러줄로 이루어진 텍스트를 다루고
		 button은 버튼의 기능을 수행  -->
		<div>
		<!-- post용 메서드는 BoardVO형태의  데이터를 받음
			따라서 <input> <textarea>에 이름(name)속성을 추가 boardVO의 변수명과 같게 한다-->
			<label>제목</label> <input type="text"  name="title"/>
		</div>

		<div>
			<label>작성자</label> <input type="text" name ="writer" value="${member.userName}" readonly="readonly"/>
		</div>

		<div>
			<label>내용</label>
			<textarea rows="5" cols="50" name="content"></textarea>
		</div>

		<div>
			<button type="submit">작성</button> <!--button type ->submit속성은 현재 데이터를 전송 //아무 기능이 없을때는 type을 button으로 설정-->
		</div>
	</form>
</body>
</html>