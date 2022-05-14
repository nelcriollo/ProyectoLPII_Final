<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" href="./css/login.css">

</head>
<body>

	<div
		class="container-fluid w-75 h-auto fondo-container rounded shadow-lg">

		<div class="row align-items-stretch shadow-lg mt-5">

			<div
				class="col imgenfondologin d-none flex-item d-lg-block col-md-5 col-lg-5 col-xl-6 shadow-lg rounded-start">

			</div>


			<div class="col text-light rounded p-5 rounded-end shadow-lg">
				<h2 class="text-light text-center">LOGIN</h2>
				<br />
				<form action="#">
					<div class="row mb-4">
						<label for="inputEmail3"
							class="col-xsm-2 col-sm-2 col-form-label me-2">User</label>
						<div class="col-sm-9">
							<input type="email" class="form-control" name="email"
								id="idEmail">
						</div>
					</div>
					<div class="row mb-4">
						<label for="inputPassword3"
							class="col-xsm-2 col-sm-2 col-form-label me-2">Password</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" name="password"
								id="idPassword">
						</div>
					</div>
					<div class=" mb-4 d-grid">
						<button type="submit" class="btn btn-primary">Iniciar
							Sesion</button>
					</div>
					<div class="row">
						<div class="col">
							<button class="btn btn-outline-success w-100 my-1">
								<div row class="row align-items-center">
									<div class="col-2 d-none d-md-block">
										<img src="./img/facebook.png" all="we share" loading="lazy"
											width="32" />
									</div>
									<div class="col-12 col-md-10 text-center">
										<a href="https://www.facebook.com/FiscaliaPeru/"
											class="itenlink" target="_blank">Facebook</a>
									</div>
								</div>
							</button>
						</div>
						<div class="col">
							<button class="btn btn-outline-danger w-100 my-1">
								<div row class="row align-items-center">
									<div class="col-2 d-none d-md-block">
										<img src="./img/google.png" all="we share" loading="lazy"
											width="32" />
									</div>
									<div class="col-12 col-md-10 text-center">
										<a href="https://www.mpfn.gob.pe/?K=0" class="itenlink"
											target="_blank">Google</a>
									</div>
								</div>
							</button>
						</div>
					</div>
				</form>
			</div>

		</div>


	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<!-- JS para validación-->
	<script
		src="https://cdn.bootcdn.net/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

</body>
</html>