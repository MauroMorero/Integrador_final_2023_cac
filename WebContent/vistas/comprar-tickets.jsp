<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/comprar-tickets.js"></script>
    <link rel="stylesheet" href="ccs/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
  <div class="contenedor">
  
  <!-- aca comienza el nav-->
  <header>
    <nav class="navbar ">
  <div>
    <img src="img/codoacodo.png" alt="Logo" class="logo" onclick="location.href='FrontControler'">
    <span class="text-white">Conf Bs As</span>
  </div>
    <ul class="nav">
      <li><a href="#">La Conferencia</a></li>
      <li><a href="#">Los oradores</a></li>
      <li><a href="#">El lugar y la fecha</a></li>
      <li><a href="#">Convierte en orador</a></li>
      <li><button type="button" class="tickets" onclick="location.href='FrontControler?accion=comprar'">Comprar tickets</button></li>
      <li><button type="button" class="text-warning" onclick="location.href='FrontControler?accion=backoffice'">back office</button></li>
      
    </ul>
  </div>
</nav>
</header>

<main>

<main>

    <section class="container pt-section">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">

                <div class="row row-cols-1 row-cols-md-3 text-center">
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-primary">
                            <div class="card-header py-3 text-white bg-primary border-primary">
                                <h4 class="my-0 fw-normal">Estudiante</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">80%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-info">
                            <div class="card-header py-3 text-white bg-info border-info">
                                <h4 class="my-0 fw-normal">Trainee</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">50%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-warning">
                            <div class="card-header py-3 text-white bg-warning border-warning">
                                <h4 class="my-0 fw-normal">Junior</h4>
                            </div>
                            <div class="card-body">
                                <p>Tienen un descuento</p>
                                <h3 class="card-title pricing-card-title">15%</h3>
                                <small class="fw-light text-muted mt-3">* Presentar documentación</small>
                            </div>
                        </div>
                    </div>
                </div>

                <h2 class="titulo-gral">Venta <span>Valor de ticket $200</span></h2>
                
                <form action="FrontControler?accion=insertar" method="post">
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Nombre" name="nombre" aria-label="Nombre" id="nombre" required>
                        </div>
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Apellido" name="apellido" aria-label="Apellido" id="apellido" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="email" class="form-control" placeholder="Email" aria-label="Email" name="mail" id="mail" required>
                        </div>
                    </div>
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <label for="cantidadTickets" class="form-label">Cantidad</label>
                            <input type="number" class="form-control" placeholder="Cantidad" name="cant" aria-label="Cantidad" id="cantidadTickets" min="1" required>
                        </div>
                        <div class="col-md mb-3">
                            <label for="categoriaSelect" class="form-label">Categoria</label>
                            <select class="form-select" aria-label="Categoría" id="categoriaSelect" name="categoria">
                                <option value="" selected>-- Seleccione --</option>
                                <option value="0">Sin Categoria</option>
                                <option value="1">Estudiante</option>
                                <option value="2">Trainee</option>
                                <option value="3">Junior</option>
                            </select>
                        </div>
                    </div>
                    <div class="alert alert-primary mt-2 mb-4" role="alert">
                        Total a pagar: $ <span id="totalPago" class="align-middle"></span>
                    </div>
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <button type="button" onclick="location.href='FrontControler'"   class="w-100 btn btn-warning" id="btnBorrar">Volver</button>
                        </div>
                        <div class="col-md mb-3">
                            <button type="reset" class="w-100 btn btn-danger" id="btnBorrar">Borrar</button>
                        </div>
                        <div class="col-md mb-3">
                        	<button type="submit" class="w-100 btn btn-success" >Comprar</button>
                        </div> 
                        
                        
                    </div>
                </form>
            </div>
        </div>
    </section>

</main>

<!--aca comienza el footer-->
          <footer class="footer container-fluid">
            <div class="row">

            
            <div class="col">
              <a href="#">Preguntas frecuentes</a> 
            </div>
            <div class="col">
              <a href="#">Contáctanos</a> 
            </div>
            <div class="col">
              <a href="#">Prensa</a> 
            </div>
            <div class="col">
              <a href="#">Conferencia</a> 
            </div>
            <div class="col">
              <a href="#">Términos y condiciones</a> 
            </div>
            <div class="col">
              <a href="#">Estudiantes</a> 
            </div>
            <div class="col">
              <a href="#">Privacidad</a> 
            </div>
              
              </div>
            
        </footer>

                   
        
      
    

 
  <script src="js/comprar-tickets.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>