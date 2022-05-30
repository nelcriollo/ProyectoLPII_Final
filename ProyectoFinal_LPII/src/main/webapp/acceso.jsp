

<%
if (request.getSession().getAttribute("LISTAMenu") == null)
	response.sendRedirect("login.jsp");
%>
<jsp:include page="header.jsp" />

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceso</title>


<!-- Los estilos de Bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<!-- Para usar las tablas de Bootstrap-->
<link
	href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css"
	rel="stylesheet">

</head>
<body>

	<div class="container">


		<div class="row ">
			<h2 class="text-center mt-5 fw-bolder fs-1">Mantenimiento de Usuario</h2>
			<div class="row  mb-5 ms-0 justify-content-end align-items-center">
				<div class="col  align-middle">
					<a class="btn btn-secondary float-end " class="btn btn-success"
						href="ServletAcceso?tipo=LISTAR" role="button">Listar Accesos</a>
				</div>
			</div>
			<div class="row ms-0 d-flex p-2">
				<div class="col mt-5">
					<form class="row rounded p-2 border border-dark">

						<div class="col-md-6">
							<label for="inputPassword4" class="form-label">Usuario</label> <input
								type="text" class="form-control" id="inputPassword4">
						</div>
						<div class="col-md-6">
							<label for="inputState" class="form-label">Menu</label> <select
								id="inputState" class="form-select">
								<option selected>Choose...</option>
								<option>...</option>
							</select>
						</div>

						<div class="col-md-12">
							<label for="inputState" class="form-label">Opcion de Menu</label>
							<select id="inputState" class="form-select">
								<option selected>Choose...</option>
								<option>...</option>
							</select>
						</div>

						<div class="col-12">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck">
								<label class="form-check-label" for="gridCheck"> Check
									me out </label>
							</div>
						</div>
						<div class="row d-flex justify-content-center">
							<div class="col-3 p-2">
								<button type="submit" class="btn btn-primary">Registar</button>
							</div>
							<div class="col-3 p-2">
								<button type="btn" class="btn btn-secondary">Cancelar</button>
							</div>
						</div>
					</form>
				</div>

				<div class="col mt-5">
					<div class=" row p-2 table-responsive">
						<table id="example"
							class="table  table-striped fw-light mb-0 align-top"
							style="width: 100%">
							<thead class="table-dark fw-light">
								<tr>
									<th>NOMBRE DE MENU</th>
									<th>USUARIO</th>
									<th>OPCION DEL MENU</th>
									<th></th>
									<th></th>

								</tr>
							</thead>
							<tbody>
								<c:forEach items="${requestScope.listaAccesos}" var="row">
									<tr>
										<td>${row.des_menu}</td>
										<td>${row.login_usuario}</td>
										<td>${row.des_rol}</td>


										<td class="p-1"><button type="button"
												class="btn btn-outline-success btn-sm align-top"
												data-bs-toggle="modal" data-bs-target="#staticBackdrop"
												id="cerrarmsj" onclick="fcerrar()">Editar</button></td>
										<td class="p-1"><button type="button"
												class="btn btn-outline-danger btn-sm align-top p-1"
												data-bs-toggle="modal" data-bs-target="#modalElimimar">Eliminar</button></td>

									</tr>
								</c:forEach>

							</tbody>
						</table>

					</div>

				</div>



			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp" />




	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- JS para validación-->
	<script
		src="https://cdn.bootcdn.net/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

	<script>
		var popoverTriggerList = [].slice.call(document
				.querySelectorAll('[data-bs-toggle="popover"]'))
		var popoverList = popoverTriggerList.map(function(popoverTriggerEl) {
			return new bootstrap.Popover(popoverTriggerEl)
		})
	</script>

</body>
</html>