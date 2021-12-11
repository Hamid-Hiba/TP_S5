<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>LocationAgency</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  
  
  
  
  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  <style>
  .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
  </style>

  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>



  <!--/ Nav Star /-->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="index.html">Location<span class="color-b">Agency</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
        
        <li class="nav-item">
          
            <h8 class="nav-link active" >Bienvenue , ${user.nom}</h8>
          </li>
       
          <li class="nav-item">
          
            <a class="nav-link active" href="home.jsp">Acceuil</a>
          </li>
          <li class="nav-item">
          
            <a class="nav-link active" href="home.jsp">Réservations </a>
          </li>
          <li class="nav-item">
          
            <a class="nav-link active" href="home.jsp">Publier une annonce</a>
          </li>
         
          
          <li class="nav-item">
              <form action="Logout" method="post" >
         <button type="submit" class="btn btn-outline-danger" value="Logout"> Logout </button>
        </form>
          </li>
        
          
      </div>
      
    </div>
  </nav>
  <!--/ Nav End /-->




  <!--/ Contact Star /-->
  <section class="contact">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
         
        </div>
        <div class="col-sm-12 section-t8">
          <div class="row">
            <div class="col-md-7">
            
                
                <div id="errormessage"></div>
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <div class="form-group">
                     <form class="form-a contactForm"  action= method ="post" >
                     <input type=hidden name ="id" value="${user.id_user}"/></td>
                    <h5>Nom</h5>
                      <input type="text" name="nom" class="form-control form-control-lg form-control-a"  >
                      <div class="validation"></div>
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="form-group">
                    	<h5>Prénom</h5>
                      <input type="text" name="prenom" class="form-control form-control-lg form-control-a" >
                      <div class="validation"></div>
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="form-group">
                    <h5>E-mail</h5>
                      <input name="email" type="email" class="form-control form-control-lg form-control-a"  >
                      <div class="validation"></div>
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <div class="form-group">
                    <h5>Age</h5>
                      <input name="age" type="text" class="form-control form-control-lg form-control-a" value="<c:out value='${prop.age}' />">
                      <div class="validation"></div>
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                  <h5>Sexe</h5>
                  <div class="form-check form-check-inline">
 				 <input class="form-check-input" type="radio" name="sexe"  value="<c:out value='${prop.age}' />">
  				<label class="form-check-label" for="inlineRadio1">Femme</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="sexe" value="<c:out value='${prop.age}' />">
  				   <label class="form-check-label" for="inlineRadio2">Homme</label>
				</div>
                      <div class="validation"></div>
                      </div>
               
                 <div class="col-md-6 mb-3">
                 <h5>Organisation</h5>
                    <div class="form-check form-check-inline">
 				 <input class="form-check-input" type="radio" name="organisation[]" id="inlineRadio1" value="Jamais">
  				<label class="form-check-label" for="inlineRadio1">Jamais</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="organisation[]" id="inlineRadio2" value="Parfois">
  				   <label class="form-check-label" for="inlineRadio2">Parfois</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="organisation[]" id="inlineRadio2" value="Regulierement">
  				   <label class="form-check-label" for="inlineRadio2">Régulièrement </label>
				</div>
                      <div class="validation"></div>
                      </div>
                 
                  
                  <div class="col-md-6 mb-3">
                 <h5>Nettoyage</h5>
                    <div class="form-check form-check-inline">
 				 <input class="form-check-input" type="radio" name="nettoyage" id="inlineRadio1" value="Jamais">
  				<label class="form-check-label" for="inlineRadio1">Jamais</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="nettoyage" id="inlineRadio2" value="Parfois">
  				   <label class="form-check-label" for="inlineRadio2">Parfois</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="nettoyage" id="inlineRadio2" value="Regulierement">
  				   <label class="form-check-label" for="inlineRadio2">Régulièrement </label>
				</div>
                      <div class="validation"></div>
                      </div>
             
                 
                  <div class="col-md-6 mb-3">
                 <h5>Fumer</h5>
                   <div class="form-check form-check-inline">
 				 <input class="form-check-input" type="radio" name="fumer" id="inlineRadio1" value="Jamais">
  				<label class="form-check-label" for="inlineRadio1">Jamais</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="fumer" id="inlineRadio2" value="Parfois">
  				   <label class="form-check-label" for="inlineRadio2">Parfois</label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio" name="fumer" id="inlineRadio2" value="Regulierement">
  				   <label class="form-check-label" for="inlineRadio2">Régulièrement </label>
				</div>
                      <div class="validation"></div>
                      </div>
                 
           
           <div class="col-md-6 mb-3">
                 <h5>Intérêts</h5>
                   <div class="form-check form-check-inline">
  					<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="Sport" name="interet">
  					<label class="form-check-label" for="inlineCheckbox1">Sport</label>
					</div>
					<div class="form-check form-check-inline">
 					 <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="Musique" name="interet">
 					 <label class="form-check-label" for="inlineCheckbox2">Musique</label>
					</div>
					<div class="form-check form-check-inline">
 					 <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="Gaming" name="interet">
 					 <label class="form-check-label" for="inlineCheckbox2">Gaming</label>
					</div>
					<div class="form-check form-check-inline">
 					 <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="Voyage" name="interet">
 					 <label class="form-check-label" for="inlineCheckbox2">Voyage</label>
					</div>
                      <div class="validation"></div>
                      </div>
                  
                 <div class="col-md-12 mb-3">
                    <div class="form-group">
                    <h5>Description</h5>
                      <input name="description" type="text" class="form-control form-control-lg form-control-a"  value="<c:out value='${prop.description}' />">

                    </div>
                  </div>
                 
                  <div class="col-md-12">
                    
                <button><input type="submit"  class="btn btn-a"  value="Update"></button>
                  </div>
                </div>
              </form>
            </div>
            <div class="col-md-5 section-md-t3">
              <div class="card">
  					<img src="img.jpg" style="width:100%">
 				    <h1>${user.prenom} ${user.nom}</h1>
  					
  					<h3>${prop.age}</h3>
			</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Contact End /-->

  
  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/popper/popper.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
        