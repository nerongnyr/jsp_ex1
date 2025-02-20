<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form name="join"  action="join-result.jsp" method="get">
		<div>
			아이디 : <input name="id">
		</div>
		<div>
			비밀번호 : <input name="pwd" type="password">
		</div>
		<div>
			비밀번호 확인 : <input name="pwd2" type="password">
		</div>
		<div>
			이름 : <input name="userName">
		</div>
		<div>
			핸드폰 : 
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>
		</div>	
		<div>
			성별 : 
			<input type="radio" name="gender" value="M"> 남
			<input type="radio" name="gender" value="F"> 여
		</div>
		<div>
			취미 :
			<input type="checkbox" name="hobby" value="운동"> 운동			
			<input type="checkbox" name="hobby" value="독서"> 독서
			<input type="checkbox" name="hobby" value="영화감상"> 영화감상
			<input type="checkbox" name="hobby" value="코딩"> 코딩
			<input type="checkbox" name="hobby" value="게임"> 게임
		</div>
		<div>
			<input type="button" onclick="fnJoin()">		
		</div>		
	</form>
	
</body>
</html>
<script>
	// 아이디 -> 6글자 이상, 빈값x
	// 비밀번호 -> 6글자 이상, 빈값x
	//		-> pwd=pwd2
	//		->특수문자 1개 이상 포함	
	
	function fnJoin() {
		
		if(join.id.value < 6) {
			alert("아이디는 6글자 이상 입력")
			join.id.focus();
			return;
		}
		if(join.pwd.value < 6) {
			alert("비밀번호는 6글자 이상 입력")
			join.pwd.focus();
			return;
		}
		if(join.pwd.value != join.pwd2.value) {
			alert("비밀번호가 다름")
			join.pwd2.focus();
			return;
		}
		join.submit();
	}
		
</script>