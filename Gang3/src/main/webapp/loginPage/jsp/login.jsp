<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.UserDAO" %>

<%

	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");
	
	UserDAO dao = new UserDAO();
	int code = dao.login(uid, upass);
	if (code == 1) {
		out.println("<script>alert('아이디가 존재하지 않습니다.');</script>");
		out.println("<script>location.href='../login.html';</script>");
		//("아이디가 존재하지 않습니다.");
	}
	else if (code == 2) {
		out.println("<script>alert('비밀번호가 맞지 않습니다.');</script>");
		out.println("<script>location.href='../login.html';</script>");
		//("비밀번호가 맞지 않습니다.");
	}
	else {
		//관리자 분기
		if (uid.equals("admin")){
			response.sendRedirect("../../adminPage/admin.html");
		}else{
			response.sendRedirect("../../clientPage/client.html");
		}
		session.setAttribute("id", uid);
}
%>