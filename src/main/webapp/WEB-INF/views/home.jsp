<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>Spitter</title>
<link href="<s:url value="/resources" />/css/spitter.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="container">
		<a href="/home" >"><img src="/resources/images/spitter_logo_50.png" border="0" /></a>
		<div>
			<h2>A global community of friends and strangers spitting out
				their inner-most and personal thoughts on the web for everyone else
				to see.</h2>
			<h3>Look at what these people are spitting right now...</h3>

			<ol class="spittle-list">
				<c:forEach var="spittle" items="${spittles}">
					<li>${spittle.spitter.username}</li>
				</c:forEach>
			</ol>
		</div>
	</div>
</body>
</html>
