<jsp:include page="Header.jsp"/>
<div id="principal" class="container">
	<div class="row mx-5 my-4">
		<div class="col-md-6 text-center p-5 lh-sm">

			<h5 class="fw-bold">Registro de Devoluci�n de Bienes</h5>
			<p>Av Abancay cuadra. 5 S/N, Lima,Per�</p>
			<p>Telf: 990990215 - 989435229</p>
		</div>

		<div class="col-md-4 text-center p-3 lh-sm border border-secondary">
			<h3>RUC:20401381291</h3>
			<h3>FICHA DE DEVOLUCI�N</h3>
			<div class="row">
				<div class=" mb-2 row g-3 d-flex justify-content-center mr-3">
					<div class="col-auto">
						<label for="inputPassword6" class="col-form-label">NRO:</label>
					</div>
					<div class="col-auto">
						<input type="text" id="inputPassword6" class="form-control"
							aria-describedby="passwordHelpInline">
					</div>

				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>

	<div class="row">
		<h3>Datos de Registro de Devoluciones</h3>
		<form class="form-horizontal border border-secondary">
			<div class="row p-3">
				<div class="col-md-10 col-12">
					<div class="row">
						<div class="col-md-6 col-12">
							<div class="row my-1">
								<label for="txtFechaDevolucion" class=" col-6 col-form-label">Fecha
									de Devoluci�n</label>
								<div class="col-6">
									<input type="date" id="txtFechaDevolucion" class="form-control">
								</div>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="row my-1">
								<label for="mpDepartamento" class="col-6 col-form-label">Remitente</label>
								<div class="col-6">
									<select id="mpDepartamento" class="form-select">
										<option selected>Seleccionar</option>
										<option></option>
										<option></option>
										<option></option>
									</select>
								</div>

							</div>

						</div>

					</div>
					<div class="row">
						<div class="col-md-6 col-12">
							<div class="row my-1">
								<label for="txtProveedor" class=" col-6 col-form-label">Proveedor</label>
								<div class="col-6">
									<input type="text" id="txtProveedor" class="form-control">
								</div>
							</div>
						</div>
						<div class="col-md-6 col-12">
							<div class="row my-1">
								<label for="mpDepartamento" class="col-6 col-form-label">Total
									cr�dito adeudado</label>
								<div class="col-6">
									<select id="mpDepartamento" class="form-select">
										<option selected>Seleccionar</option>
										<option></option>
										<option></option>
										<option></option>
									</select>
								</div>

							</div>

						</div>


					</div>
				</div>
				<div class="col-md-2 col-12">
					<div class="row my-1">
						<div class="col-lg-12 d-grid">
							<button class="btn btn-dark" type="submit">Nuevo</button>
						</div>

					</div>
					<div class="row my-1">
						<div class="col-lg-12 d-grid">
							<button class="btn btn-dark" type="submit">Grabar</button>
						</div>

					</div>
				</div>
			</div>



		</form>
	</div>


	<div class="row mt-3">
		<table class="table table-striped">
			<thead>
				<tr class="table-success">
					<th scope="col">Num. de Devoluci�n</th>
					<th scope="col">Fecha de Devoluci�n</th>
					<th scope="col">Proveedor</th>
					<th scope="col">Remitente</th>
					<th scope="col">Total de Devoluci�n</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><i class="bi bi-trash-fill" style="font-size: 1.2rem;"></i>
						<button class="btn btn-secondary float-end mx-1">Eliminar</button>
						<button class="btn btn-secondary float-end mx-1">Actualizar</button>
						<button class="btn btn-secondary float-end mx-1">Generar
							detalle</button></td>
			</tbody>
		</table>
	</div>
</div>


<jsp:include page="Footer.jsp"/>