<!DOCTYPE html>
<html <?php language_attributes(); ?>>
  <head>
	<meta charset="<?php bloginfo('charset') ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo get_bloginfo('name'); ?></title>
	<?php wp_head(); ?>
  </head>

<body>

	<?php
		$custom_logo_id = get_theme_mod( 'custom_logo' );
		$logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
	?>

  <!-- header -->

    <header class="container-fluid header__vegariano">

    <!-- navbar -->

      <nav class="navbar navbar-expand-lg fixed-top navbar__vegariano">
        <a class="navbar-brand" href="<?php bloginfo('url'); ?>"><img class="navbar__vegariano-logo" id="logo" src="<?php echo $logo[0]; ?>"></a>

        <button class="navbar-toggler burger" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span><i class="fas fa-chevron-down fa-2x"></i></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          
          <?php if (has_nav_menu( 'header-menu' )){ ?>
            <?php wp_nav_menu( array(
            'theme_location'  => 'header-menu',
            'container_id'    => 'navbarSupportedContent',
            'container_class' => 'collapse navbar-collapse',
            'menu_class'      => 'navbar-nav mr-auto',
            'depth'           => 2,
            'walker'          => new wp_bootstrap_navwalker(),
            )); ?>
          <?php } ?>

       <!-- 
            



            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
               <a class="nav-link" href="index.html"><span class="sr-only">Inicio</span></a>
              </li>
              <li class="nav-item">
              <a class="nav-link" href="conocenos.html"><span>Conócenos</span></a>
              </li>
            <li class="nav-item">
              <a class="nav-link" href="Nutrientes.html"><span>Nutrientes</span></a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span>
              Nutrirecetas</span></a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="nutrirecetas.html"><span>Veganas</span></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="nutrirecetas.html"><span>Vegetarianas</span></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="nutrirecetas.html"><span>celíacos</span></a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Blog.html"><span>Blog</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Contacto.html"><span>Contacto</span></a>
            </li>

          </ul>
  -->

      <!-- Button search -->
      <div class="search d-none d-sm-block">
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="buscar..." aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search fa-lg"></i></button>
        </form>
      </div>

      <!-- End button search -->

    </div>
  </nav>


  <!-- End navbar -->