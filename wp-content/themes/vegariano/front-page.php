<?php get_header(); ?>

 <!-- title -->

 <div class="header__vegariano_title"><h1></h1></div>

 <!-- End title -->

</header>

<!-- end header -->

<!-- main -->

<main class="main__vegariano">

  <!-- first section -->

  <div class="container-fluid text-center">

    <hr>
    <i class="fas fa-dove fa-2x mr-2"></i>
    <i class="fas fa-seedling fa-4x fa-spin"></i>
    <i class="fas fa-dove fa-2x fa-flip-horizontal ml-2"></i>
    <hr>
  </div>

  <!-- News section -->



  <section class="container-fluid">

        

    <div class="row  mr-0 ml-0">

      <?php
            $arg = array(
              'post_type'    => 'cards',
              'posts_per_page' => 10,
                //'post_not_in'  => array($post->ID),
              'paged'      => $paged
            );
            $get_arg = new WP_Query( $arg );
            while ( $get_arg->have_posts() ) {
              $get_arg->the_post();
        ?>

      
      <div class="card-columns col-lg-8 col-md-12 col-sm-12">

       

        <div class="card">
          
          
              <?php the_post_thumbnail('post-custom-size', array('class' => 'card-img-top')); ?>
         
            <div class="card-body">
             
              <h5 class="card-title"><?php the_title() ?></h5>
              <p class="card-text"><?php the_content() ?></p>
              
              <p class="card-text"><small class="text-muted"><a href="<?php the_permalink(''); ?>"><?php the_field('enlace_1') ?></a></small></p>
            </div>
            <?php } wp_reset_postdata(); ?>
        </div>
            
            <div class="card p-3">
              <?php
                  $arg = array(
                    'post_type'    => 'cards2',
                    'posts_per_page' => 10,
                      //'post_not_in'  => array($post->ID),
                    'paged'      => $paged
                  );
                  $get_arg = new WP_Query( $arg );
                  while ( $get_arg->have_posts() ) {
                    $get_arg->the_post();
                ?>
                  <blockquote class="blockquote mb-0 card-body">
                    <p><?php the_field('texto_2') ?></p>
                    <p class="card-text"><small class="text-muted"><a href="#"><?php the_field('enlace_2') ?></a></small></p>
                  </blockquote>

                  <?php } wp_reset_postdata(); ?>
            </div>

            

           


            <div class="card">
               <?php
                  $arg = array(
                    'post_type'    => 'cards3',
                    'posts_per_page' => 10,
                      //'post_not_in'  => array($post->ID),
                    'paged'      => $paged
                  );
                  $get_arg = new WP_Query( $arg );
                  while ( $get_arg->have_posts() ) {
                    $get_arg->the_post();
                ?>
              

              <?php the_post_thumbnail('post-custom-size', array('class' => 'card-img-top')); ?>
                  
                  <div class="card-body">
                    <h5 class="card-title"><?php the_field('titulo_3') ?></h5>
                    <p class="card-text"><?php the_field('texto_3') ?></p>
                    <p class="card-text"><small class="text-muted"><a href="#"><?php the_field('enlace_3') ?></a></small></p>
                  </div>

                  <?php } wp_reset_postdata(); ?>
                </div>

                <div class="card color-card text-white text-center p-3">
                  <?php
                  $arg = array(
                        'post_type'    => 'cards4',
                        'posts_per_page' => 10,
                          //'post_not_in'  => array($post->ID),
                        'paged'      => $paged
                      );
                      $get_arg = new WP_Query( $arg );
                      while ( $get_arg->have_posts() ) {
                        $get_arg->the_post();
                  ?>
                  <blockquote class="blockquote mb-0">
                    <p><strong><?php the_field('texto_4') ?></strong></p>
                    
                    <footer class="blockquote-footer"><cite title="Source Title"><?php the_field('cita') ?></cite></footer>
                  </blockquote>

                  <?php } wp_reset_postdata(); ?>
                </div>

                <div class="card text-center">

                  <?php
                  $arg = array(
                        'post_type'    => 'cards5',
                        'posts_per_page' => 10,
                          //'post_not_in'  => array($post->ID),
                        'paged'      => $paged
                      );
                      $get_arg = new WP_Query( $arg );
                      while ( $get_arg->have_posts() ) {
                        $get_arg->the_post();
                  ?>

                  <div class="card-body">
                    <?php the_post_thumbnail('post-custom-size', array('class' => 'card-img-top')); ?>
                    
                    <h5 class="card-title"><?php the_field('titulo_5') ?></h5>
                    <p class="card-text"><?php the_field('texto_5') ?></p>
                    <p class="card-text"><small class="text-muted"><a href="#"><?php the_field('enlace_5') ?></a></small></p>
                  </div>

                  <?php } wp_reset_postdata(); ?>

                </div>

                <div class="card">

                  <?php
                  $arg = array(
                        'post_type'    => 'cards6',
                        'posts_per_page' => 10,
                          //'post_not_in'  => array($post->ID),
                        'paged'      => $paged
                      );
                      $get_arg = new WP_Query( $arg );
                      while ( $get_arg->have_posts() ) {
                        $get_arg->the_post();
                  ?>

                  <?php the_post_thumbnail('post-custom-size', array('class' => 'card-img')); ?>

                  <?php } wp_reset_postdata(); ?>
                </div>
            

        

      </div>
            


        <aside class="col-3 d-none d-sm-block sidebar__vegariano">
          <?php get_sidebar() ?>
          

        </aside>  

    </div>
        
            
  </section>
 

              <!-- aside section -->

              
            

          <!-- second section -->
          
          <section class="container-fluid text-center carousel__vegariano">
          <hr>
          <i class="fas fa-frog fa-2x"></i>
          <i class="fas fa-frog fa-2x fa-flip-horizontal"></i>
          <hr>
          <div class="row mt-4">
            <div class="col-sm"></div>
              <div id="carouselExampleFade" class="carousel slide carousel-fade col-sm" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Alberto.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Allan.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Benedict.png')?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Brian.png')?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Bin.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Daisy.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Derek.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Edward.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Garth.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Nimai.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Peter.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Rich.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Sadie.png') ?>" alt="">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="<?php echo get_theme_file_uri('assets/img/Venus.png') ?>" alt="">
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
              <div class="col-sm"></div>
          </div>
          <br>
          <hr>
          <div class="pt-3"><h6>CONOCE LAS DIFERENTES PERSONALIDADES QUE HAN DECIDIDO CAMBIAR SU ALIMENTACIÓN</h6>
          </div>
          <hr>
          </section>
          
        </main>


<?php get_footer(); ?>