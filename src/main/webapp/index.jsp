<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<c:set var="age" value="0" />	
	<c:if test="${age ge 18}"> <p>Vous �tes majeur.</p></c:if>
	<c:if test="${age lt 18}"> <p>Vous �tes mineur.</p></c:if>
</body>
</html>