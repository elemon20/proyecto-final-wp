<?php get_header() ?>

<div class="header__vegariano_title"></div>

	<?php the_post(); ?>

	<div class="container mt-5">
		<div class="card bg-success card__vegariano card-columns offset-md-2 col-lg-8 col-md-12 col-sm-12">
			<div class="card-img-top">
			<?php the_post_thumbnail('custom-size-blog', array('class' => 'card-img-top')); ?>
			<div class="card__vegariano_text">
			<h5 class="card-title card-header"><?php the_title() ?></h5>
            <p class="card-text"><?php the_content() ?></p>
            </div>
        	</div>
		</div>
	
 </div>
		

         
          

      
       
<?php get_footer() ?>