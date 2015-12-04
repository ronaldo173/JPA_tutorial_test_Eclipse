<%@ page import  = "java.util.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>State management with JSPe</title>
</head>
<body>

	<form action="todo-demo.jsp">
		Add new item : <input type="text" name="theItem" /> <input
			type="submit" value="Submit">

	</form>

	<br>
	<br> Item entered:
	<%=request.getParameter("theItem")%>
	<%
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	if(items==null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	String theItem = request.getParameter("theItem");
	if(theItem != null){
		items.add(theItem);
	}
	%>
		
	<hr>
	<b>To list items:</b>
	<ol>
	<%
	for(String temp:items){
		out.println("<li>" + temp + "</li>");
	}
	%>
	</ol>
</body>
</html>