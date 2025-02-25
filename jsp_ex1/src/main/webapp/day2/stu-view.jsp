<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../db.jsp" %>
	<form action="stu-update.jsp">
	<%
		// 학번, 이름, 학과, 학년, 점수
		try{
			String stuNo = request.getParameter("stuNo");
			ResultSet rs = stmt.executeQuery(
				"SELECT * "
				+ "FROM STUDENT S"
				+ " INNER JOIN ENROL E ON S.STU_NO = E.STU_NO "
				+ "WHERE S.STU_NO = "
				+ "'" + stuNo + "'"
			);
			if(rs.next()){
			%>
				<div>학번 : <%=rs.getString("STU_NO") %></div>
				<div>이름 : <%=rs.getString("STU_NAME") %></div>
				<div>학과 : <%=rs.getString("STU_DEPT") %></div>
				<div>학년 : <%=rs.getString("STU_GRADE") %></div>
				<div>시험점수 : <%=rs.getString("ENR_GRADE") %></div>
			<%
			
			// out.println("학번 : " + rs.getString("STU_NO"));
						} else {
							out.println("조회 실패");
								
						}
						
					}catch(SQLException e) {
						out.println("DB 오류");
					}
			%>
	
		<input type="submit" value="수정">
	</form>
</body>
</html>