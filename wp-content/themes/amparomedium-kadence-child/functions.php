<?php
/**
 * AmparoMédium - Kadence Child Theme Functions
 *
 * @package AmparoMedium_Kadence_Child
 * @version 1.0.0
 */

// Prevenir acceso directo
if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

/**
 * Define constantes del tema
 */
define( 'AMPAROMEDIUM_CHILD_VERSION', '1.0.0' );
define( 'AMPAROMEDIUM_CHILD_DIR', get_stylesheet_directory() );
define( 'AMPAROMEDIUM_CHILD_URI', get_stylesheet_directory_uri() );

/**
 * Encolar estilos del tema padre y del tema hijo
 */
function amparomedium_child_enqueue_styles() {
    // Versión para cache busting
    $version = AMPAROMEDIUM_CHILD_VERSION;
    
    // Estilos del tema padre (Kadence)
    wp_enqueue_style(
        'kadence-parent-style',
        get_template_directory_uri() . '/style.css',
        array(),
        wp_get_theme( 'kadence' )->get( 'Version' )
    );
    
    // Estilos del tema hijo (incluye las personalizaciones de AmparoMédium)
    wp_enqueue_style(
        'amparomedium-child-style',
        get_stylesheet_uri(),
        array( 'kadence-parent-style' ),
        $version
    );
    
    // Google Fonts - Inter
    wp_enqueue_style(
        'amparomedium-google-fonts',
        'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap',
        array(),
        null
    );
}
add_action( 'wp_enqueue_scripts', 'amparomedium_child_enqueue_styles' );

/**
 * Encolar scripts personalizados
 */
function amparomedium_child_enqueue_scripts() {
    $version = AMPAROMEDIUM_CHILD_VERSION;
    
    // Script principal del tema hijo
    wp_enqueue_script(
        'amparomedium-child-script',
        AMPAROMEDIUM_CHILD_URI . '/assets/js/main.js',
        array( 'jquery' ),
        $version,
        true
    );
    
    // Pasar variables a JavaScript
    wp_localize_script(
        'amparomedium-child-script',
        'amparomediumData',
        array(
            'ajaxUrl'  => admin_url( 'admin-ajax.php' ),
            'themeUrl' => AMPAROMEDIUM_CHILD_URI,
            'nonce'    => wp_create_nonce( 'amparomedium_nonce' ),
        )
    );
}
add_action( 'wp_enqueue_scripts', 'amparomedium_child_enqueue_scripts' );

/**
 * Configurar el tema
 */
function amparomedium_child_setup() {
    // Soporte para logo personalizado
    add_theme_support( 'custom-logo', array(
        'height'      => 100,
        'width'       => 300,
        'flex-height' => true,
        'flex-width'  => true,
    ) );
    
    // Soporte para título del sitio
    add_theme_support( 'title-tag' );
    
    // Soporte para imágenes destacadas
    add_theme_support( 'post-thumbnails' );
    
    // Tamaños de imagen personalizados
    add_image_size( 'amparomedium-hero', 1920, 1080, true );
    add_image_size( 'amparomedium-product', 800, 800, true );
    add_image_size( 'amparomedium-avatar', 100, 100, true );
    add_image_size( 'amparomedium-card', 600, 400, true );
    
    // Soporte para HTML5
    add_theme_support( 'html5', array(
        'search-form',
        'comment-form',
        'comment-list',
        'gallery',
        'caption',
        'style',
        'script',
    ) );
    
    // Registrar menús de navegación
    register_nav_menus( array(
        'amparomedium-footer-menu'   => __( 'Footer Menu - AmparoMédium', 'amparomedium-kadence-child' ),
        'amparomedium-services-menu' => __( 'Services Menu - AmparoMédium', 'amparomedium-kadence-child' ),
    ) );
}
add_action( 'after_setup_theme', 'amparomedium_child_setup' );

/**
 * Registrar sidebars/widgets
 */
