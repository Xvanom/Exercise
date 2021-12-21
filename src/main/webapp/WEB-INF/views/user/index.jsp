<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<link rel="stylesheet" href="/resources/css/comment.css" />
<div class="center">
	<form class="content_1">
		<div class="img_lay">
			<div class="img_box">
				<img class="profile_img" src="resources/img/main/some_profile.png" alt="">
			</div>
		</div>
		<input class="question" type="text" placeholder="name님, 몸의 어디가 불편하시거나 궁금하신게 있으신가요?">
		<div id="option">
			<select name="subject">
				<optgroup label="진찰과목"></optgroup>
				<option style="display: none;" value="선택안함">진찰과목: 선택안함</option>
				<option value="외과">외과</option>
				<option value="내과">내과</option>
				<option value="정형외과">정형외과</option>
				<option value="피부과">피부과</option>
				<option value="이비인후과">이비인후과</option>
			</select>
			<button class="option_btn" type="button">사진/비디오 첨부</button>
			<select name="relscope">
				<option style="display: none;" value="all">공개설정: 모두에게</option>
				<option value="private">비공개</option>
				<option value="doctor">의사에게만</option>
			</select>
		</div>
		<input type="submit" class="write_btn" value="작성하기" />
		
	</form>

</div>


<%-- <jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate var="now" value="${today}" pattern="HH" />
<br>
<c:forEach var="m" items="${model}">
	${m.memberid}<br>
	<fmt:formatDate var="regdate" value="${m.regdate}" pattern="HH" />
	<br>
	<c:set var="beforTime" value="${now-regdate}" />
	<c:choose>

		<c:when test="${beforTime < 1 }"></c:when>
		<c:otherwise></c:otherwise>
	</c:choose>
	${m.comment}<br>
	${m.img}<br>
</c:forEach> --%>
