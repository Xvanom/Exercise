<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html class="fixed">
	<head>
		<meta charset="UTF-8">
		<title>Title</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<link rel="stylesheet" href="/resources/css/main.css" />
		<link rel="stylesheet" href="/resources/css/script.js" />
	</head>
	<body>
		<tiles:insertAttribute name="header" />
		
		<tiles:insertAttribute name="footer" />
		
		<header id="header">
        <div class="head_right">
            <img src="/imges/Temp.LOGO.png" alt="">
        </div>
        <div class="head_center">
            <input id="main_input" type="text" placeholder="name님,">
        </div>
        <div class="head_left">
            <button class="head_btn" type="button"><img src="" alt="">ready</button>
            <button class="head_btn" type="button"><img src="" alt="">ready</button>
            <button class="head_btn" type="button"><img src="" alt="">ready</button>
        </div>
    </header>
    <div id="main">
        <div id="sidebar">side area</div>
        <div id="contents">contents area
        <tiles:insertAttribute name="content" />
        
        </div>
        <div id="rightbar">rightbar area</div>
    </div>
	</body>
</html>