function amparomedium_child_widgets_init() {
    // Footer Widget Area 1
    register_sidebar( array(
        'name'          => __( 'Footer - AmparoMédium Logo', 'amparomedium-kadence-child' ),
        'id'            => 'amparomedium-footer-1',
        'description'   => __( 'Área para el logo y descripción en el footer.', 'amparomedium-kadence-child' ),
        'before_widget' => '<div id="%1$s" class="widget am-footer-widget %2$s">',
        'after_widget'  => '</div>',
        'before_title'  => '<h4 class="widget-title am-footer-title">',
        'after_title'   => '</h4>',
    ) );
    
    // Footer Widget Area 2
    register_sidebar( array(
        'name'          => __( 'Footer - Enlaces', 'amparomedium-kadence-child' ),
        'id'            => 'amparomedium-footer-2',
        'description'   => __( 'Área para enlaces del footer.', 'amparomedium-kadence-child' ),
        'before_widget' => '<div id="%1$s" class="widget am-footer-widget %2$s">',
        'after_widget'  => '</div>',
        'before_title'  => '<h4 class="widget-title am-footer-title">',
        'after_title'   => '</h4>',
    ) );
    
    // Footer Widget Area 3
    register_sidebar( array(
        'name'          => __( 'Footer - Contacto', 'amparomedium-kadence-child' ),
        'id'            => 'amparomedium-footer-3',
        'description'   => __( 'Área para información de contacto.', 'amparomedium-kadence-child' ),
        'before_widget' => '<div id="%1$s" class="widget am-footer-widget %2$s">',
        'after_widget'  => '</div>',
        'before_title'  => '<h4 class="widget-title am-footer-title">',
        'after_title'   => '</h4>',
    ) );
}
add_action( 'widgets_init', 'amparomedium_child_widgets_init' );

/**
 * Añadir clases al body
 */
function amparomedium_body_classes( $classes ) {
    $classes[] = 'amparomedium-theme';
    $classes[] = 'am-dark-mode';
    
    // Añadir clase si es la página de inicio
    if ( is_front_page() ) {
        $classes[] = 'am-home';
    }
    
    return $classes;
}
add_filter( 'body_class', 'amparomedium_body_classes' );

/**
 * Personalizar el excerpt
 */
function amparomedium_excerpt_length( $length ) {
    return 25;
}
add_filter( 'excerpt_length', 'amparomedium_excerpt_length' );

function amparomedium_excerpt_more( $more ) {
    return '...';
}
add_filter( 'excerpt_more', 'amparomedium_excerpt_more' );

/**
 * Shortcodes personalizados
 */

// Shortcode para botón con estilo AmparoMédium
function amparomedium_button_shortcode( $atts, $content = null ) {
    $atts = shortcode_atts( array(
        'url'   => '#',
        'style' => 'primary', // primary, outline, accent
        'size'  => 'normal',  // small, normal, large
        'icon'  => '',
        'target' => '_self',
    ), $atts );
    
    $class = 'am-btn am-btn-' . esc_attr( $atts['style'] );
    if ( $atts['size'] === 'large' ) {
        $class .= ' am-btn-lg';
    } elseif ( $atts['size'] === 'small' ) {
        $class .= ' am-btn-sm';
    }
    
    $icon_html = '';
    if ( ! empty( $atts['icon'] ) ) {
        $icon_html = '<i class="' . esc_attr( $atts['icon'] ) . '"></i> ';
    }
    
    return sprintf(
        '<a href="%s" class="%s" target="%s">%s%s</a>',
        esc_url( $atts['url'] ),
        esc_attr( $class ),
        esc_attr( $atts['target'] ),
        $icon_html,
        esc_html( $content )
    );
}
add_shortcode( 'am_button', 'amparomedium_button_shortcode' );

