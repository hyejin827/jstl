<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><br>
유저리스트
<br>
<c:forEach items="${userList}" var="user">
	유저번호 : ${user.uiNo}, 유저이름 : ${user.uiName}, 유저나이 : ${user.uiAge}, 유저아이디 : ${user.uiId},
	유저비밀번호 : ${user.uiPwd}, 가입날짜 : ${user.uiRegdate}, 주소 : ${user.address}, ciNo : ${user.ciNo},
	ciName : ${user.ciName}, ciDesc : ${user.ciDesc}<br>
</c:forEach>

<input type="button" value="수정" onclick="update()">
<input type="button" value="삭제" onclick="delete()">

</body>
</html>