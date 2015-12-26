<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div>
	<h2>Create a free Spitter account</h2>
	
	<s:url value="/spitter" var="spitterform_url" />
	
	<sf:form method="POST" action="${spitterform_url}"
		modelAttribute="spitter"> 
		
		Full name: <sf:input path="fullName" size="15" />
		<br />
		Username: <sf:input path="username" size="15" maxlength="15" />
		<br />
		Password: <sf:password path="password" size="30" showPassword="true" />
		<br /> 
		Email Address: <sf:input path="email" size="30" />
		<br />

		<sf:checkbox path="updateByEmail" />Send me email updates!<br />

		<input name="commit" type="submit" value="I accept. Create my account." />
	</sf:form>
</div>