// Shortcode para badge
function amparomedium_badge_shortcode( $atts, $content = null ) {
    $atts = shortcode_atts( array(
        'style' => 'default', // default, primary, success
    ), $atts );
    
    $class = 'am-badge';
    if ( $atts['style'] !== 'default' ) {
        $class .= ' am-badge-' . esc_attr( $atts['style'] );
    }
    
    return sprintf(
        '<span class="%s">%s</span>',
        esc_attr( $class ),
        esc_html( $content )
    );
}
add_shortcode( 'am_badge', 'amparomedium_badge_shortcode' );

// Shortcode para separador decorativo
function amparomedium_divider_shortcode( $atts ) {
    return '<div class="am-divider"></div>';
}
add_shortcode( 'am_divider', 'amparomedium_divider_shortcode' );

// Shortcode para icono
function amparomedium_icon_shortcode( $atts ) {
    $atts = shortcode_atts( array(
        'name'  => 'fas fa-star',
        'size'  => '1em',
        'color' => '',
    ), $atts );
    
    $style = 'font-size: ' . esc_attr( $atts['size'] ) . ';';
    if ( ! empty( $atts['color'] ) ) {
        $style .= ' color: ' . esc_attr( $atts['color'] ) . ';';
    }
    
    return sprintf(
        '<i class="%s am-icon" style="%s"></i>',
        esc_attr( $atts['name'] ),
        $style
    );
}
add_shortcode( 'am_icon', 'amparomedium_icon_shortcode' );

/**
 * Añadir metabox para configuración de página
 */
function amparomedium_add_meta_boxes() {
    add_meta_box(
        'amparomedium_page_options',
        __( 'Opciones AmparoMédium', 'amparomedium-kadence-child' ),
        'amparomedium_page_options_callback',
        'page',
        'side',
        'high'
    );
}
add_action( 'add_meta_boxes', 'amparomedium_add_meta_boxes' );

function amparomedium_page_options_callback( $post ) {
    wp_nonce_field( 'amparomedium_page_options', 'amparomedium_page_options_nonce' );
    
    $transparent_header = get_post_meta( $post->ID, '_amparomedium_transparent_header', true );
    $hide_title = get_post_meta( $post->ID, '_amparomedium_hide_title', true );
    ?>
    <p>
        <label>
            <input type="checkbox" name="amparomedium_transparent_header" value="1" <?php checked( $transparent_header, '1' ); ?>>
            <?php _e( 'Header Transparente', 'amparomedium-kadence-child' ); ?>
        </label>
    </p>
    <p>
        <label>
            <input type="checkbox" name="amparomedium_hide_title" value="1" <?php checked( $hide_title, '1' ); ?>>
            <?php _e( 'Ocultar Título de Página', 'amparomedium-kadence-child' ); ?>
        </label>
    </p>
    <?php
}

function amparomedium_save_page_options( $post_id ) {
    if ( ! isset( $_POST['amparomedium_page_options_nonce'] ) ||
         ! wp_verify_nonce( $_POST['amparomedium_page_options_nonce'], 'amparomedium_page_options' ) ) {
        return;
    }
    
    if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
        return;
    }
    
    if ( ! current_user_can( 'edit_post', $post_id ) ) {
        return;
    }
    
    $transparent_header = isset( $_POST['amparomedium_transparent_header'] ) ? '1' : '';
    $hide_title = isset( $_POST['amparomedium_hide_title'] ) ? '1' : '';
    
    update_post_meta( $post_id, '_amparomedium_transparent_header', $transparent_header );
    update_post_meta( $post_id, '_amparomedium_hide_title', $hide_title );
}
add_action( 'save_post', 'amparomedium_save_page_options' );

/**
 * Añadir configuración de colores a Kadence
 */
