<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 


<% 
 
    if(request.getParameter("submit")!=null)
    {
        String nom = request.getParameter("nom");
        String commentaire = request.getParameter("commentaire");
        String rating = request.getParameter("rating");
       
        

        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inscription","root","");
        pst = con.prepareStatement("insert into comment(nom,commentaire,rating)values(?,?,?)");
        pst.setString(1, nom);
        pst.setString(2, commentaire);
        pst.setString(3, rating);
        pst.executeUpdate(); 

     
%> 

    <script>     
        alert("Votre commentaire est bien enregistreeee");
    </script> 
    
    
   
    <%             
    }
   %>
    









<!DOCTYPE html>
<html lang="en">
    
    <style>
     .animated {
    -webkit-transition: height 0.2s;
    -moz-transition: height 0.2s;
    transition: height 0.2s;
    
}

.stars
{
    margin: 20px 0;
    font-size: 24px;
    color: #d17581;
}

#submit{
    width: 100px;
    height: 28px;
    background-color: palevioletred;
    border-color: palevioletred;
    color: black;
    text-align: center;
}
    
    </style>

<head>
  <meta charset="utf-8">
  <title>LocationAgency</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  
  
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <link href="style.css" rel="stylesheet">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="js.js"></script>
  
  

 

</head>



<body>

  

  <!--/ Rating Star /-->
  <div class="container">
	<div class="row" style="margin-top:40px;">
		<div class="col-md-6">
    	<div class="well well-sm">
            <div class="text-right">
                <a class="btn btn-success btn-green" href="login.jsp" id="open-review-box">Votre Avis</a>
            </div>
        
            <div class="row" id="post-review-box" style="display:none;">
                <div class="col-md-12">
                    <form accept-charset="UTF-8" action="" method="post">
                        <input id="ratings-hidden" name="rating" type="hidden"> 
                        
                        <div class="form-group">
                                <label for="username" class="text">Nom:</label><br>
                                <input type="text" name="nom" id="username" class="form-control" required>
                        </div>
                        
                        <div>
                            <label>Commentaire:</label>
                            <textarea class="form-control animated" cols="50" id="new-review" name="commentaire" rows="11"></textarea>
                        </div>
                        <div class="text-right">
                            <div class="stars starrr" data-rating="0"></div>
                            <button  id="submit" type="submit" name="submit"  value="submit">Confirmer</button>
                        </div>
                    </form>
                </div>
            </div>
        </div> 
         
		</div>
	</div>
</div>
  <!--/ Rating end /-->

  
 
  
  
  
  
  
  
  

 

  
  
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



</body>
</html>