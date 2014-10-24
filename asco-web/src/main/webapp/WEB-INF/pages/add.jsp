<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-with, initial-scale=1.0"/>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/styles.css" rel="stylesheet">
    <title>ASCO - Strona główna</title>
</head>

<body>
<div class="navbar navbar-inverse navbar-static-top">
    <div class="container">
        <a href="#" class="navbar-brand">ASCO</a>

        <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <div class="collapse navbar-collapse navHeaderCollapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Produkty</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Social Media <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">Facebook</a></li>
                        <li><a href="#">Google+</a></li>
                        <li><a href="#">Instagram</a></li>
                    </ul>
                </li>
                <li><a href="#">O sklepie</a></li>
                <li><a href="#">Kontakt</a></li>
                <li><a href="#">Zaloguj</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container">

    <div align="center">

        <%-- Error messages--%>
        <%--<div class="alert alert-error" ng-show="error">{{errorMessage}}</div>--%>
        <form class="form-horizontal">

            <div class="control-group">
                <label class="control-label" for="name">Imię</label>

                <div class="controls">
                    <input type="text" id="name" ng-model="name"
                           placeholder="Imię" required min="2">
                </div>
            </div>


            <div class="control-group">
                <label class="control-label" for="surname">Nazwisko</label>

                <div class="controls">
                    <input type="text" id="surname" ng-model="surname"
                           placeholder="Nazwisko" required min="2">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="email">E-mail</label>

                <div class="controls">
                    <input class="span3" type="text" id="email"
                           ng-model="email" placeholder="E-mail" required min="1">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox" ng-model="isadult"> Czy ukończone 18 lat?
                    </label>
                </div>
                <hr/>
                <div class="controls">
                    <button type="button" class="btn btn-primary"
                            ng-disabled="!rs.name || !rs.train.speed" ng-hide="editMode"
                            ng-click="addNewRailwayStation(rs)">Zarejestruj
                    </button>

                    <%--<button type="button" class="btn btn-primary"--%>
                    <%--ng-disabled="!rs.train.name || !rs.train.speed" ng-show="editMode"--%>
                    <%--ng-click="updateRailwayStation(rs)">Save Railway Station--%>
                    <%--</button>--%>
                    <button type="button" class="btn" ng-click="resetRailwayStationForm()">Reset</button>
                </div>
            </div>
        </form>
        <hr/>
    </div>

</div>

<div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
        <p class="navbar-text pull-left">Bootstrap</p>
        <a href="#" class="btn btn-danger pull-right">Subscribe on YouTube</a>
    </div>
</div>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>


<%--<form:form action="save" commandName="person" method="POST">--%>
<%--<table>--%>
<%--<tr>--%>
<%--<td><form:label path="name"><spring:message code="page.add.name"/></form:label></td>--%>
<%--<td><form:input path="name"/></td>--%>
<%--<td><form:errors path="name" cssClass="required"><spring:message code="page.add.name.required"/></form:errors></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td><form:label path="surname"><spring:message code="page.add.surname"/></form:label></td>--%>
<%--<td><form:input path="surname"/>--%>
<%--<td><form:errors path="surname" cssClass="required"><spring:message code="page.add.surname.required"/></form:errors></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td><form:label path="email"><spring:message code="page.add.email"/></form:label></td>--%>
<%--<td><form:input path="email"/>--%>
<%--<td><form:errors path="email" cssClass="required"><spring:message code="page.add.email.required"/></form:errors></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td><form:label path="discount"><spring:message code="page.add.discount"/></form:label></td>--%>
<%--<td><form:input path="discount"/>--%>
<%--<td><form:errors path="discount" cssClass="required"><spring:message code="page.add.discount.required"/></form:errors></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td><form:label path="team.id"><spring:message code="page.add.team"/></form:label></td>--%>
<%--<td><form:select items="${teams}" path="team.id" itemValue="id" itemLabel="name"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td><form:button><spring:message code="page.add.submit"/></form:button></td>--%>
<%--</tr>--%>
<%--</table>--%>
<%--</form:form>--%>