function amparomedium_kadence_palette( $palette ) {
    // Añadir colores de AmparoMédium a la paleta de Kadence
    $amparomedium_colors = array(
        array(
            'color' => '#9333ea',
            'name'  => 'AmparoMédium Primary',
            'slug'  => 'am-primary',
        ),
        array(
            'color' => '#7c3aed',
            'name'  => 'AmparoMédium Primary Dark',
            'slug'  => 'am-primary-dark',
        ),
        array(
            'color' => '#0f0a1f',
            'name'  => 'AmparoMédium Background',
            'slug'  => 'am-background',
        ),
        array(
            'color' => '#1a0f2e',
            'name'  => 'AmparoMédium Background Alt',
            'slug'  => 'am-background-alt',
        ),
        array(
            'color' => '#fbbf24',
            'name'  => 'AmparoMédium Accent (Gold)',
            'slug'  => 'am-accent',
        ),
    );
    
    return array_merge( $palette, $amparomedium_colors );
}
add_filter( 'kadence_global_palette', 'amparomedium_kadence_palette' );

/**
 * Preload de fuentes
 */
function amparomedium_preload_fonts() {
    ?>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <?php
}
add_action( 'wp_head', 'amparomedium_preload_fonts', 1 );

/**
 * Añadir atributos al body para scroll
 */
function amparomedium_add_scroll_script() {
    ?>
    <script>
        // Header scroll effect
        document.addEventListener('DOMContentLoaded', function() {
            const header = document.querySelector('.site-header');
            if (header) {
                window.addEventListener('scroll', function() {
                    if (window.scrollY > 50) {
                        header.classList.add('header-scrolled');
                    } else {
                        header.classList.remove('header-scrolled');
                    }
                });
            }
        });
    </script>
    <?php
}
add_action( 'wp_footer', 'amparomedium_add_scroll_script' );

/**
 * Deshabilitar emojis de WordPress para mejor rendimiento
 */
function amparomedium_disable_emojis() {
    remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
    remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
    remove_action( 'wp_print_styles', 'print_emoji_styles' );
    remove_action( 'admin_print_styles', 'print_emoji_styles' );
    remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
    remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );
    remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );
}
add_action( 'init', 'amparomedium_disable_emojis' );

/**
 * Añadir soporte para SVG uploads
 */
function amparomedium_allow_svg_upload( $mimes ) {
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter( 'upload_mimes', 'amparomedium_allow_svg_upload' );

/**
 * Limpiar el head de WordPress
 */
function amparomedium_clean_head() {
    remove_action( 'wp_head', 'rsd_link' );
    remove_action( 'wp_head', 'wlwmanifest_link' );
    remove_action( 'wp_head', 'wp_generator' );
    remove_action( 'wp_head', 'wp_shortlink_wp_head' );
}
add_action( 'init', 'amparomedium_clean_head' );

/**
 * Mensaje de bienvenida en el admin
 */
function amparomedium_admin_notice() {
    $screen = get_current_screen();
    if ( $screen->id === 'themes' ) {
        ?>
        <div class="notice notice-success is-dismissible">
            <p>
                <strong>🔮 AmparoMédium Theme Active!</strong> 
                Tu tema personalizado está listo. Recuerda activar el tema padre <strong>Kadence</strong> antes de usar este tema hijo.
            </p>
        </div>
        <?php
    }
}
add_action( 'admin_notices', 'amparomedium_admin_notice' );

/**
 * Verificar que Kadence está instalado
 */
function amparomedium_check_parent_theme() {
    $theme = wp_get_theme( 'kadence' );
    if ( ! $theme->exists() ) {
        add_action( 'admin_notices', function() {
            ?>
            <div class="notice notice-error">
                <p>
                    <strong>⚠️ Error:</strong> El tema hijo AmparoMédium requiere que el tema <strong>Kadence</strong> esté instalado.
                    <a href="<?php echo admin_url( 'theme-install.php?search=kadence' ); ?>">Instalar Kadence</a>
                </p>
            </div>
            <?php
        });
    }
}
add_action( 'admin_init', 'amparomedium_check_parent_theme' );

