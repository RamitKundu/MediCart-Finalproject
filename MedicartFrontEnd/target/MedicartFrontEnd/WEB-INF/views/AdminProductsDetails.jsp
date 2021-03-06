   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>AdminProductsDetails</title>
<%@ include file="Landingpage.jsp" %>
<style>
table {
  border-collapse: collapse;
}
tr { 
  border: solid;
  border-width: 1px 0;
}
tr th{
padding:5px;
}
</style>
</head>
<body>

<center>
<h2>ProductDetails</h2>
<table border="1" frame="void" rules="rows">

<c:if test="${not empty successmsg}">
<a href="${req}/addproduct" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span>Add Product</a>
</c:if>
<tr>
<th>Image</th>
<th>ProductId</th>
<th>ProductName</th>
<th>ProductPrice</th>
<th>ProductDescription</th>
<th>ProductCategory</th>
<c:if test="${not empty successmsg}">
<th>Edit</th>
<th>Delete</th>
</c:if>
<th>View</th>
</tr>
<hr>
<tr>
<c:forEach items="${products}" var="pr">
<tr>
<td><img alt="" src="${req}/resources/img/product/${pr.id}.png" height="100px" width="100px" /></td>
<td>${pr.id}</td>
<td>${pr.productName}</td>
<td>${pr.productPrice}</td>
<td>${pr.productDescription}</td>
<td>${pr.productCategory}</td>
<c:if test="${not empty successmsg}">
<td><a href="${req}/edit/${pr.id}" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span></a></td>
<td><a href="${req}/delete/${pr.id}" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span></a></td>
</c:if>
<td><a href="${req}/abc/${pr.id}" class="btn btn-info"><span class="glyphicon glyphicon-eye-open"></span> View</a></td>
</tr>
</c:forEach>
</tr>
</table>
</center>
<%@ include file="Footer.jsp" %>
</body>
</html>