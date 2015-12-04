<html>
<title>Cookies response</title>

<%
	String favLanguage = request.getParameter("favoriteLanguage");
	Cookie theCookie = new Cookie("myAppp.favoriteLanguage", favLanguage);

	theCookie.setMaxAge(60 * 60 * 24);//day
	response.addCookie(theCookie);
%>

<body>
	Thanks! language is: ${param.favoriteLanguage}
	<br>
	<br>
	<a href="cookies-homepage.jsp"> Return to homepage</a>
</body>
</html>