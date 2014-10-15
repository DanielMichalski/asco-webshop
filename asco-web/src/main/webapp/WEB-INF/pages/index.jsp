<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <title>Strona główna</title>
</head>

<body>
<div id="wrapper">
    <div id="header">

    </div>
    <div id="content">
        <p>
            <a href="${pageContext.request.contextPath}/person/list">Lista osób</a>
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/person/add">Rejestracja</a>
        </p>
    </div>
</div>
</body>
</html>