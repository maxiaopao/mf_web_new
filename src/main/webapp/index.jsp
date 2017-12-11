<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.ct.modules.sys.entity.Csr"%>
<!DOCTYPE html>
<html>
<head>
<title>SSHE</title>

<%
Csr sessionInfo = (Csr) session.getAttribute("csrSession");
	if (sessionInfo != null) {
		request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
	}
%>
</head>
<body>
</body>
</html>