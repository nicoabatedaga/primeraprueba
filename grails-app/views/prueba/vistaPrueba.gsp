<%--
  Created by IntelliJ IDEA.
  User: nabatedaga
  Date: 7/7/16
  Time: 11:12
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    <g:set var="miVariable">
        Hoy es: ${New Date()}
    </g:set>

    <p>
        Lo que tengo que decir es:
        <strong>${miVariable}</strong>
    </p>
</body>
</html>