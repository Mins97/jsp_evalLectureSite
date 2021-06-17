<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("id");
	
	UserDAO dao = new UserDAO();
	if (dao.delete(uid)) {
		out.println("<script>alert('회원탈퇴가 완료되었습니다.');</script>");
		out.println("<script>location.href='../login.html';</script>");
	}
	else {
		out.println("<script>alert('회원탈퇴 중 오류가 발생하었습니다. 잠시 후에 다시 시도해주세요.');</script>");
		out.println("<script>location.href='../login.html';</script>");
	}
%>