<html>
<body>
<h1>Declaration</h1>

<%!
String makeItLower(String data){
	return data.toUpperCase();
}
%>
Hello world! before
<br>
<%= makeItLower("Hello world! after") %>
</br>
</body>

</html>