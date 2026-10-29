<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Edit Employee</h3>
						<c:if test="${not empty msg}">
							<h5 class="text-success">${msg }</h5>
							<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath }/updateEmp" method="post">
							<input type="hidden" name="id" value="${emp.id }">
							<div class="mb-3">
								<label>Enter Full Name</label> <input type="text"
									name="fullName" class="form-control" value="${emp.fullName }">
							</div>

							<div class="mb-3">
								<label>Enter Address</label> <input type="text" name="address"
									class="form-control" value="${emp.address }">
							</div>

							<div class="mb-3">
								<label>Enter Email</label> <input type="email" name="email"
									class="form-control" value="${emp.email }">
							</div>

							<div class="mb-3">
								<label>Enter Password</label> <input type="password"
									name="password" class="form-control" value="${emp.password }">
							</div>

							<div class="mb-3">
								<label>Enter Designation</label> <input type="text"
									name="designation" class="form-control" value="${emp.designation }">
							</div>

							<div class="mb-3">
								<label>Enter Salary</label> <input type="text" name="salary"
									class="form-control" value="${emp.salary }">
							</div>
							<button class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>