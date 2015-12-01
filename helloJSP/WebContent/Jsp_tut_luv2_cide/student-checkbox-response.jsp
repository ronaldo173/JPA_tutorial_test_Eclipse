<html>

<head>
<title>ConFIRm<</title>
</head>
<body>
	Student confirmed: ${param.firstName} ${param.lastName}
	<br>
	<br /> Favourite languages are:

	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
			for(String temp : langs) {
				out.println("<li>" + temp + "</li>");
			}
		%>


	</ul>
</html>