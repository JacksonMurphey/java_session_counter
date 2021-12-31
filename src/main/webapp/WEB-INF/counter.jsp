<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" 
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>

<jsp:include page="base.jsp"></jsp:include>

<h1 class="m-3"> You have visited </h1> 
<a href="/counter" class="m-3">localhost:8080</a> <p class="m-3"><c:out value="${countToShow}"/></p> 

<a href="/" class="m-3">Test another Visit?</a>
<a href="/reset" class="m-3">Reset Count</a>






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>