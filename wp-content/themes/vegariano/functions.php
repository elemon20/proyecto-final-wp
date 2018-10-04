<?php 

//activacion de clases de bootstrap en wordpress
	require_once get_template_directory() . '/functions/class-wp-bootstrap-navwalker.php';

//custom_post_type
	require_once get_template_directory() . '/functions/CPT-cards.php';



//REGISTRO DE ESTILOS

function register_enqueue_style () {
	$theme_data = wp_get_theme();

	/*Registrando estilos*/
	wp_register_style('bootstrap',
	get_parent_theme_file_uri('/assets/vendor/css/bootstrap.css'), null, '4.1.3', 'screen');
	wp_register_style('fontawesome', 'https://use.fontawesome.com/releases/v5.2.0/css/all.css');
	wp_register_style('googleFonts', 'https://fonts.googleapis.com/css?family=Arima+Madurai:700|Poppins:200,400,700');
	wp_register_style('magnificPopup',
	get_parent_theme_file_uri('/assets/vendor/css/magnific-popup.css'), null, $theme_data->get( 'Version' ), 'screen');
	wp_register_style('main',
	get_parent_theme_file_uri('/assets/css/style.css'), null, $theme_data->get( 'Version' ), 'screen');

		/* Enqueue estilos */
		wp_enqueue_style( 'bootstrap' );
		wp_enqueue_style( 'fontawesome' );
		wp_enqueue_style( 'googleFonts' );
		wp_enqueue_style( 'magnificPopup' );
		wp_enqueue_style( 'main' );
}

add_action( 'wp_enqueue_scripts', 'register_enqueue_style' );

//REGISTRO DE SCRIPTS

function register_enqueue_scripts () {
	$theme_data = wp_get_theme();

/*Deregister Scripts*/
wp_deregister_script( 'jquery' );
wp_deregister_script( 'jquery-migrate' );

/*Registrando Scripts*/
wp_register_script('jQuery3', get_parent_theme_file_uri('/assets/vendor/js/jquery-3.3.1min.js'), null, '1.0.0', true);
wp_register_script('jQuery_migrate', get_parent_theme_file_uri('/assets/vendor/js/jquery-migrate-1.4.1.min.js'), array('jQuery3'), '1.0.0', true);
wp_register_script('bootstrap', get_parent_theme_file_uri('/assets/vendor/js/bootstrap.min.js'), array('jQuery_migrate'), null, true);
wp_register_script('easingJquery', get_parent_theme_file_uri('/assets/vendor/js/jquery.easing.1.3.min.js'), array('jQuery_migrate'), null, true);
wp_register_script('magnificPopup', get_parent_theme_file_uri('/assets/vendor/js/jquery.magnific-popup.min.js'), array('jQuery_migrate'), null, true);
wp_register_script('googleapis', 'https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY');
wp_register_script('mainJS', get_parent_theme_file_uri('/assets/js/scripts.js'), array('jQuery3'), null, true);

//Enqueue Scripts
wp_enqueue_script( 'jQuery3' );
wp_enqueue_script( 'jQuery_migrate' );
wp_enqueue_script( 'bootstrap' );
wp_enqueue_script( 'easingJquery' );
wp_enqueue_script( 'magnificPopup' );
wp_enqueue_script( 'googleapis' );
wp_enqueue_script( 'mainJS' );

}

add_action( 'wp_enqueue_scripts', 'register_enqueue_scripts' );

//personaliza logo

 function config_custom_logo() {
    add_theme_support( 'custom-logo', array(
      'height'      => 160,
      'width'       => 160,
      'flex-height' => true,
      'flex-width'  => true,
      'header-text' => array( 'site-title', 'site-description' ),
    ));
  }

  add_action( 'after_setup_theme', 'config_custom_logo' );

//registrando Menu

	function menus_setup() {
		register_nav_menus(
			array(
			'header-menu' => __( 'Header Menu' ),
			'footer-menu' => __( 'Footer Menu' ),
			)
		);
	}
	add_action( 'after_setup_theme', 'menus_setup' );


//dasactiva bufer de salida
	remove_action ('shutdown', 'wp_ob_end_flush_all', 1);



//registrando tamaño de imagenes

function thumbnails_setup() {
    add_theme_support( 'post-thumbnails' );
  }

add_action( 'after_setup_theme', 'thumbnails_setup' );

  function dl_image_sizes( $sizes ) {

    $add_sizes = array(
      'destacada'			=> __( 'Tamaño de las imágenes del menu en la carta' ),
      'square'				=> __( 'Tamaño personalizado para hacer cuadradas las imágenes' ),
      'post-custom-size'	=> __( 'Tamaño personalizado para la imagen destacada de los post' ),
      'custom-size-blog'	=> __( 'Tamaño personalizado para la imagen destacada de los post' ),
    );

    return array_merge( $sizes, $add_sizes );

  }

  if ( function_exists( 'add_theme_support' ) ) {

    add_image_size( 'destacada', 847, 400, true );
    add_image_size( 'square', 420, 420, true );
    add_image_size( 'post-custom-size', 268, 177, true );
    add_image_size( 'custom-size-blog', 600, 400, true );

    add_filter( 'image_size_names_choose', 'dl_image_sizes' );

  }

  


//removiendo atributos por defecto de tamaño de imagenes de WP

function remove_width_attribute( $html ) {
   $html = preg_replace( '/(width|height)="\d*"\s/', "", $html );
   return $html;
}
add_filter( 'post_thumbnail_html', 'remove_width_attribute', 10 );
add_filter( 'image_send_to_editor', 'remove_width_attribute', 10 );


//activando area widget

  function dl_widgets() {
  	register_sidebar( array(
  		'name' => 'Widget Footer',
  		'id' => 'widget_footer'
  	));

  	register_sidebar( array(
		'name'			=> 'Barra Lateral',
		'id'			=> 'sidebar-widget',
		'before_widget' => '<div id="%1$s" class="widget %2$s" mt-4>',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widgettitle">',
		'after_title'   => '</h2>',
	));
  }

  add_action('widgets_init', 'dl_widgets');

//registro de API

  function my_acf_google_map_api( $api ){
	
	$api['key'] = 'AIzaSyCJqJ8QxZpCeSYn0heqylIWaOHe54Zv5io';
	
	return $api;
	
}

add_filter('acf/fields/google_map/api', 'my_acf_google_map_api');




 ?>