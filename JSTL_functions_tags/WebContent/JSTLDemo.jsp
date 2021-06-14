<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
<h1>272. JSTL length functions</h1>
<%
	String[] names = {"Chaand", "John", "Miya"};
%>
${fn:length("studyeasy.org")}<br />

<c:set var="namesArray" value="<%=names %>"/>
${fn:length(namesArray)}<br />

<hr>
<H1>273. JSTL trim and escapeXML function</H1>
${fn:trim("         study     easy                  .   org") }

<h1>  EscapeXML Demo  </h1>
${fn:escapeXml("<h1>  EscapeXML Demo  </h1>") }

<hr>
<h1>274. JTSL more functions</h1>
<c:set var="We" value="studyEasy.org"></c:set>
${fn:startsWith("studyeasy.org", "s") }<br />
${fn:endsWith(We, "org") }<br />
${fn:contains(We, "ORG") }<br />
${fn:containsIgnoreCase("studyeasy.org", "ORG") }

<hr>
<h1>275. JSTL even more functions</h1>
${fn:toUpperCase("Studyeasy.org") }<br />
${fn:toLowerCase("StudyEasy")}<br />
${fn:indexOf("StudyEasy", "u") }<br />
${fn:replace("StudyEasy.org", "StudyEasy", "SuperEasy") }<br />
${fn:substring("StudyEasy.org", 2, 5) }<br />
${fn:substringBefore("StudyEasy.Org", "Easy") }<br />
${fn:substringAfter("StudyEasy.Org", "Easy") }<br />

<hr>
<h1>276. JSTL Split and Join function</h1>
<c:set var="elements" value="${fn:split('www.studyeasy.org', '.')}"/>
<c:forEach var="element" items="${elements}">
	${element}<br />
</c:forEach>
Elements: ${fn:join(elements, ".") }
</body>
</html>