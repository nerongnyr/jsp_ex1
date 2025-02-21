<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- stu-join-result.jsp -->
	<!-- 학번, 이름, 학과, 성별 -->
	<form name="stu" action="stu-join-result.jsp">
		<div>
			학번 : <input name="stuNo">
				<input oncluck="fnCheck()" type="button" value="중복체크">
		</div>
		<div>
			이름 : <input name="stuName">
		</div>
		<div>
			학과 : <input name="stuDept">
		</div>
		<div>
			성별 : 
				<input name="gender" type="radio" value="M"> 남자
				<input name="gender" type="radio" value="F"> 여자
		</div>
		<div>
			<input type="button" value="저장" onclick="fnStuInsert()">
		</div>
		
	</form>
	
</body>
</html>
<script>
	let checkFlg = false;
	function fnStuInsert() {
		
		if(!checkFlg) {
			alert("중복체크 해");
			return;
		}
		
		let stu = document.stu;
		if(stu.stuNo.value.length != 8) {
			alert("학번은 8글자 해야 됨")
			return;
		}
		if(stu.stuName.value == "" || stu.stuDept.value == "") {
			alert("모든 값을 채워주세요")
			return;
		}
		stu.stuNo.disabled = false;
	    stu.submit();
	}
	
	function fnCheck() {
		let stu = document.stu;
		if(stu.stuNo.value.length != 8) {
			alert("학번은 8글자 해야 됨")
			return;
		}
		window.open("id-check.jsp?stuNo=" + stu.stuNo.value,
				"check",
				"width=300, height=300"
				);
	}
	
	function getReturn(flg) {
		let stu = document.stu;
		console.log(flg);
		if(flg == "N") {
			let obj = document.stu.stuNo;
			checkFlg = true;
			obj.disabled = true;
		}
	}
	
</script>