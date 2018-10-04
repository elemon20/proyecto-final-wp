<?php get_header(); ?>
	
<div class="header__vegariano_title"></div>




<section class="container-fluid mt-5">
	<?php
			if ( have_posts() ) :

				/* Start the Loop */
				while ( have_posts() ) : the_post(); ?>
  <article>
    <div class="card bg-success card__vegariano card-columns offset-md-2 col-lg-8 col-md-12 col-sm-12">
      <img class="card-img-top" src="<?php echo get_theme_file_uri('assets/img/lentejas.jpg') ?>" alt="legumbres">
      <div class="card__vegariano_text">
        <h6 class="card-title card-header"><?php the_title() ?></h6>
        <br>
        <p class="card-text"><?php the_content() ?></p>
        <br>
        <hr>

        <center>
          <i class="fas fa-frog fa-2x"></i>
          <i class="fas fa-frog fa-2x fa-flip-horizontal"></i>
        
        <br>
          <p class="card-text"><small class="text-muted">30 de septiembre 2018</small></p>
        </center>
      </div>
    </div>
  </article>
  <?php endwhile; else: ?>
<h1>no se encontraron articulos</h1>
<?php endif; ?>
</section>





<section class="container mt-5">
	<div class="card__vegariano_text card-header"><center><h6 class="card-title">PERSONALIDADES.</h6></center></div>

	<div class="row mt-5">
	  <div class="col-sm">
	    <div class="img-thumbnail">
	      
	        <img id="img1" class="d-block w-100 img-rounded" src="<?php echo get_theme_file_uri('assets/img/Alberto.png') ?>">
	        
	    </div>
	  </div>
	  <div class="col-sm">
	    <div class="img-thumbnail">
	      
	        <img id="img2" class="d-block w-100 img-rounded" src="<?php echo get_theme_file_uri('assets/img/Allan.png') ?>" alt="">
 		
	    </div>
	  </div>
	   <div class="col-sm">
	    <div class="img-thumbnail">
	      
	        <img id="img3" class="d-block w-100 img-rounded" src="<?php echo get_theme_file_uri('assets/img/Benedict.png')?>" alt="">
	    </div>
	  </div>
	</div>

	<div class="row mt-5">
	  <div class="col-sm">
	    <div class="img-thumbnail">
	     
	        <img id="img4" class="d-block w-100 img-rounded" src="<?php echo get_theme_file_uri('assets/img/Brian.png')?>" alt="">
	        
	    </div>
	  </div>
	  <div class="col-sm">
	    <div class="img-thumbnail">
	     
	        <img id="img5" class="d-block w-100 img-rounded" src="<?php echo get_theme_file_uri('assets/img/Bin.png') ?>" alt="">
 			 
	    </div>
	  </div>
	   <div class="col-sm">
	    <div class="img-thumbnail">
	     
	        <img id="img6" class="d-block w-100 img-rounded" src="<?php echo get_theme_file_uri('assets/img/Daisy.png') ?>" alt="">
	        
	    </div>
	  </div>
	</div>
 
</section>


<?php get_footer(); ?>