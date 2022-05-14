<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Principal</title>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/brands.min.css"
	integrity="sha512-OivR4OdSsE1onDm/i3J3Hpsm5GmOVvr9r49K3jJ0dnsxVzZgaOJ5MfxEAxCyGrzWozL9uJGKz6un3A7L+redIQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css"
	integrity="sha512-xX2rYBFJSj86W54Fyv1de80DWBq7zYLn2z0I9bIhQG+rxIF6XVJUpdGnsNHWRa6AvP89vtFupEPDP8eZAtu9qA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link
	href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css"
	rel="stylesheet">




<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css"
	rel="stylesheet">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

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


			<div class="d-flex d-content-between ">
				<li class="navbar dropdown"><a
					class="nav-link navbar-brand dropdown-toggle" href="#"
					id="offcanvasNavbarDropdown" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"><i
						class="fas fa-user text-light "></i> Usuario </a>

					<ul class="dropdown-menu dropdown-menu-dark fondonavbody"
						aria-labelledby="offcanvasNavbarDropdown">
						<li><a class="dropdown-item" href="#">Iniciado Sesi�n
								como:</a></li>
						<li><a class="dropdown-item" href="#">T� Perfil</a></li>
						<li><a class="dropdown-item" href="#">configuraci�n</a></li>
						<li><a class="dropdown-item" href="#">Cerrar sesi�n</a></li>
					</ul></li>
			</div>


			<div class="offcanvas offcanvas-start marg-top" tabindex="-1"
				id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel"
				data-bs-scroll="true" data-bs-backdrop="true">

				<div class="offcanvas-body fondonavbody" tabindex="-1">

					<ul class="navbar-nav flex-grow-1 pe-3 navbar-brand">


						<li class="nav-item"><a
							class="nav-link dropdown-toggle d-block" href="#"
							id="offcanvasNavbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"><i
								class="fas fa-boxes text-light me-3"></i>Mantenimiento </a>
							<ul class="dropdown-menu dropdown-menu-dark fondonavbody ms-5"
								aria-labelledby="offcanvasNavbarDropdown">
								<li><a class="dropdown-item" href="#">Registro de
										Bienes</a></li>
								<li><a class="dropdown-item" href="#">Registro de
										Proveedores</a></li>
								<li><a class="dropdown-item" href="#">Registro de
										Devoluciones</a></li>
								<li><a class="dropdown-item" href="#">Registro de Orden
										de Compra</a></li>
								<li><a class="dropdown-item" href="#">Registro de
										Control de Calidad</a></li>
							</ul></li>


						<li class="nav-item dropdown p-1"><a
							class="nav-link dropdown-toggle" href="#"
							id="offcanvasNavbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"><i
								class="fas fa-truck-loading text-light me-3"></i>Movimientos </a>
							<ul class="dropdown-menu dropdown-menu-dark fondonavbody ms-5"
								aria-labelledby="offcanvasNavbarDropdown">
								<li><a class="dropdown-item" href="#">Ingresos/Salidas
										de Almac�n </a></li>
							</ul></li>

						<li class="nav-item dropdown p-1"><a
							class="nav-link dropdown-toggle" href="#"
							id="offcanvasNavbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"><i
								class="fas fa-dna text-light me-3"></i>Consultar </a>
							<ul class="dropdown-menu dropdown-menu-dark fondonavbody ms-5"
								aria-labelledby="offcanvasNavbarDropdown">
								<li><a class="dropdown-item" href="#">Consultar Bienes</a></li>
								<li><a class="dropdown-item" href="#">Consultar Ordenes
										de Compra</a></li>
							</ul></li>

						<li class="nav-item dropdown p-1"><a
							class="nav-link dropdown-toggle" href="#"
							id="offcanvasNavbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"><i
								class="fas fa-barcode text-light me-3"></i>Reporte </a>
							<ul class="dropdown-menu dropdown-menu-dark fondonavbody ms-5"
								aria-labelledby="offcanvasNavbarDropdown">
								<li><a class="dropdown-item" href="#">Reporte de Orden
										de Compra</a></li>
								<li><a class="dropdown-item" href="#">Reporte de
										Ingresos</a></li>
								<li><a class="dropdown-item" href="#">Reporte de
										Salidas</a></li>
								<li><a class="dropdown-item" href="#">Reporte de
										Devoluciones</a></li>
								<li><a class="dropdown-item" href="#">Reporte de Bienes</a></li>

							</ul></li>

						<li class="nav-item dropdown pe-1"><a
							class="nav-link dropdown-toggle" href="#"
							id="offcanvasNavbarDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <i
								class="fas fa-users text-light me-3"></i> Nosotros
						</a>
							<ul class="dropdown-menu dropdown-menu-dark fondonavbody ms-5"
								aria-labelledby="offcanvasNavbarDropdown">
								<li><a class="dropdown-item" href="#">Qui�nes Somos</a></li>
							</ul></li>

					</ul>
				</div>
			</div>
		</div>
	</nav>

	<div class="fondomenuprincipall"></div>



	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<!-- JS para validaci�n-->
	<script
		src="https://cdn.bootcdn.net/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>
</body>
</html>