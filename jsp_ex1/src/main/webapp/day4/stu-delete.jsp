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
	<%
	
		try{
			String stuId = request.getParameter("stuId");
			String query = 
				"DELETE INTO TBL_STULIST WHERE STU_ID = "
				+ "'" + stuId + "'"  ;
			query = 
					"DELETE INTO TBL_GRADE WHERE STU_ID = "
					+ "'" + stuId + "'"  ;
			int result = stmt.executeUpdate(query);
			if(result > 0) {
				out.println("삭제되었습니다");
			} else {
				out.println("없는 데이터입니다");
			}		
			
		}catch(SQLException e) {
			out.println("DB 오류");
		}
		
	%>
	<button onclick="fnBack()">되돌아가기</button>
</body>
</html>
<script>
	function fnBack() {
		location.href = "stu-list.html";
	}
</script>