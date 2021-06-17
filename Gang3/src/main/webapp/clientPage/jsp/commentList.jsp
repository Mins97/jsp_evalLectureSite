<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<%@ page import="util.*"%>
<%
ArrayList<CommentObj> comments = (new CommentDAO()).getList();

String str = "";
for (CommentObj comment : comments) {
	str += "<div class=\"comment\">";
	str += "<div class=\"comment-name\">" + comment.getAuthor() + "</div>";
	str += "<div class=\"comment-msg\">" + comment.getContent() + "</div>";
	str += "</div>";
}
%>

<html>
<head>
<meta charset="utf-8">
<meta name=viewport
	content="width=device-width, initial-scale=1, user-scalable=0">
<link rel="stylesheet" href="../../css/core.css">
<title>Gang</title>

<style>
.desc {
	float: left;
	width: 100%;
	color: #888;
	font-size: 0.9em;
}
</style>

</head>
<body style="background-color: white">
	<div class="page-header">
		<a class="page-header-back noDeco" href="../detail.html">👈 Back</a>
		<div class="header-title">강의 댓글 전체보기</div>
	</div>
	<div class="comment-content">

		<!-- 댓글들 
		<div class="comment">
		<div class="comment-name">김민성</div>
		<div class="comment-msg">교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다.교수님 사랑합니다. 사랑합니다.</div>
		</div>
		-->
		<%=str%>

	</div>
	<div class="comment-write" onClick="location.href='../addEval.html'"
		style="cursor: pointer;">평가 작성하기</div>
	<div class="page-footer">Copyright: Gang.com, 2021</div>
</body>
</html>