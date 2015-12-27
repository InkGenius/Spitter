<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<title>Spitter</title>
<link href="/resources/css/spitter.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="container">
		<a href="<s:url value="/home" />"><img src="<s:url value="/resources" />/images/spitter_logo_50.png" border="0" /></a>
		<div id="top">
			 <jsp:include page="/WEB-INF/views/tiles/spittleForm.jsp"/>
		</div>
		<div id="side">
			<jsp:include page="/WEB-INF/views/tiles/spittleForm.jsp"/>
			<jsp:include page="/WEB-INF/views/tiles/signinsignup.jsp" />
		</div>
		<div id="content">
			<jsp:include page="/WEB-INF/views/home.jsp" />
		</div>
	</div>
</body>
</html>


