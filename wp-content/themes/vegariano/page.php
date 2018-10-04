<?php get_header() ?>

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
	
</div>
		

         
          

      
       
<?php get_footer() ?>