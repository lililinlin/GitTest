<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ page import="com.study.springboot.dto.NoticeDto" %>   
<%@ page import="java.util.ArrayList"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글 내용</title>
	<%
		ArrayList<NoticeDto> list = (ArrayList<NoticeDto>)session.getAttribute("listBoard");
	%>
</head>
<body>
rghaiwrogwiogio
<%
				for (int i = 0; i < list.size(); i++) {
			%>
			<tr style="background-color: white;">
				<td><%=i + 1%></td>
				<td><%=list.get(i).getTitle()%></td>
				<td><%=list.get(i).getContent()%></td>
			
			</tr>
			<%
				}
			%>
</body>
</html>