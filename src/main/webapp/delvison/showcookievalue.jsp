<%@ page language="java" %>
<%
String cookieName = "school&state";
Cookie cookies [] = request.getCookies ();
Cookie myCookie = null;

if (cookies != null){
  for (int i = 0; i < cookies.length; i++){
    if (cookies [i].getName().equals (cookieName)){
       myCookie = cookies[i];
       break;
    }
  }
}
String temp = myCookie.getValue();
String[] vals = temp.split("&");
String sc = vals[0];
String st = vals[1];

%>

<html>
<head>
<title>Show Saved Cookie</title>
</head>
<body>

<%
if (myCookie == null) {
%>

No Cookie found with the name <%=cookieName%>
<%
} else {
%> 
<p>Your school is <%=sc%> in <%=st%>.<br>
<%
}
%>
<p><a href="cookieform.jsp">Change school.</a><p>
<hr>
<a href="home">Home</a>
</body>