<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function goRegister() {
		// 유효성 검사는 생략함.
		var frm = document.myFrm;
		frm.method = "POST";
		frm.action = "<%=request.getContextPath() %>/mybatistest/mybatisTest3End.action"; 
		// startspring/mybatistest/mybatisTest3End.action
		frm.submit();            
	}
</script>
</head>
<body>
	<div align="center">
	  <h1>글쓰기(/mybatistest/mybatisTest3.action)</h1>
	  <form name="myFrm">
	  	성명 : <input type="text" name="name"/> <br/>
	  	메일 : <input type="text" name="email"/> <br/>
	  	전화 : <input type="text" name="tel"/> <br/>
	  	주소 : <input type="text" name="addr"/> <br/>
	  	<br/><br/>
	  	<button type="button" onClick="goRegister();">등록</button>
	  </form>	
	</div>
</body>
</html>


