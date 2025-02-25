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
		// 이름, 학과, 과목명, 점수
		try{
			String stuId = request.getParameter("stuId");
			ResultSet rs = stmt.executeQuery(
				"SELECT * "
				+ "FROM TBL_STULIST S"
				+ " INNER JOIN TBL_GRADE G ON S.STU_ID = G.STU_ID"
				+ " WHERE S.STU_ID = "
				+ "'" + stuId + "'"
			);
			if(rs.next()){
			%>
				<div>이름 : <%=rs.getString("STU_NAME") %></div>
				<div>학과 : <%=rs.getString("STU_DEPT") %></div>
				<div>과목명 : <%=rs.getString("SUBJECT") %>
				, 점수 : <%=rs.getString("GRADE") %></div>
			<%
			
			} else {
				out.println("조회 실패");
					
			}
			
		}catch(SQLException e) {
			out.println("DB 오류");
		}
			%>
	<input type="submit" value="수정">
	<button onclick="fnStuRemove()">삭제</button>
	</form>
</body>
<script>
	function fnStuRemove() {
		if(!confirm("정말 삭제할 거임?")) {
			return;
		}
		// stu-delete.jsp 페이지로 이동
		// 학번을 같이 넘기기
		let stuId = <%= stuId %>;
		location.href="stu-delete.jsp?stuId=" + stuId;	
	}
</script>
</html>