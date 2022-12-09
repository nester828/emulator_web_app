<%--
  Created by IntelliJ IDEA.
  User: tomcat
  Date: 08.12.2022
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
</head>
<body>
<form action="otvet.jsp">
    randValue: <input name="randValue" id="randValue" />
    <br><br>
    counterValue: <input name="counterValue" type="number" min=1 id="counterValue" />
    <br></br>
    toLog: <input name="toLog" id="toLog" />
    <br><br>
    <input type="submit" value="Submit" id="btn" />
</form>
</body>
</html>