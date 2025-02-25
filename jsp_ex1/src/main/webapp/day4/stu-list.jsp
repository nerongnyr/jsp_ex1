<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, th, tr, td {
		border: 1px solid black;
		border-collapse: collapse;
		padding: 10px;
		text-align: center;
	}
	a {
		text-decoration : none;
		color : black;
	}
</style>
</head>
<body>
	<%@include file="../db.jsp" %>
	<form name="stu" action="stu-insert.jsp">
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학과</th>
				<th>평균 점수</th>
			</tr>
	<%
			ResultSet rs = stmt.executeQuery(
					"SELECT S.STU_ID, S.STU_NAME, S.STU_DEPT, G.GRADE "
					+ "FROM TBL_STULIST S "
					+ "INNER JOIN TBL_GRADE G ON S.STU_ID = G.STU_ID"
					);
		
			while(rs.next()) {
				String stuId =  rs.getString("STU_ID");
	%>
			<tr>
			 	<td><%= rs.getString("STU_ID") %></td>
			 	<td>
			 		<a href="stu-view.jsp?stuId=<%= stuId %>">
			 		<%= rs.getString("STU_NAME") %>
			 		</a>
			 	</td>
			 	<td><%= rs.getString("STU_DEPT") %></td>
			 	<td><%= rs.getString("GRADE") %></td>
			 </tr>
	<%
			}
	%>
		
		</table>
		<div>
			<input type="submit" value="학생 추가">
		</div>
	</form>

</body>
</html>