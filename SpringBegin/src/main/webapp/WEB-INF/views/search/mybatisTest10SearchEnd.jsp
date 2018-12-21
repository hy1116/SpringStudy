<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	table {border: 1px solid gray;
	       border-collapse: collapse;
	      }
	
	th, td {border: 1px solid gray;}
</style>

</head>
<body>

	<div align="center">
		<table>
			<thead>
				<tr style="background-color: #000000; color: #ffffff;">
					<th>번호</th>
					<th>성명</th>
					<th>이메일</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>가입일자</th>
					<th>생일</th>
				</tr>
			</thead>
			
			<tbody>
				<c:if test="${not empty memberMapList}">
					<c:forEach var="map" items="${memberMapList}">
						<tr>
							<td>${map.NO}</td>
							<td>${map.NAME}</td>
							<td>${map.EMAIL}</td>
							<td>${map.TEL}</td>
							<td>${map.ADDR}</td>
							<td>${map.WRITEDAY}</td>
							<td>${map.BIRTHDAY}</td>
						</tr>
					</c:forEach>
				</c:if>
					
				<c:if test="${empty memberMapList}">
					<tr>
						<td colspan="7">조회하려는 주소지 ${addr} 데이터는 존재하지 않습니다.</td>
					</tr>		 
				</c:if>
			</tbody>
		</table>
	</div>

</body>
</html>