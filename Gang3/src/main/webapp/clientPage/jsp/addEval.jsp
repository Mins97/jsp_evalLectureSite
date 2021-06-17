<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<%@ page import="util.*"%>
<%
request.setCharacterEncoding("utf-8");

String uid = (String)session.getAttribute("id");
Integer star = Integer.parseInt(request.getParameter("star"));
String content = request.getParameter("content");

CommentDAO dao = new CommentDAO();
if (dao.insert(content, star, uid) == true) {
	out.println("<script>alert('작성한 글이 업로드되었습니다.');</script>");
	
	out.println("<script>location.href='../jsp/commentList.jsp';</script>");
} else {
	out.println("<script>alert('작성 글의 업로드 중 오류가 발생하였습니다.');</script>");
	out.println("<script>location.href='../jsp/commentList.jsp';</script>");
}
%>