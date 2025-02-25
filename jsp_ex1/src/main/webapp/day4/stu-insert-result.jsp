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
			String stuName = request.getParameter("stuName");
			String stuDept = request.getParameter("stuDept");
			String stuSub = request.getParameter("stuSub");
			String Grade = request.getParameter("Grade");
			ResultSet rs = stmt.executeQuery(
					"SELECT S.STU_ID, S.STU_NAME, S.STU_DEPT, G.GRADE "
					+ "FROM TBL_STULIST S "
					+ "INNER JOIN TBL_GRADE G ON S.STU_ID = G.STU_ID"
					+ " WHERE S.STU_ID ='" + stuId + "'"
					);
			if(rs.next()){
				out.println("이미 사용중인 학번입니다");
			} else {
				String query = 
					"INSERT INTO TBL_STULIST"
					+ " VALUES( "
					+ "'" + stuId + "'," 
					+ "'" + stuName + "',"
					+ "'" + stuDept + "')";
				query = 
					"INSERT INTO TBL_GRADE(GRADE)"
					+ " VALUES( "
					+ "'" + stuId + "',"
					+ "'" + stuSub + "',"
					+ "'" + Grade + "')";
				int result = stmt.executeUpdate(query);
				if(result != 0) {
					out.println("등록되었습니다");
				} else {
					out.println("등록 안 됨");
				}
					
			}
			
		}catch(SQLException e) {
			out.println("DB 오류");
		}
	%>
</body>
</html>