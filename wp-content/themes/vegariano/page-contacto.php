<?php get_header(); ?>


      <div class="header__vegariano_title"></div>

  <!-- End title -->

    </header>

    <!-- end header -->

    <!-- main -->

    <main class="main__vegariano">

      <!-- formulario -->
      <div class="container">
        <div class="row">
          <div class="col-sm d-none d-sm-block form">
            <img src="<?php echo get_theme_file_uri('assets/img/logo-salud-quilicura.png') ?>">
          </div>
          <div class="row">
              <div class="col-sm">
                <?php echo do_shortcode('[contact-form-7 id="105" title="Formulario de contacto 1"]') ?>

              </div>
             
                                
            </div>
          </div>
        </div>

        <?php 

                    $location = get_field('location');

                    if( !empty($location) ):
                    ?>
                    <div class="acf-map">
                      <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
                    </div>
                    <?php endif; ?>

<?php get_footer(); ?>
