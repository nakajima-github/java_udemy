<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
<h1>279 JSTL XML parse and Out tag</h1>
<c:import url="/User.xml" var="XMLFile" />
<x:parse xml="${XMLFile}" var="XMLdoc" />
<x:out select="$XMLdoc/users/user/name" /><br />
<x:out select="$XMLdoc/users/user[2]/name" /><br />
<x:out select="$XMLdoc/users/user[2]/gender" /><br />
<x:out select="$XMLdoc/users/user[2]/age" /><br />

<br>
<h1>JSTL XML FOrEach and if tag</h1>
<x:forEach select="$XMLdoc/users/user">
	Name: <x:out select="name"/>&nbsp;
	Gender: <x:out select="gender"/>&nbsp;
	Age: <x:out select="age"/>
	<br />

	<x:if select="age < 20">
		This user is young!
		<br />
	</x:if>
</x:forEach>

<br>
<h1>JSTL XML Choose when otherwise</h1>
<table border="1">
	<thead>
		<tr>
			<td>Name</td>
			<td>Gender</td>
			<td>Age</td>
			<td>Memo</td>
		</tr>
	</thead>
	<x:forEach select="$XMLdoc/users/user">
		<tr>
			<td><x:out select="name"/></td>
			<td><x:out select="gender"/></td>
			<td><x:out select="age"/></td>
			<td>
				<x:choose>
					<x:when select="age < 20">This user is young.</x:when>
					<x:otherwise>This user is adult.</x:otherwise>
				</x:choose>
			</td>
		</tr>
	</x:forEach>
</table>
</body>
</html>