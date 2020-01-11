<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en"> 
  <head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- loading page -->

    
    <!--Site Title-->
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <!--Stylesheets  -->
    <link href="//fonts.googleapis.com/css?family=Pacifico%7CLato:400,100,100italic,300,300italic,700,400italic,900,700italic,900italic%7CMontserrat:400,700" rel="stylesheet" type="text/css">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" ><!-- versione del bootstrap.css remota -->
<!-- Bootsrap utiliizza librereia jQuery per far funzionare il suo java script, quindi dobiamo collegare anche questa biblioteca alla nostra pagina ma sempre prima di bootstrap.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--  <link rel="stylesheet" href="css/bootstrap.css"> -->
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/fother.css">
    <link rel="load" href="css/loadingPage.css">
    <script src="js/main.js"></script>
    <script src="js/main.js"></script>
    <script src="js/load.js"></script>
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
    
    <link rel="stylesheet" href="loadingPage.css">
  </head>


<body>
<div id="overlay">
<div class="spinner"></div> 
</div>

<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Alta Sartoria</a>
		</div>

		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="http://localhost:8080/pr">Home</a></li>
				<li><a href="http://localhost:8080/pr/abb.html">Abbigliamento</a></li>
				<li><a href="http://localhost:8080/pr/doveSiamo.html">I nostri punti vendita</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="http://localhost:8080/pr/login.html"><span
						class="glyphicon glyphicon-log-in"></span> Amministratore</a></li>
						
						<li><a href="http://localhost:8080/pr/loginUtente.html"><span
						class="glyphicon glyphicon-log-in"></span> Utente</a></li>
						<c:if test="${utenteNor != null }">
						Benvenuto ${utenteNor.username};
						<a class="dropdown-item" href="login?logout=true">Logout</a>
						</c:if>	
						
						<c:if test="${utente != null }">
						Benvenuto ${utente.username};
						<a class="dropdown-item" href="login?logout=true">Logout</a>
						<a class="dropdown-item" href="http://localhost:8080/pr/gestioneOrdini/ottieniOrdini.jsp">Ordini del giorno</a>
						</c:if>
						
					</ul>
					</li>
				<li><a href="http://localhost:8080/pr/gestioneStudenti/iscriviStudenti.html">Sign Up</a></li>
			</ul>
		</div>
	</nav>

          <!--Swiper-->
          <div class="swiper-container swiper-slider" data-autoplay="5000" data-slide-effect="fade" data-loop="false">
            <div class="jumbotron text-center">
              <h1><small>#1 Web dress shop</small>Benvenuti su Alta Sartoria
              </h1>
              <p class="big">Noi creiamo prodotti di qualità <br>su misura per le tue esigenze</p><div class='button-group-variant'> <a class='button button-default round-xl button-sm' href="http://localhost:8080/pr/abb.html">Buy Now</a> <a class='button button-default round-xl button-sm' href="http://localhost:8080/pr/abb.html">View Features</a></div>
            </div>
            <div class="swiper-wrapper">
              <div class="swiper-slide" data-slide-bg="images/3.jpg">
                <div class="swiper-slide-caption"></div>
              </div>
              <div class="swiper-slide" data-slide-bg="images/4.jpg">
                <div class="swiper-slide-caption"></div>
              </div>
              <div class="swiper-slide" data-slide-bg="images/due.jpg">
                <div class="swiper-slide-caption"></div>
              </div>
            </div>
          </div>
      <!--
      ========================================================
      												CONTENT
      ========================================================
      -->
      <main class="page-content"> 
        <!--Start section-->
        <section class="text-center well well-sm">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-xl-10">
                <h1 class="font-weight-bold">Cosa offriamo</h1>
                <p class="lead big">Noi creiamo <a class="text-primary" href="#">abiti</a> riparazioni<a class="text-primary" href="#"> sartoriali</a>. Noi possiamo aiutarti  <a class="text-primary" href="#">nella scelta </a>per la creazione del tuo abito su misura.</p><img class="box-shadow margin-2 margin-negative" src="images/un.jpg" alt="">
              </div>
            </div>
          </div>
        </section>
        <!--End section-->

        <!--Start section-->
        <section class="well well-sm bg-lighter relative text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-xl-6">
                <h1 class="font-weight-bold">Guardiamo al futuro</h1>
                <p class="lead">
                  Noi lavoriamo costantemente con le grandi marche per non perdere mai nessuna novità  che il mercato ci offre.
                </p>
              </div>
            </div>
            <div class="row margin-1 text-lg-left">
              <div class="col-md-6 col-lg-3"><span class="icon icon-lg icon-primary fa-heartbeat"></span>
                <h5>La sartoria su misura</h5>
                <p>Vuoi dare forma alla tua idea di moda? Cerchi lo stile giusto per la tua femminilità ? O vuoi semplicemente personalizzare quel fantastico capo vintage? In ogni caso, benvenuta nel nostro atelier!</p>
              </div>
              <div class="col-md-6 col-lg-3"><span class="icon icon-lg icon-primary fa-compass"></span>
                <h5>Le creazioni originali</h5>
                <p>Dall'incontro tra fashion design, abilità  sartoriale e valori sociali nasce la collezione Social Chic - Dressmaking. Capi unici e modelli personalizzabili in serie limitata, realizzati con stoffe di pregio.</p>
              </div>
              <div class="col-md-6 col-lg-3"><span class="icon icon-lg icon-primary fa-edit"></span>
                <h5>Marche italiane</h5>
                <p>I brand socialmente più sensibili del Made in Italy possono rivolgersi all'atelier Social Chic per la realizzazione dei loro capi. O anche per progettare insieme una linea di alta moda solidale.</p>
              </div>
              <div class="col-md-6 col-lg-3"><span class="icon icon-lg icon-primary fa-comments-o"></span>
                <h5>24/7 Supporto</h5>
                <p>È necessario per noi offrire un modello di supporto che rispetti tale tempistica. Per questo Hoist Group offre assistenza 24 ore su 24, 7 giorni su 7</p>
              </div>
            </div>
          </div>
        </section>
        <!--End section-->

        <!--Start section-->
        <section class="well well-sm text-center text-lg-left">
          <div class="container">
            <div class="row justify-content-lg-between">
              <div class="col-lg-6 col-xl-5">
                <h1 class="font-weight-bold">Dicono di noi</h1>
                <p class="lead">Leggi tu stesso cosa dicono di noi. <br><br>Probabilmente non avrai un'opportunità  migliore per essere sicuro della nostra competenza e della cordialità  nei confronti dei nostri clienti.</p>
              </div>
              <div class="col-lg-6 col-xl-6 text-left">
                <div class="inset-2">
                          <!--Linear progress bar-->
                          <div class="progress-linear">
                            <div class="progress-linear-header">
                              <p class="progress-linear-title">Creatività </p>
                            </div>
                             <div class="w3-light-grey w3-round">
  								<div class="w3-container w3-round w3-blue" style="width:75%">75%</div>
								</div> 
                          </div>
                          <!--Linear progress bar-->
                          <div class="progress-linear">
                            <div class="progress-linear-header">
                              <p class="progress-linear-title">Marche</p>
                            </div>
                            <div class="w3-light-grey w3-round">
  								<div class="w3-container w3-round w3-blue" style="width:85%">85%</div>
							</div> 
                          </div>
                          <!--Linear progress bar-->
                          <div class="progress-linear">
                            <div class="progress-linear-header">
                              <p class="progress-linear-title">Supporto</p>
                            </div>
                            <div class="w3-light-grey w3-round">
  								<div class="w3-container w3-round w3-blue" style="width:95%">95%</div>
							</div> 
                          </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!--End section-->

        <!--Start section-->
        <section class="bg-dark-var1 text-center">
          <div class="container counter-panel">
            <div class="row">
              <div class="col-6 col-md-6 col-lg-3">
                <div class="counter">197</div>
                <p class="text-opacity font-secondary text-uppercase">Visite dell'ultima ora</p>
              </div>
              <div class="col-6 col-md-6 col-lg-3">
                <div class="counter">23</div>
                <p class="text-opacity font-secondary text-uppercase">Acquisti dell'ultima ora</p>
              </div>
              <div class="col-6 col-md-6 col-lg-3">
                <div class="counter">98</div>
                <p class="text-opacity font-secondary text-uppercase">Persone che parlano di noi nell'ultimo giorno</p>
              </div>
              <div class="col-6 col-md-6 col-lg-3">
                <div class="counter">7230</div>
                <p class="text-opacity font-secondary text-uppercase">Riparazioni nell'ultima ora</p>
              </div>
            </div>
          </div>
        </section>
        <!--End section-->

        <!--Start section-->
        <section class="well well-sm well-inset-2 text-center text-lg-left">
          <div class="container">
            <h1 class="font-weight-bold text-center">Dai nostri blog</h1>
            <div class="row row-30">
              <div class="col-lg-4">
                <article class="thumbnail thumbnail-4"><img src="images/a.jpg" alt="">
                  <div class="caption">
                    <h4><a href="#">Un ottimo team</a></h4>
                    <p class="text-dark-variant-2">Un ottimo team di creatori realizzano abiti da sogno.</p>
                    <div class="blog-info">
                      <div class="pull-md-left">
                        <time class="meta fa-calendar" datetime="2019">Feb 10, 2019</time><a class="badge fa-comments font-secondary" href="#">13</a>
                      </div><a class="button-link" href="#">Read More</a>
                    </div>
                  </div>
                </article>
              </div>
              <div class="col-lg-4">
                <article class="thumbnail thumbnail-4"><img src="images/b.jpg" alt="">
                  <div class="caption">
                    <h4><a href="#">Primi sul mercato</a></h4>
                    <p class="text-dark-variant-2">Dall'ultimo sondaggio i primi sul mercato con più vendite siamo proprio noi! ..</p>
                    <div class="blog-info">
                      <div class="pull-md-left">
                        <time class="meta fa-calendar" datetime="2019">Feb 10, 2019</time><a class="badge fa-comments font-secondary" href="#">13</a>
                      </div><a class="button-link" href="#">Read More</a>
                    </div>
                  </div>
                </article>
              </div>
              <div class="col-lg-4">
                <article class="thumbnail thumbnail-4"><img src="images/c.jpg" alt="">
                  <div class="caption">
                    <h4><a href="#">Perchè i clienti hanno bisogno di noi?</a></h4>
                    <p class="text-dark-variant-2">Siamo degli ottimi creatori in tempi brevissimi, realizziamo tutto a mano e con la ...</p>
                    <div class="blog-info">
                      <div class="pull-md-left">
                        <time class="meta fa-calendar" datetime="2019">Feb 10, 2019</time><a class="badge fa-comments font-secondary" href="#">13</a>
                      </div><a class="button-link" href="#">Read More</a>
                    </div>
                  </div>
                </article>
              </div>
            </div>
          </div>
        </section>
        <!--End section-->

        <!--Start section-->
        <section class="well well-sm well-inset-2 text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-xl-6">
                <h1 class="font-weight-bold text-center">Tell us about</h1>
                <p class="lead">Le testimonianze dei nostri clienti</p>
              </div>
            </div>
            <div class="row margin-1">
              <!--Owl Carousel-->
              <div class="owl-carousel" data-autoplay="true" data-items="1" data-md-items="2" data-sm-items="1" data-lg-items="3" data-nav="true" data-margin="30" data-loop="true">
                <blockquote class="quote-2"><img class="rounded-circle" src="images/1a.png" alt="">
                  <h6>
                    <cite>Valentino</cite>
                  </h6>
                  <p class="small text-light-clr text-uppercase">Regular Client</p>
                  <p class="heading-6 font-italic font-base text-base">
                    <q>Ho scelto la Sartoria per il mio abito da sposo e rifarei la stessa scelta senza alcuna esitazione. Tessuti di ottima qualità  e risultato finale eccellente ed elegante. Ringrazio per la sua professionalità  e per avermi consigliato in maniera perfetta. Consiglio vivamente!</q>
                  </p>
                </blockquote>
                <blockquote class="quote-2"><img class="rounded-circle" src="images/4a.jpg" alt="">
                  <h6>
                    <cite>Chiara</cite>
                  </h6>
                  <p class="small text-light-clr text-uppercase">Regular Client</p>
                  <p class="heading-6 font-italic font-base text-base">
                    <q>Sono da molto tempo cliente della Sartoria abiti eleganti e di qualità  superiore. Un ringraziamento speciale alla stilista, sempre gentile e disponibile. CONSIGLIATISSIMO !!!</q>
                  </p>
                </blockquote>
                <blockquote class="quote-2"><img class="rounded-circle" src="images/2a.jpg" alt="">
                  <h6>
                    <cite>Alessia</cite>
                  </h6>
                  <p class="small text-light-clr text-uppercase">Regular Client</p>
                  <p class="heading-6 font-italic font-base text-base">
                    <q>Sono stato accolto con grande gentilezza e competenza.Nonostante le difficoltà  legate alla misura e una improvvisa richiesta di consegna anticipata sono riusciti a farmi avere un abito di qualità  nei tempi.</q>
                  </p>
                </blockquote>
              </div>
            </div>
          </div>
        </section>
        <!--End section-->
      </main>
      <!--
      ========================================================
      												FOOTER
      ========================================================

    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"> </div>
    <!--Core Scripts-->
    <script src="js/core.min.js"></script>
    <!--Additional Functionality Scripts-->
    <script src="js/script.js"></script>
<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <h4> Alta sartoria </h4>
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                    <h3> Contact </h3>
                    <ul>
                        <li><a class="email"href="#"> altasartoria@gmail.com </a></li>
                        <br/>
                        <li> <p> via slovenia, Milano </p> </li>
                        <li> <p> via russia, Roma </p> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-2 col-xs-3">
                    <ul>
                        <li> <h5> <a href="#" style="margin-top: 5em"> ABOUT US</a> <h5></li>
                        <li> <h5><a href="http://localhost:8080/pr/loginUtente.html"> Login </a> <h5></li>
                        <li> <h5><a href="http://localhost:8080/pr/index.jsp"> Home </a> <h5></li>
                        <li> <h5><a href="http://localhost:8080/pr/index.jsp"> Abbigliamento </a> <h5></li>
                    </ul>
                </div>
               
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
                          
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left copyright"> Copyright © Footer 2014. All right reserved. </p>
       
        </div>
    </div>
    <!--/.footer-bottom--> 

</footer>
  </body>
</html>