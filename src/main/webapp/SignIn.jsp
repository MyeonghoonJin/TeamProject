<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  session.setAttribute("id", "id");
  session.setAttribute("password1", "pswd1");
  session.setAttribute("password2", "pswd2");
  session.setAttribute("name", "name");
  session.setAttribute("school_number", "school_number");
  session.setAttribute("email", "email");

  ${param.id};
  ${param.pswd1};
%>