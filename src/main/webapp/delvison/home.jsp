<%@include file="/andy/auth_headers.jsp" %>

<html>
<head>
    <%@include file="header.jsp" %>
</head>

<body>
    <% if (myCookie == null) { %>
    <hr>
    <li>No School set yet.
    <% } else { %> 
       <li>Your current university is <%=sc%>
       <li>Your current location is <%=st%>.<br>
    <% } %>
</body>
