<html>
<title>cookies-homepage</title>

<body>
	<h2>Training cookies... :)</h2>
	<%
		String favLang = "Java";
		Cookie[] theCookies = request.getCookies();

		if (theCookies != null) {
			for (Cookie cook : theCookies) {
				if ("myAppp.favoriteLanguage".equals(cook.getName())) {
					favLang = cook.getValue();
					break;
				}
			}
		}
	%>

	<!-- show page -->
	<h4>
		Books for language:
		<%=favLang%></h4>
	<hr>
	<ul>
		<li>bla-bla</li>
		<li>bla...</li>
	</ul>

	<h4>
		Job for language:
		<%=favLang%></h4>
	<hr>
	<ul>
		<li>bla-bla</li>
		<li>bla...</li>
	</ul>
	<a href="HtmlPage.html">Personalize this page</a>
</body>
</html>