<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.*, jspDemo_jstl.Student"%>


<%
	List<Student> list = new ArrayList<>();

	list.add(new Student("Alex", "Efimov", false));
	list.add(new Student("Julia", "Jonson", true));
	list.add(new Student("Adam", "Brains", false));

	pageContext.setAttribute("myStudents", list);
%>

<html>
<table border="5">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Is Gold customer</th>
	</tr>


	<c:forEach var="temp" items="${myStudents}">
		<tr>
			<td>${temp.firstName }</td>
			<td>${temp.lastName }  </td>
			
			<td>
			<c:choose>
			<c:when test = "${temp.goldCustomer}" > Special Discount!!!</c:when>
			<c:otherwise>---</c:otherwise>
			
			</c:choose>
			</td>
		</tr>

	</c:forEach>
</table>
</html>