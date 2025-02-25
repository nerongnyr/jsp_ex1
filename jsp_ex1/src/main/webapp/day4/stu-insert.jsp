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
	<form name="stu" action="stu-insert-result.jsp">
		<div>
			아이디 : <input name="stuId">
		</div>
		<div>
			이름 : <input name="stuName">
		</div>
		<div>
			학과 : <input name="stuDept">
		</div>
		<div>
			과목 : <input name="stuSub">
		</div>
		<div>
			점수 : <input name="Grade"> 
		</div>
		<div>
			<input type="button" value="추가" onclick="fnStuInsert()">
		</div>
		
	</form>

</body>
</html>
<script>
	function fnStuInsert() {}
		let stu = document.stu;
		if(stu.stuId.value.length != 4) {
			alert("아이디는 4글자만 입력 가능")
			return;
		}
		
		if(stu.stuId.value == "") {
			alert("아이디를 입력해주세요!")
			stu.stuId.focus();
			return;
		}
		
		if(stu.stuName.value == "") {
			alert("이름을 입력해주세요!")
			stu.stuName.focus();
			return;
		}
		
		if(stu.stuDept.value == "") {
			alert("학과를 입력해주세요!")
			stu.stuDept.focus();
			return;
		}
		
		if(stu.stuSub.value == "") {
			alert("과목을 입력해주세요!")
			stu.stuSub.focus();
			return;
		}
		
		if(stu.Grade.value < 0 || stu.Grade.value > 100) {
			alert("점수는 0부터 100사이의 값.")
			stu.Grade.focus();
			return;
		}
		
		if(stu.Grade.value == "") {
			alert("점수를 입력해주세요!")
			stu.Grade.focus();
			return;
		}
		
		stu.submit();
</script>