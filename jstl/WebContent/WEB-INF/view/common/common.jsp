<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String root = request.getContextPath();
Map<String,String> menuMap = new HashMap<String,String>();
menuMap.put("UserList",root+"/view/user/list"); /*jspservlet에 .jsp있어서 user/list.jsp에 .jsp없어도됨*/
menuMap.put("Home",root+"/");
menuMap.put("ClassList",root+"/view/class/list");
%>
<c:set var="menuMap" value="<%=menuMap%>" scope="page"/>
<c:set var="title" value="JSTL 테스트" scope="page"/>
<c:forEach items="${menuMap}" var="menu">
	<a href="${menu.value}">${menu.key}</a>
</c:forEach>