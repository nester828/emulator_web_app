<%--
  Created by IntelliJ IDEA.
  User: tomcat
  Date: 08.12.2022
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.File" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.nio.file.StandardOpenOption" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>User Info</title>
</head>
<body>
<%
    String rv = request.getParameter("randValue");
    String[] splitnum;
    String delimeter = "_";
    splitnum=rv.split(delimeter);
    int a = Integer.parseInt(splitnum[0]);
    int b = Integer.parseInt(splitnum[1]);
    int random = a + (int) (Math.random()*b);
    out.println("randValue="+random);
%>
<br>
<%
    String cv = request.getParameter("counterValue");
    Integer hitsCount = (Integer)application.getAttribute("hitCounter");
    if(hitsCount==null || hitsCount == 0) {
        hitsCount = 1;
    } else {
        hitsCount+=1;
    }
    application.setAttribute("hitCounter", hitsCount);
    int c = Integer.parseInt(cv);
    int f = hitsCount+c;
    out.println("counterValue="+ f);
%>
<br>
<%
    Date date = new Date();
    String tl = request.getParameter("toLog");
    try {
        FileWriter writer = new FileWriter("/var/lib/tomcat9/webapps/text.txt", true);
        BufferedWriter bufferWriter = new BufferedWriter(writer);

        bufferWriter.write(date + " " + tl + '\n');
        bufferWriter.close();
    }
    catch(IOException ex) {
        System.out.println(ex.getMessage());
    }
    out.println("toLog=" + tl);
%>
</body>
</html>