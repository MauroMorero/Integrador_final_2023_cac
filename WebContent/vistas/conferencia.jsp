<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  
      <!-- aca termina el nav-->
     <!-- aca comienza el corousel-->
 <div id="carouselSlidesOnly" class="carousel slide position-relative d-flex align-items-center justify-content-end" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/ba1.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 1">
    </div>
    <div class="carousel-item">
      <img src="img/ba2.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 2">
    </div>
    <div class="carousel-item">
      <img src="img/ba3.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 3">
    </div>
  </div>
  <div class="position-absolute text-end col-md-6 col-12 text-light px-5">
    <div class="d-none d-md-block pt-5 mt-5">
      <h1>
        Conf Bs As
      </h1>
      <p>
        Bs As llega por primera vez a Argentina. Un evento para compartir con
        nuestra comunidad el conocimiento y experiencia de los expertos que
        est�n creando el futuro de Internet. Ven a conocer a miembros del
        evento, a otros estudiantes de Codo a Codo y los oradores de primer
        nivel que tenemos para ti. �Te esperamos!
      </p>
    </div>
    <div class="d-none d-sm-block d-md-none text-center mt-5">
      <h1>
        Conf Bs As
      </h1>
      <p>
        Por primera vez a Argentina. Veni a conocer los miembros del
        evento, estudiantes y oradores de primer
        nivel que tenemos para ti. �Te esperamos!
      </p>
    </div>
    <div class="d-block d-sm-none text-center mb-0 pb-0 mt-5">
      <p class="mb-0 pt-3">
        Conoce los miembros del
        evento. �Te esperamos!
      </p>
    </div>
    <div class="pt-1 d-grid gap-2 d-md-block">
      <button type="button" class="btn btn-outline-light">Quiero ser orador</button>
      <button type="button" class="btn colorverde text-light">Comprar tickets</button>
    </div>
  </div>
</div>
<!-- aca termina el carousel-->
<!--aca comienza card group-->
<span class="text-center" id="titulos">
  <h3>CONOCE A LOS</h3>
<h2>ORADORES</h2>
</span>
          <div class=" container-fluid text-center" >
            <div class="main row">
            <div id="card" class="col col-form-label-lg">
              <img src="img/steve.jpg" alt="">
              <div class="texto-tarjetas">
                <span class="badge text-bg-primary">react</span>
                <span class="badge text-bg-warning">javaScrip</span>
              
                 <h3>Steve Jobs</h3>
                 <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda quas,  </p>
              </div>
            </div>
          
            <div  id="card" class="col-md">
              
              <img src="img/ada.jpeg" alt="">
              <div class="texto-tarjetas">
                <span class="badge text-bg-warning">javaScrip</span>
                <span class="badge text-bg-danger">startups</span>
             
              <h3>Ada Lovelace</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
              </div>
            </div>
            <div id="card" class="col">
              <img src="img/bill.jpg" alt="">
              <div class="texto-tarjetas">
                <span class="badge text-bg-primary">react</span>
                <span class="badge text-bg-warning">javaScrip</span>
                <h3>Bill Gates</h3>

                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni cupiditate necessitatibus .</p>
              </div>
            </div>
          
          </div>
          </div>
          <!--aca termina card group-->
          
          <!--aca comienza imagen con descripcion-->
          <div class="container-fluid">
            <div class="row">
          <div class=" col imagenfoto text-white bg-dark " >
            <img src="img/honolulu.jpg" alt="Imagen">
            <div class="col">
              <h2>Bs As Octubre</h2>
              <p>Buenos aires es la provincia y localidad mas grande del estado de argentina.  En Estados Unidos honolulu es la mas sure�a de entre las principales ciudades estadounidenses. Aunque el nombre de honolulu se refiere al area urbana en la costa sureste de la isla Oahu, la ciudad y el condado de Honalulu han formado una ciudad condado consolidada que cubre toda la ciudad (aproximadamente 200km de superficie)</p>
            </div>
          </div>
          </div>
        </div>
        <!--aca comienza el formulario para comentarios-->


      <div class="container-fluid" id="formulario">
        <div class="row">

          <div class="col">
            <h3>CONVI�RTETE EN UN</h3>
            <h2>ORADOR</h2>
            <fieldset>            
            <legend>Anotate como orador para dar una charla ignite. �Cuentanos de que quieres hablar!</legend>
            <input type="text" id="nombre" name="nombre" placeholder="Nombre">
            <input type="text"  id="apellido" name="apellido" placeholder="Apellido">
            
              <textarea name="cometariosr" placeholder="Sobre que quiere hablar" cols="80" rows="8" ></textarea>
              <span><p>Recuerda incluir un titulo para tu charla</p></span>
              <button>enviar</button>
            </fieldset>
        </div>
      </div>
    </div>




        <!--aca comienza el footer-->
          <footer class="footer container-fluid">
            <div class="row">

            
            <div class="col">
              <a href="#">Preguntas frecuentes</a> 
            </div>
            <div class="col">
              <a href="#">Cont�ctanos</a> 
            </div>
            <div class="col">
              <a href="#">Prensa</a> 
            </div>
            <div class="col">
              <a href="#">Conferencia</a> 
            </div>
            <div class="col">
              <a href="#">T�rminos y condiciones</a> 
            </div>
            <div class="col">
              <a href="#">Estudiantes</a> 
            </div>
            <div class="col">
              <a href="#">Privacidad</a> 
            </div>
              
              </div>
            </div>
        </footer>

                    </div>
        
      </div>
    </div>
   

  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>