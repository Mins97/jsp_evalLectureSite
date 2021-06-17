<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");
	String uname = request.getParameter("name");
	
	UserDAO dao = new UserDAO();
	
	if (dao.exists(uid)) {
		out.println("<script>alert('이미 가입한 회원입니다.');</script>");
		out.println("<script>location.href='../login.html';</script>");
		return;
	}
	if (dao.insert(uid, upass, uname) == true) {
		out.println("<script>alert('회원 가입이 완료되었습니다.');</script>");
		out.println("<script>location.href='../login.html';</script>");
	}
	else {

		out.println("<script>alert('회원 가입 중 오류가 발생하였습니다.');</script>");
		out.println("<script>location.href='../login.html';</script>");
	}
	//stmt.close(); conn.close();
%>