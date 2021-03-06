
<%
if (request.getSession().getAttribute("LISTAMenu") == null)
	response.sendRedirect("login.jsp");
%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Principal</title>

<!--  jquery-->
<link rel="stylesheet"
	href=" https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

<!-- Los iconos tipo Solid de Fontawesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Los estilos de Bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Los estilos locales de la carpeta css de proyecto-->
<link rel="stylesheet" href="./css/menu.css">


</head>
<body>
	<nav
		class="navbar sticky-top navbar-dark fondonavsup justify-content-between">
		<div class="container-fluid">

			<div class="d-flex d-content-start">
				<!--Brand-->
				<a href="#" class="navbar-brand d-flex"> <img
					src="./img/logominis_navbar.svg" all="we share" loading="lazy"
					class="navbar-brand__sup text-light" />
				</a>
				<button class="navbar-toggler navbar-brand__icon" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
					aria-controls="offcanvasNavbar">
					<i class="fas fa-home text-light"></i>
				</button>
			</div>

			<div class="btn-group">
				<c:if test="${requestScope.usuario !=null}">
					<button type="button"
						class="btn bg-dark text-white dropdown-menu-dark dropdown-toggle btn btn-round btn-theme"
						data-bs-toggle="dropdown" data-bs-display="static"
						aria-expanded="false">
						${requestScope.usuario.login_usuario}<i
							class="fa-solid fa-arrow-down ms-2"></i>
					</button>

					<ul
						class="dropdown-menu dropdown-menu-lg-end fondonavbody dropdown-menu-dark ms-5">
						<li><a tabindex="0" class="dropdown-item text-center"
							href="#" role="button" data-bs-toggle="popover"
							data-bs-trigger="hover focus" data-bs-placement="left"
							title="Bienvenido al Sistema"
							data-bs-content="El Ministerio P?blico te desea un buen d?a. ${requestScope.usuario.nombre},${requestScope.usuario.apellido}  ">

								<i class="fa fa-user mt-2 me-2"></i>
						</a></li>

						<li><a class="dropdown-item text-center"
							href="ServletUsuario?tipo=CERRAR"><i
								class="fa fa-lock mt-2 me-2"></i>Salir</a></li>
					</ul>
				</c:if>
			</div>

			<div class="offcanvas offcanvas-start marg-top" tabindex="-1"
				id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel"
				data-bs-scroll="true" data-bs-backdrop="true">

				<div class="offcanvas-body fondonavbody" tabindex="-1">

					<ul class="navbar-nav flex-grow-1 pe-3 navbar-brand">

						<c:forEach items="${sessionScope.LISTAMenu}" var="beaan">
							<li class="nav-item"><a
								class="nav-link dropdown-toggle d-block" href="#"
								id="offcanvasNavbarDropdown" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"><i
									class="${beaan.icono_menu}"></i>${beaan.des_menu}</a>

								<ul class="dropdown-menu dropdown-menu-dark fondonavbody ms-5"
									aria-labelledby="offcanvasNavbarDropdown">
									<c:forEach items="${sessionScope.LISTAOpciones}" var="bean">
										<c:if test="${bean.cod_menu==beaan.cod_menu}">

											<li><a class="dropdown-item" href="${bean.url_rolmenu}">${bean.des_rolmenu}</a></li>
										</c:if>
									</c:forEach>
								</ul></li>
						</c:forEach>
					</ul>

				</div>
			</div>
		</div>
	</nav>

	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- JS para validaci?n-->
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