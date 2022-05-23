<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
					<li><a tabindex="0" class="dropdown-item text-center" href="#"
						role="button" data-bs-toggle="popover"
						data-bs-trigger="hover focus" data-bs-placement="left"
						title="Bienvenido al Sistema"
						data-bs-content="El Ministerio P�blico te desea un buen d�a. ${requestScope.usuario.nombre},${requestScope.usuario.apellido}  ">

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





