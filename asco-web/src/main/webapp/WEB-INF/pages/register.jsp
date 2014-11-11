<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:if test="${param.success eq true}">
    <div class="alerts">
        <div class="alert alert-success">Rejestracja zakończona pomyślnie! Możesz się teraz zalogować.</div>
    </div>
</c:if>

<div class="register-panel">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><spring:message code="page.register.header"/></h3>
        </div>
        <div class="panel-body">
            <form:form commandName="user" cssClass="form-register">
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label"><spring:message code="page.register.name"/></label>
                    <div class="col-sm-10">
                        <form:input path="name" cssClass="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label"><spring:message code="page.register.email"/></label>
                    <div class="col-sm-10">
                        <form:input path="email" cssClass="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label"><spring:message code="page.register.password"/></label>
                    <div class="col-sm-10">
                        <form:password path="password" cssClass="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="submit" value="<spring:message code="page.register.btn.register"/>" class="btn btn-lg btn-primary pull-right"/>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
