<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html class="fixed">
<head>
<meta charset="UTF-8">
<title>Title</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" href="/resources/css/main.css" />
<link rel="stylesheet" href="/resources/css/script.js" />
</head>
<body>
	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="footer" />

	<header id="header">
		<div class="head_left">
			<img id="mainlogo" src="resources/img/main/mainLogo.png" alt="">
		</div>
		<div class="head_center">
			<input id="main_input" type="text"
				placeholder="name님, 건강한 하루 보내고 계신가요? 궁금한 내용을 검색해 보세요.">
		</div>
		<div class="head_right">
			<div class="left_div alarm_div">
				<img class="left_img alarm" id="alarm"
					src="resources/img/main/alarm.png"> <img
					class="left_img alarm" id="alarm_point"
					src="resources/img/main/newalarm.png">
			</div>
			<div class="left_div">
				<img class="left_img" src="resources/img/main/setting.png">
			</div>
			<div class="left_div">
				<img class="left_img" src="resources/img/main/Profile.png">
			</div>
		</div>
	</header>
	<div id="main">
		<div id="sidebar">
			<div>
				<ul>
					<li><button type="button" class="side_btn" onclick="">
							<img class="btn-img" src="resources/img/main/btn1.png" alt="" />게시물
						</button></li>
					<li><button type="button" class="side_btn" onclick="">
							<img class="btn-img" src="resources/img/main/btn2.png" alt="" />병원
							소개
						</button></li>
					<li><button type="button" class="side_btn" onclick="">
							<img class="btn-img" src="resources/img/main/btn3.png" alt="" />진료
							안내
						</button></li>
					<li><button type="button" class="side_btn" onclick="">
							<img class="btn-img" src="resources/img/main/btn4.png" alt="" />내
							진료 내역
						</button></li>
				</ul>
			</div>
		</div>
		<div id="backcolor">
			<div id="contents">
				contents area
				<tiles:insertAttribute name="content" />

			</div>
			<div id="rightbar">
				<div class="reserve">
					<div class="re_btn_box">
						<button class="reserve_btn">예약하기</button>
					</div>
					<div id="num_box">
						<div class="img_box num1">
							<img src="resources/img/main/1.png" alt="">
						</div>
						<div class="img_box num2">
							<img src="resources/img/main/2.png" alt="">
						</div>
						<div class="img_box num3">
							<img src="resources/img/main/3.png" alt="">
						</div>
						<div class="img_box num4">
							<img src="resources/img/main/4.png" alt="">
						</div>
					</div>
					<div id="text_box">
						<p class="coment left">
							내원진료·왕진진료·건강검진<br> 위의 3가지중 원하시는 진료를 선택하여 주세요.
						</p>
						<p class="coment left">
							적절한 진료과목을 선택하여 주세요.<br> 검진을 선택한 경우에 원하시는 검진항목을 체크해주세요.
						</p>
						<p class="coment left">예약을 원하시는 날짜와 시간을 선택해 주세요.</p>
						<p class="coment left">본인확인 및 예약결제 후 예약완료 확인 및 현황은 아래에 나타납니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
