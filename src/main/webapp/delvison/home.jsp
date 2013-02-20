<%@ page language="java" %>
<%
String cookieName = "school&state";
String sc = " "; 
String st= " ";
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
if (myCookie != null){
String temp = myCookie.getValue();
String[] vals = temp.split("&");
sc = vals[0];
st = vals[1];
}
%>

<html>
<body>
<p>
<b>UniHub</b>      
<div align="right">
<a href="google.jsp">Search</a> |
<% if (myCookie == null) { %>
<a href="cookieform.jsp">Set school</a>
<% } else { %> 
<a href="cookieform.jsp">Change school</a>
<% } %>
| <a href="createpost.jsp">Post a listing</a>
| <a href="viewalllistings">View all listings</a>
| <a href="login.jsp">Login</a>
</div
<br>
<% if (myCookie == null) { %>
<li>No School set yet.
<% } else { %> 
<hr>
<li>Your current university is <%=sc%>
<li>Your current location is <%=st%>.<br>
<% } %>
</body>