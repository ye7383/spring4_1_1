<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	StringBuilder path = new StringBuilder(request.getContextPath());
	path.append("/");
%>    
<!-- jEasyUI 시작 -->
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>/themes/icon.css">


<!-- <!-- bootstrap 시작 -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
 -->

<!-- jEasyUI JS 시작 -->
<script type="text/javascript" src="<%=path.toString() %>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path.toString() %>/js/jquery.easyui.min.js"></script>

<!-- <!-- bootstrap JS 시작 -->
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
 -->