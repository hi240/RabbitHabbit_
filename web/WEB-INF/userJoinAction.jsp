<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021-10-01
  Time: 오후 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="user.UserDAO"%>
<%@ page import="user.UserDTO"%>
<%@ page import="java.io.PrintWriter"%>
<%
    request.setCharacterEncoding("UTF-8");
    String userID = null;
    String userPassword = null;
    if(request.getParameter("userID")!=null){
        userID=(String) request.getParameter("userID");
    }
    if(request.getParameter("userPassword")!=null){
        userPassword=(String) request.getParameter("userPassword");
    }
    if(userID==null||userPassword==null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('입력이안된사항이있습니다');");
        script.println("history.back();");
        script.println("</script>");
        return;
    }
    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(userID,userPassword);
    if(result==1){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('회원가입 성공');");
        script.println("location.href='index.jsp';");
        script.println("</script>");
        return;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
