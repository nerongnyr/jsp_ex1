<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		int number = 10;
	%>
	<%
		for (int i = 0; i < 5; i++) {
	        for (int j = 5; j > i; j--) {
	            out.println("*");
	        }     	
	       out.println("<br>");
	    }
	
		if(number % 2 == 1) {
			out.println("홀수");
		}else {
			out.println("짞수");
		}
	%>
</body>
</html>