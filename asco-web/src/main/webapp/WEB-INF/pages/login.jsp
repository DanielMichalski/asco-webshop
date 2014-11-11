<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<style>

</style>

<form class="form-signin" role="form" action="/j_spring_security_check" method="POST">
  <h2 class="form-signin-heading">Zaloguj się</h2>
  <input type="text" name="j_username" class="form-control" placeholder="Name" required autofocus>
  <input type="password" name="j_password" class="form-control" placeholder="Password" required>
  <button class="btn btn-lg btn-primary btn-block" type="submit">Zaloguj</button>
</form>