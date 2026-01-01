-- ============================================
-- SQL SCRIPT: Página HOME Completa para AmparoMédium
-- Ejecutar en la base de datos: Chacras_22518
-- Prefijo de tablas: wp_AFIOF_
-- ============================================
-- Fecha: Enero 2026
-- Descripción: Crea la página HOME con bloques Gutenberg y estilos AmparoMédium
-- ============================================
--
-- ORDEN DE EJECUCIÓN:
-- 1. Primero ejecutar: amparomedium_kadence_config.sql (configura el tema)
-- 2. Luego ejecutar: este archivo (crea la página Home)
--
-- ============================================

-- ============================================
-- PASO 0: ELIMINAR PÁGINA HOME ANTERIOR (si existe)
-- ============================================

DELETE FROM `wp_AFIOF_postmeta` WHERE `post_id` IN (
    SELECT ID FROM `wp_AFIOF_posts` WHERE `post_name` = 'inicio' AND `post_type` = 'page'
);
DELETE FROM `wp_AFIOF_posts` WHERE `post_name` = 'inicio' AND `post_type` = 'page';

-- ============================================
-- PASO 1: CREAR LA PÁGINA HOME
-- ============================================

INSERT INTO `wp_AFIOF_posts` (
    `post_author`, 
    `post_date`, 
    `post_date_gmt`, 
    `post_content`, 
    `post_title`, 
    `post_excerpt`,
    `post_status`, 
    `comment_status`, 
    `ping_status`,
    `post_password`, 
    `post_name`, 
    `to_ping`, 
    `pinged`,
    `post_modified`, 
    `post_modified_gmt`, 
    `post_content_filtered`,
    `post_parent`, 
    `guid`, 
    `menu_order`, 
    `post_type`,
    `post_mime_type`, 
    `comment_count`
) VALUES (
    1, 
    NOW(), 
    NOW(),
    '<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"0","bottom":"0","left":"0","right":"0"},"margin":{"top":"0","bottom":"0"}}},"backgroundColor":"palette4","layout":{"type":"default"}} -->
<div class="wp-block-group alignfull has-palette-4-background-color has-background" style="margin-top:0;margin-bottom:0;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0">

<!-- wp:cover {"dimRatio":60,"overlayColor":"palette4","minHeight":100,"minHeightUnit":"vh","isDark":false,"align":"full","className":"am-hero-section","style":{"spacing":{"padding":{"top":"0","bottom":"0","left":"0","right":"0"}}}} -->
<div class="wp-block-cover alignfull is-light am-hero-section" style="padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;min-height:100vh">
<span aria-hidden="true" class="wp-block-cover__background has-palette-4-background-color has-background-dim-60 has-background-dim"></span>
<div class="wp-block-cover__inner-container">

<!-- wp:group {"style":{"spacing":{"padding":{"top":"120px","bottom":"120px","left":"20px","right":"20px"}}},"layout":{"type":"constrained","contentSize":"800px"}} -->
<div class="wp-block-group" style="padding-top:120px;padding-right:20px;padding-bottom:120px;padding-left:20px">

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"5rem"}}} -->
<p class="has-text-align-center" style="font-size:5rem">🔮</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"textAlign":"center","level":1,"style":{"typography":{"fontSize":"clamp(2.5rem, 5vw, 4rem)","fontWeight":"700","letterSpacing":"-0.02em"},"color":{"text":"#ffffff"},"spacing":{"margin":{"top":"0","bottom":"16px"}}}} -->
<h1 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-top:0;margin-bottom:16px;font-size:clamp(2.5rem, 5vw, 4rem);font-weight:700;letter-spacing:-0.02em">AmparoMédium</h1>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"clamp(1rem, 2.5vw, 1.5rem)"},"color":{"text":"#a855f7"},"spacing":{"margin":{"top":"0","bottom":"24px"}}}} -->
<p class="has-text-align-center" style="color:#a855f7;margin-top:0;margin-bottom:24px;font-size:clamp(1rem, 2.5vw, 1.5rem)">✨ Especialista en Registros Akáshicos, Canalización y Videncia</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"1.125rem","lineHeight":"1.8"},"color":{"text":"#a8a29e"},"spacing":{"margin":{"top":"0","bottom":"40px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-top:0;margin-bottom:40px;font-size:1.125rem;line-height:1.8">Descubre tu camino espiritual y conecta con tu esencia a través de servicios profesionales de alta vibración. Te acompaño en tu despertar espiritual.</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center","flexWrap":"wrap"},"style":{"spacing":{"blockGap":"16px"}}} -->
<div class="wp-block-buttons">

<!-- wp:button {"style":{"color":{"background":"#9333ea","text":"#ffffff"},"border":{"radius":"8px"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"36px","right":"36px"}},"typography":{"fontWeight":"600","fontSize":"1rem"},"elements":{"link":{"color":{"text":"#ffffff"}}}},"className":"am-btn-primary"} -->
<div class="wp-block-button has-custom-font-size am-btn-primary" style="font-size:1rem"><a class="wp-block-button__link has-text-color has-background has-link-color wp-element-button" href="/cursos" style="border-radius:8px;color:#ffffff;background-color:#9333ea;padding-top:16px;padding-right:36px;padding-bottom:16px;padding-left:36px;font-weight:600">🎓 Explorar Cursos</a></div>
<!-- /wp:button -->

<!-- wp:button {"className":"is-style-outline am-btn-outline","style":{"border":{"radius":"8px","width":"2px","color":"#9333ea"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"36px","right":"36px"}},"typography":{"fontWeight":"600","fontSize":"1rem"},"color":{"text":"#9333ea"}}} -->
<div class="wp-block-button has-custom-font-size is-style-outline am-btn-outline" style="font-size:1rem"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/reservas" style="border-color:#9333ea;border-width:2px;border-radius:8px;color:#9333ea;padding-top:16px;padding-right:36px;padding-bottom:16px;padding-left:36px;font-weight:600">📅 Reservar Sesión</a></div>
<!-- /wp:button -->

</div>
<!-- /wp:buttons -->

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"0.875rem"},"color":{"text":"#a8a29e"},"spacing":{"margin":{"top":"40px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-top:40px;font-size:0.875rem">⭐ +100 clientes satisfechos · 🌟 Sesiones disponibles esta semana</p>
<!-- /wp:paragraph -->

</div>
<!-- /wp:group -->

</div>
</div>
<!-- /wp:cover -->

</div>
<!-- /wp:group -->

<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"100px","bottom":"100px","left":"20px","right":"20px"}},"color":{"background":"#0f0a1f"}},"className":"am-servicios-rapidos","layout":{"type":"default"}} -->
<div class="wp-block-group alignfull am-servicios-rapidos has-background" style="background-color:#0f0a1f;padding-top:100px;padding-right:20px;padding-bottom:100px;padding-left:20px">

<!-- wp:group {"layout":{"type":"constrained","contentSize":"1200px"}} -->
<div class="wp-block-group">

<!-- wp:heading {"textAlign":"center","style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"clamp(2rem, 4vw, 2.75rem)","fontWeight":"700"},"spacing":{"margin":{"bottom":"16px"}}}} -->
<h2 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:16px;font-size:clamp(2rem, 4vw, 2.75rem);font-weight:700">Mis Servicios Espirituales</h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"spacing":{"margin":{"bottom":"60px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:60px">Servicios profesionales diseñados para acompañarte en tu despertar y crecimiento espiritual</p>
<!-- /wp:paragraph -->

<!-- wp:columns {"align":"wide","style":{"spacing":{"blockGap":{"left":"30px"}}}} -->
<div class="wp-block-columns alignwide">

<!-- wp:column {"style":{"spacing":{"padding":{"top":"40px","bottom":"40px","left":"30px","right":"30px"}},"border":{"radius":"20px","width":"1px","color":"rgba(147, 51, 234, 0.3)"}},"backgroundColor":"palette4","className":"am-card am-service-card"} -->
<div class="wp-block-column am-card am-service-card has-border-color has-palette-4-background-color has-background" style="border-color:rgba(147, 51, 234, 0.3);border-width:1px;border-radius:20px;padding-top:40px;padding-right:30px;padding-bottom:40px;padding-left:30px">

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"4rem"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<p class="has-text-align-center" style="margin-bottom:20px;font-size:4rem">📖</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"textAlign":"center","level":3,"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1.5rem","fontWeight":"600"},"spacing":{"margin":{"bottom":"12px"}}}} -->
<h3 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:12px;font-size:1.5rem;font-weight:600">Registros Akáshicos</h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"1rem","lineHeight":"1.7"},"spacing":{"margin":{"bottom":"24px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:24px;font-size:1rem;line-height:1.7">Accede a tu información akáshica para descubrir tu propósito de vida, lecciones kármicas y potencial espiritual.</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons">
<!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px","color":"#9333ea"},"color":{"text":"#9333ea"},"spacing":{"padding":{"top":"12px","bottom":"12px","left":"24px","right":"24px"}},"typography":{"fontSize":"0.875rem"}}} -->
<div class="wp-block-button has-custom-font-size is-style-outline" style="font-size:0.875rem"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/servicios/registros-akashicos" style="border-color:#9333ea;border-width:2px;border-radius:8px;color:#9333ea;padding-top:12px;padding-right:24px;padding-bottom:12px;padding-left:24px">Más información →</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:column -->

<!-- wp:column {"style":{"spacing":{"padding":{"top":"40px","bottom":"40px","left":"30px","right":"30px"}},"border":{"radius":"20px","width":"1px","color":"rgba(147, 51, 234, 0.3)"}},"backgroundColor":"palette4","className":"am-card am-service-card"} -->
<div class="wp-block-column am-card am-service-card has-border-color has-palette-4-background-color has-background" style="border-color:rgba(147, 51, 234, 0.3);border-width:1px;border-radius:20px;padding-top:40px;padding-right:30px;padding-bottom:40px;padding-left:30px">

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"4rem"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<p class="has-text-align-center" style="margin-bottom:20px;font-size:4rem">🙏</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"textAlign":"center","level":3,"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1.5rem","fontWeight":"600"},"spacing":{"margin":{"bottom":"12px"}}}} -->
<h3 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:12px;font-size:1.5rem;font-weight:600">Canalización</h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"1rem","lineHeight":"1.7"},"spacing":{"margin":{"bottom":"24px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:24px;font-size:1rem;line-height:1.7">Conexión directa con guías espirituales y maestros ascendidos para recibir mensajes y orientación divina.</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons">
<!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px","color":"#9333ea"},"color":{"text":"#9333ea"},"spacing":{"padding":{"top":"12px","bottom":"12px","left":"24px","right":"24px"}},"typography":{"fontSize":"0.875rem"}}} -->
<div class="wp-block-button has-custom-font-size is-style-outline" style="font-size:0.875rem"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/servicios/canalizacion" style="border-color:#9333ea;border-width:2px;border-radius:8px;color:#9333ea;padding-top:12px;padding-right:24px;padding-bottom:12px;padding-left:24px">Más información →</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:column -->

<!-- wp:column {"style":{"spacing":{"padding":{"top":"40px","bottom":"40px","left":"30px","right":"30px"}},"border":{"radius":"20px","width":"1px","color":"rgba(147, 51, 234, 0.3)"}},"backgroundColor":"palette4","className":"am-card am-service-card"} -->
<div class="wp-block-column am-card am-service-card has-border-color has-palette-4-background-color has-background" style="border-color:rgba(147, 51, 234, 0.3);border-width:1px;border-radius:20px;padding-top:40px;padding-right:30px;padding-bottom:40px;padding-left:30px">

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"4rem"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<p class="has-text-align-center" style="margin-bottom:20px;font-size:4rem">👁️</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"textAlign":"center","level":3,"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1.5rem","fontWeight":"600"},"spacing":{"margin":{"bottom":"12px"}}}} -->
<h3 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:12px;font-size:1.5rem;font-weight:600">Videncia</h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"1rem","lineHeight":"1.7"},"spacing":{"margin":{"bottom":"24px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:24px;font-size:1rem;line-height:1.7">Lecturas clarividentes para comprender situaciones presentes y futuras con claridad y orientación espiritual.</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons">
<!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px","color":"#9333ea"},"color":{"text":"#9333ea"},"spacing":{"padding":{"top":"12px","bottom":"12px","left":"24px","right":"24px"}},"typography":{"fontSize":"0.875rem"}}} -->
<div class="wp-block-button has-custom-font-size is-style-outline" style="font-size:0.875rem"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/servicios/videncia" style="border-color:#9333ea;border-width:2px;border-radius:8px;color:#9333ea;padding-top:12px;padding-right:24px;padding-bottom:12px;padding-left:24px">Más información →</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:column -->

</div>
<!-- /wp:columns -->

</div>
<!-- /wp:group -->

</div>
<!-- /wp:group -->

<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"100px","bottom":"100px","left":"20px","right":"20px"}},"color":{"gradient":"linear-gradient(135deg,#0f0a1f 0%,#1a0f2e 100%)"}},"className":"am-about-section","layout":{"type":"default"}} -->
<div class="wp-block-group alignfull am-about-section has-background" style="background:linear-gradient(135deg,#0f0a1f 0%,#1a0f2e 100%);padding-top:100px;padding-right:20px;padding-bottom:100px;padding-left:20px">

<!-- wp:group {"layout":{"type":"constrained","contentSize":"1200px"}} -->
<div class="wp-block-group">

<!-- wp:columns {"align":"wide","style":{"spacing":{"blockGap":{"left":"80px"}}}} -->
<div class="wp-block-columns alignwide">

<!-- wp:column {"width":"40%","style":{"spacing":{"padding":{"top":"0","bottom":"0"}}}} -->
<div class="wp-block-column" style="padding-top:0;padding-bottom:0;flex-basis:40%">

<!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"10rem"}}} -->
<p class="has-text-align-center" style="font-size:10rem">🪷</p>
<!-- /wp:paragraph -->

</div>
<!-- /wp:column -->

<!-- wp:column {"width":"60%"} -->
<div class="wp-block-column" style="flex-basis:60%">

<!-- wp:paragraph {"style":{"typography":{"fontSize":"0.875rem","fontWeight":"600","letterSpacing":"0.1em"},"color":{"text":"#9333ea"},"spacing":{"margin":{"bottom":"12px"}}}} -->
<p style="color:#9333ea;margin-bottom:12px;font-size:0.875rem;font-weight:600;letter-spacing:0.1em">SOBRE MÍ</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"clamp(1.75rem, 4vw, 2.5rem)","fontWeight":"700"},"spacing":{"margin":{"bottom":"24px"}}}} -->
<h2 class="wp-block-heading" style="color:#ffffff;margin-bottom:24px;font-size:clamp(1.75rem, 4vw, 2.5rem);font-weight:700">Hola, soy AmparoMédium</h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"1.125rem","lineHeight":"1.8"},"spacing":{"margin":{"bottom":"32px"}}}} -->
<p style="color:#a8a29e;margin-bottom:32px;font-size:1.125rem;line-height:1.8">Con años de experiencia en el mundo espiritual, ofrezco servicios profesionales para ayudarte a conectar con tu esencia y encontrar respuestas a través de diferentes técnicas espirituales. Mi misión es acompañarte en tu camino de despertar.</p>
<!-- /wp:paragraph -->

<!-- wp:group {"style":{"spacing":{"blockGap":"20px"}},"layout":{"type":"flex","orientation":"vertical"}} -->
<div class="wp-block-group">

<!-- wp:group {"style":{"spacing":{"blockGap":"16px"}},"layout":{"type":"flex","flexWrap":"nowrap","verticalAlignment":"top"}} -->
<div class="wp-block-group">
<!-- wp:paragraph {"style":{"typography":{"fontSize":"2rem"}}} -->
<p style="font-size:2rem">⭐</p>
<!-- /wp:paragraph -->
<!-- wp:group {"layout":{"type":"flex","orientation":"vertical"}} -->
<div class="wp-block-group">
<!-- wp:paragraph {"style":{"color":{"text":"#ffffff"},"typography":{"fontWeight":"600"},"spacing":{"margin":{"bottom":"4px"}}}} -->
<p style="color:#ffffff;margin-bottom:4px;font-weight:600">Experiencia</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph {"style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"0.9rem"}}} -->
<p style="color:#a8a29e;font-size:0.9rem">Años de dedicación al crecimiento espiritual y desarrollo personal</p>
<!-- /wp:paragraph -->
</div>
<!-- /wp:group -->
</div>
<!-- /wp:group -->

<!-- wp:group {"style":{"spacing":{"blockGap":"16px"}},"layout":{"type":"flex","flexWrap":"nowrap","verticalAlignment":"top"}} -->
<div class="wp-block-group">
<!-- wp:paragraph {"style":{"typography":{"fontSize":"2rem"}}} -->
<p style="font-size:2rem">🎓</p>
<!-- /wp:paragraph -->
<!-- wp:group {"layout":{"type":"flex","orientation":"vertical"}} -->
<div class="wp-block-group">
<!-- wp:paragraph {"style":{"color":{"text":"#ffffff"},"typography":{"fontWeight":"600"},"spacing":{"margin":{"bottom":"4px"}}}} -->
<p style="color:#ffffff;margin-bottom:4px;font-weight:600">Especialización</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph {"style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"0.9rem"}}} -->
<p style="color:#a8a29e;font-size:0.9rem">Técnicas avanzadas en registros akáshicos, canalización y videncia</p>
<!-- /wp:paragraph -->
</div>
<!-- /wp:group -->
</div>
<!-- /wp:group -->

<!-- wp:group {"style":{"spacing":{"blockGap":"16px"}},"layout":{"type":"flex","flexWrap":"nowrap","verticalAlignment":"top"}} -->
<div class="wp-block-group">
<!-- wp:paragraph {"style":{"typography":{"fontSize":"2rem"}}} -->
<p style="font-size:2rem">❤️</p>
<!-- /wp:paragraph -->
<!-- wp:group {"layout":{"type":"flex","orientation":"vertical"}} -->
<div class="wp-block-group">
<!-- wp:paragraph {"style":{"color":{"text":"#ffffff"},"typography":{"fontWeight":"600"},"spacing":{"margin":{"bottom":"4px"}}}} -->
<p style="color:#ffffff;margin-bottom:4px;font-weight:600">Compromiso</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph {"style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"0.9rem"}}} -->
<p style="color:#a8a29e;font-size:0.9rem">Acompañamiento personalizado y cercano en tu camino espiritual</p>
<!-- /wp:paragraph -->
</div>
<!-- /wp:group -->
</div>
<!-- /wp:group -->

</div>
<!-- /wp:group -->

<!-- wp:buttons {"style":{"spacing":{"margin":{"top":"40px"}}}} -->
<div class="wp-block-buttons" style="margin-top:40px">
<!-- wp:button {"style":{"color":{"background":"#9333ea","text":"#ffffff"},"border":{"radius":"8px"},"spacing":{"padding":{"top":"14px","bottom":"14px","left":"28px","right":"28px"}}}} -->
<div class="wp-block-button"><a class="wp-block-button__link has-text-color has-background wp-element-button" href="/sobre-mi" style="border-radius:8px;color:#ffffff;background-color:#9333ea;padding-top:14px;padding-right:28px;padding-bottom:14px;padding-left:28px">Conocer más sobre mí →</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:column -->

</div>
<!-- /wp:columns -->

</div>
<!-- /wp:group -->

</div>
<!-- /wp:group -->

<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"100px","bottom":"100px","left":"20px","right":"20px"}},"color":{"gradient":"linear-gradient(135deg,#1a0f2e 0%,#9333ea 100%)"}},"className":"am-membership-section","layout":{"type":"default"}} -->
<div class="wp-block-group alignfull am-membership-section has-background" style="background:linear-gradient(135deg,#1a0f2e 0%,#9333ea 100%);padding-top:100px;padding-right:20px;padding-bottom:100px;padding-left:20px">

<!-- wp:group {"layout":{"type":"constrained","contentSize":"700px"}} -->
<div class="wp-block-group">

<!-- wp:paragraph {"align":"center","style":{"color":{"background":"#fbbf24","text":"#000000"},"border":{"radius":"25px"},"spacing":{"padding":{"top":"10px","bottom":"10px","left":"24px","right":"24px"},"margin":{"bottom":"24px"}},"typography":{"fontWeight":"700","fontSize":"0.875rem","letterSpacing":"0.05em"}}} -->
<p class="has-text-align-center has-text-color has-background" style="border-radius:25px;color:#000000;background-color:#fbbf24;margin-bottom:24px;padding-top:10px;padding-right:24px;padding-bottom:10px;padding-left:24px;font-size:0.875rem;font-weight:700;letter-spacing:0.05em">✨ ACCESO EXCLUSIVO</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"textAlign":"center","style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"clamp(1.75rem, 4vw, 2.5rem)","fontWeight":"700"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<h2 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:20px;font-size:clamp(1.75rem, 4vw, 2.5rem);font-weight:700">Únete a Nuestra Comunidad Espiritual</h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"rgba(255,255,255,0.9)"},"typography":{"fontSize":"1.125rem","lineHeight":"1.7"},"spacing":{"margin":{"bottom":"40px"}}}} -->
<p class="has-text-align-center" style="color:rgba(255,255,255,0.9);margin-bottom:40px;font-size:1.125rem;line-height:1.7">Por solo <strong>9.99€ al mes</strong>, accede a contenido exclusivo, descuentos especiales y consultas personalizadas que transformarán tu camino espiritual.</p>
<!-- /wp:paragraph -->

<!-- wp:group {"style":{"spacing":{"padding":{"top":"40px","bottom":"40px","left":"40px","right":"40px"}},"color":{"background":"rgba(255, 255, 255, 0.1)"},"border":{"radius":"20px"}},"layout":{"type":"constrained"}} -->
<div class="wp-block-group has-background" style="border-radius:20px;background-color:rgba(255, 255, 255, 0.1);padding-top:40px;padding-right:40px;padding-bottom:40px;padding-left:40px">

<!-- wp:group {"style":{"spacing":{"blockGap":"16px"}},"layout":{"type":"flex","orientation":"vertical"}} -->
<div class="wp-block-group">
<!-- wp:paragraph {"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1rem"}}} -->
<p style="color:#ffffff;font-size:1rem">✓ Contenido exclusivo mensual</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph {"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1rem"}}} -->
<p style="color:#ffffff;font-size:1rem">✓ 10% descuento en todos los cursos</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph {"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1rem"}}} -->
<p style="color:#ffffff;font-size:1rem">✓ Newsletter con tips espirituales</p>
<!-- /wp:paragraph -->
<!-- wp:paragraph {"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1rem"}}} -->
<p style="color:#ffffff;font-size:1rem">✓ 1 consulta express de 15 min/mes</p>
<!-- /wp:paragraph -->
</div>
<!-- /wp:group -->

</div>
<!-- /wp:group -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"},"style":{"spacing":{"margin":{"top":"40px"}}}} -->
<div class="wp-block-buttons" style="margin-top:40px">
<!-- wp:button {"style":{"color":{"background":"#fbbf24","text":"#000000"},"border":{"radius":"8px"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"40px","right":"40px"}},"typography":{"fontWeight":"700","fontSize":"1rem"}}} -->
<div class="wp-block-button has-custom-font-size" style="font-size:1rem"><a class="wp-block-button__link has-text-color has-background wp-element-button" href="/membresias" style="border-radius:8px;color:#000000;background-color:#fbbf24;padding-top:16px;padding-right:40px;padding-bottom:16px;padding-left:40px;font-weight:700">🌟 Suscribirme Ahora</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"rgba(255,255,255,0.7)"},"typography":{"fontSize":"0.875rem"},"spacing":{"margin":{"top":"20px"}}}} -->
<p class="has-text-align-center" style="color:rgba(255,255,255,0.7);margin-top:20px;font-size:0.875rem">Sin compromisos · Cancela cuando quieras</p>
<!-- /wp:paragraph -->

</div>
<!-- /wp:group -->

</div>
<!-- /wp:group -->

<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"100px","bottom":"100px","left":"20px","right":"20px"}},"color":{"background":"#0f0a1f"}},"className":"am-productos-section","layout":{"type":"default"}} -->
<div class="wp-block-group alignfull am-productos-section has-background" style="background-color:#0f0a1f;padding-top:100px;padding-right:20px;padding-bottom:100px;padding-left:20px">

<!-- wp:group {"layout":{"type":"constrained","contentSize":"1200px"}} -->
<div class="wp-block-group">

<!-- wp:heading {"textAlign":"center","style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"clamp(2rem, 4vw, 2.75rem)","fontWeight":"700"},"spacing":{"margin":{"bottom":"16px"}}}} -->
<h2 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:16px;font-size:clamp(2rem, 4vw, 2.75rem);font-weight:700">Productos Espirituales</h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"spacing":{"margin":{"bottom":"60px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:60px">Productos cuidadosamente seleccionados para apoyar tu práctica espiritual y bienestar</p>
<!-- /wp:paragraph -->

<!-- wp:columns {"align":"wide","style":{"spacing":{"blockGap":{"left":"30px"}}}} -->
<div class="wp-block-columns alignwide">

<!-- wp:column {"style":{"spacing":{"padding":{"top":"30px","bottom":"30px","left":"25px","right":"25px"}},"border":{"radius":"20px","width":"1px","color":"rgba(147, 51, 234, 0.3)"}},"backgroundColor":"palette4","className":"am-card am-product-card"} -->
<div class="wp-block-column am-card am-product-card has-border-color has-palette-4-background-color has-background" style="border-color:rgba(147, 51, 234, 0.3);border-width:1px;border-radius:20px;padding-top:30px;padding-right:25px;padding-bottom:30px;padding-left:25px">

<!-- wp:paragraph {"align":"center","style":{"color":{"background":"#fbbf24","text":"#000000"},"border":{"radius":"20px"},"spacing":{"padding":{"top":"6px","bottom":"6px","left":"16px","right":"16px"},"margin":{"bottom":"20px"}},"typography":{"fontSize":"0.75rem","fontWeight":"700"}}} -->
<p class="has-text-align-center has-text-color has-background" style="border-radius:20px;color:#000000;background-color:#fbbf24;margin-bottom:20px;padding-top:6px;padding-right:16px;padding-bottom:6px;padding-left:16px;font-size:0.75rem;font-weight:700">⭐ DESTACADO</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"textAlign":"center","level":3,"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1.25rem"},"spacing":{"margin":{"bottom":"8px"}}}} -->
<h3 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:8px;font-size:1.25rem">Jabón Artesanal de Azufre</h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#9333ea"},"typography":{"fontSize":"2.25rem","fontWeight":"700"},"spacing":{"margin":{"bottom":"12px"}}}} -->
<p class="has-text-align-center" style="color:#9333ea;margin-bottom:12px;font-size:2.25rem;font-weight:700">8€</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"0.9rem","lineHeight":"1.6"},"spacing":{"margin":{"bottom":"16px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:16px;font-size:0.9rem;line-height:1.6">Propiedades antifúngicas, antisépticas y antiinflamatorias para piel y cabello.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#22c55e"},"typography":{"fontSize":"0.875rem","fontWeight":"600"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<p class="has-text-align-center" style="color:#22c55e;margin-bottom:20px;font-size:0.875rem;font-weight:600">✓ En stock</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons">
<!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px","color":"#9333ea"},"color":{"text":"#9333ea"},"spacing":{"padding":{"top":"10px","bottom":"10px","left":"20px","right":"20px"}},"typography":{"fontSize":"0.875rem"}}} -->
<div class="wp-block-button has-custom-font-size is-style-outline" style="font-size:0.875rem"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/tienda" style="border-color:#9333ea;border-width:2px;border-radius:8px;color:#9333ea;padding-top:10px;padding-right:20px;padding-bottom:10px;padding-left:20px">Ver Producto</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:column -->

<!-- wp:column {"style":{"spacing":{"padding":{"top":"30px","bottom":"30px","left":"25px","right":"25px"}},"border":{"radius":"20px","width":"1px","color":"rgba(147, 51, 234, 0.3)"}},"backgroundColor":"palette4","className":"am-card am-product-card"} -->
<div class="wp-block-column am-card am-product-card has-border-color has-palette-4-background-color has-background" style="border-color:rgba(147, 51, 234, 0.3);border-width:1px;border-radius:20px;padding-top:30px;padding-right:25px;padding-bottom:30px;padding-left:25px">

<!-- wp:heading {"textAlign":"center","level":3,"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1.25rem"},"spacing":{"margin":{"bottom":"8px","top":"32px"}}}} -->
<h3 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-top:32px;margin-bottom:8px;font-size:1.25rem">Cuarzo Rosa</h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#9333ea"},"typography":{"fontSize":"2.25rem","fontWeight":"700"},"spacing":{"margin":{"bottom":"12px"}}}} -->
<p class="has-text-align-center" style="color:#9333ea;margin-bottom:12px;font-size:2.25rem;font-weight:700">15€</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"0.9rem","lineHeight":"1.6"},"spacing":{"margin":{"bottom":"16px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:16px;font-size:0.9rem;line-height:1.6">Cristal ideal para el amor propio, las relaciones y la sanación emocional.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#22c55e"},"typography":{"fontSize":"0.875rem","fontWeight":"600"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<p class="has-text-align-center" style="color:#22c55e;margin-bottom:20px;font-size:0.875rem;font-weight:600">✓ En stock</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons">
<!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px","color":"#9333ea"},"color":{"text":"#9333ea"},"spacing":{"padding":{"top":"10px","bottom":"10px","left":"20px","right":"20px"}},"typography":{"fontSize":"0.875rem"}}} -->
<div class="wp-block-button has-custom-font-size is-style-outline" style="font-size:0.875rem"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/tienda" style="border-color:#9333ea;border-width:2px;border-radius:8px;color:#9333ea;padding-top:10px;padding-right:20px;padding-bottom:10px;padding-left:20px">Ver Producto</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:column -->

<!-- wp:column {"style":{"spacing":{"padding":{"top":"30px","bottom":"30px","left":"25px","right":"25px"}},"border":{"radius":"20px","width":"1px","color":"rgba(147, 51, 234, 0.3)"}},"backgroundColor":"palette4","className":"am-card am-product-card"} -->
<div class="wp-block-column am-card am-product-card has-border-color has-palette-4-background-color has-background" style="border-color:rgba(147, 51, 234, 0.3);border-width:1px;border-radius:20px;padding-top:30px;padding-right:25px;padding-bottom:30px;padding-left:25px">

<!-- wp:heading {"textAlign":"center","level":3,"style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"1.25rem"},"spacing":{"margin":{"bottom":"8px","top":"32px"}}}} -->
<h3 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-top:32px;margin-bottom:8px;font-size:1.25rem">Drusa de Amatista</h3>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#9333ea"},"typography":{"fontSize":"2.25rem","fontWeight":"700"},"spacing":{"margin":{"bottom":"12px"}}}} -->
<p class="has-text-align-center" style="color:#9333ea;margin-bottom:12px;font-size:2.25rem;font-weight:700">45€</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"0.9rem","lineHeight":"1.6"},"spacing":{"margin":{"bottom":"16px"}}}} -->
<p class="has-text-align-center" style="color:#a8a29e;margin-bottom:16px;font-size:0.9rem;line-height:1.6">Hermosa drusa uruguaya para protección y conexión espiritual profunda.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#22c55e"},"typography":{"fontSize":"0.875rem","fontWeight":"600"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<p class="has-text-align-center" style="color:#22c55e;margin-bottom:20px;font-size:0.875rem;font-weight:600">✓ En stock</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons">
<!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px","color":"#9333ea"},"color":{"text":"#9333ea"},"spacing":{"padding":{"top":"10px","bottom":"10px","left":"20px","right":"20px"}},"typography":{"fontSize":"0.875rem"}}} -->
<div class="wp-block-button has-custom-font-size is-style-outline" style="font-size:0.875rem"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/tienda" style="border-color:#9333ea;border-width:2px;border-radius:8px;color:#9333ea;padding-top:10px;padding-right:20px;padding-bottom:10px;padding-left:20px">Ver Producto</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:column -->

</div>
<!-- /wp:columns -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"},"style":{"spacing":{"margin":{"top":"50px"}}}} -->
<div class="wp-block-buttons" style="margin-top:50px">
<!-- wp:button {"style":{"color":{"background":"#9333ea","text":"#ffffff"},"border":{"radius":"8px"},"spacing":{"padding":{"top":"14px","bottom":"14px","left":"32px","right":"32px"}}}} -->
<div class="wp-block-button"><a class="wp-block-button__link has-text-color has-background wp-element-button" href="/tienda" style="border-radius:8px;color:#ffffff;background-color:#9333ea;padding-top:14px;padding-right:32px;padding-bottom:14px;padding-left:32px">🛒 Ver Todos los Productos</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
<!-- /wp:group -->

</div>
<!-- /wp:group -->

<!-- wp:group {"align":"full","style":{"spacing":{"padding":{"top":"100px","bottom":"100px","left":"20px","right":"20px"}},"color":{"gradient":"linear-gradient(135deg,#9333ea 0%,#7c3aed 100%)"}},"className":"am-cta-section","layout":{"type":"default"}} -->
<div class="wp-block-group alignfull am-cta-section has-background" style="background:linear-gradient(135deg,#9333ea 0%,#7c3aed 100%);padding-top:100px;padding-right:20px;padding-bottom:100px;padding-left:20px">

<!-- wp:group {"layout":{"type":"constrained","contentSize":"800px"}} -->
<div class="wp-block-group">

<!-- wp:heading {"textAlign":"center","style":{"color":{"text":"#ffffff"},"typography":{"fontSize":"clamp(1.75rem, 4vw, 2.75rem)","fontWeight":"700"},"spacing":{"margin":{"bottom":"20px"}}}} -->
<h2 class="wp-block-heading has-text-align-center" style="color:#ffffff;margin-bottom:20px;font-size:clamp(1.75rem, 4vw, 2.75rem);font-weight:700">¿Listo para comenzar tu viaje espiritual?</h2>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"rgba(255,255,255,0.9)"},"typography":{"fontSize":"1.25rem"},"spacing":{"margin":{"bottom":"40px"}}}} -->
<p class="has-text-align-center" style="color:rgba(255,255,255,0.9);margin-bottom:40px;font-size:1.25rem">Reserva una sesión o inscríbete en uno de nuestros cursos</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center","flexWrap":"wrap"},"style":{"spacing":{"blockGap":"16px"}}} -->
<div class="wp-block-buttons">

<!-- wp:button {"style":{"color":{"background":"#ffffff","text":"#9333ea"},"border":{"radius":"8px"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"32px","right":"32px"}},"typography":{"fontWeight":"700"}}} -->
<div class="wp-block-button"><a class="wp-block-button__link has-text-color has-background wp-element-button" href="/reservas" style="border-radius:8px;color:#9333ea;background-color:#ffffff;padding-top:16px;padding-right:32px;padding-bottom:16px;padding-left:32px;font-weight:700">📅 Reservar Sesión</a></div>
<!-- /wp:button -->

<!-- wp:button {"className":"is-style-outline","style":{"border":{"radius":"8px","width":"2px","color":"#ffffff"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"32px","right":"32px"}},"color":{"text":"#ffffff"},"typography":{"fontWeight":"600"}}} -->
<div class="wp-block-button is-style-outline"><a class="wp-block-button__link has-text-color has-border-color wp-element-button" href="/cursos" style="border-color:#ffffff;border-width:2px;border-radius:8px;color:#ffffff;padding-top:16px;padding-right:32px;padding-bottom:16px;padding-left:32px;font-weight:600">🎓 Ver Cursos</a></div>
<!-- /wp:button -->

<!-- wp:button {"style":{"color":{"background":"#25D366","text":"#ffffff"},"border":{"radius":"8px"},"spacing":{"padding":{"top":"16px","bottom":"16px","left":"32px","right":"32px"}},"typography":{"fontWeight":"700"}}} -->
<div class="wp-block-button"><a class="wp-block-button__link has-text-color has-background wp-element-button" href="https://wa.me/34686181845?text=Hola%2C%20me%20gustar%C3%ADa%20obtener%20m%C3%A1s%20informaci%C3%B3n%20sobre%20tus%20servicios." style="border-radius:8px;color:#ffffff;background-color:#25D366;padding-top:16px;padding-right:32px;padding-bottom:16px;padding-left:32px;font-weight:700" target="_blank" rel="noreferrer noopener">💬 WhatsApp</a></div>
<!-- /wp:button -->

</div>
<!-- /wp:buttons -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"rgba(255,255,255,0.8)"},"typography":{"fontSize":"0.9rem"},"spacing":{"margin":{"top":"40px"}}}} -->
<p class="has-text-align-center" style="color:rgba(255,255,255,0.8);margin-top:40px;font-size:0.9rem">⭐ +100 clientes satisfechos · 🌟 Sesiones disponibles esta semana</p>
<!-- /wp:paragraph -->

</div>
<!-- /wp:group -->

</div>
<!-- /wp:group -->',
    'Inicio', 
    '',
    'publish', 
    'closed', 
    'closed',
    '', 
    'inicio', 
    '', 
    '',
    NOW(), 
    NOW(), 
    '',
    0, 
    'https://amparomedium.com/', 
    0, 
    'page',
    '', 
    0
);

-- Obtener el ID de la página recién creada
SET @home_page_id = LAST_INSERT_ID();

-- ============================================
-- PASO 2: CONFIGURAR COMO PÁGINA DE INICIO
-- ============================================

-- Establecer tipo de página de inicio como "página estática"
UPDATE `wp_AFIOF_options` 
SET `option_value` = 'page' 
WHERE `option_name` = 'show_on_front';

-- Establecer la página de inicio
UPDATE `wp_AFIOF_options` 
SET `option_value` = @home_page_id 
WHERE `option_name` = 'page_on_front';

-- Si no existe la opción, insertarla
INSERT INTO `wp_AFIOF_options` (`option_name`, `option_value`, `autoload`)
SELECT 'page_on_front', @home_page_id, 'yes'
WHERE NOT EXISTS (SELECT 1 FROM `wp_AFIOF_options` WHERE `option_name` = 'page_on_front');

INSERT INTO `wp_AFIOF_options` (`option_name`, `option_value`, `autoload`)
SELECT 'show_on_front', 'page', 'yes'
WHERE NOT EXISTS (SELECT 1 FROM `wp_AFIOF_options` WHERE `option_name` = 'show_on_front');

-- ============================================
-- PASO 3: CONFIGURAR META DE LA PÁGINA PARA KADENCE
-- ============================================

-- Eliminar metas anteriores (si existen)
DELETE FROM `wp_AFIOF_postmeta` WHERE `post_id` = @home_page_id;

-- Template de página
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_wp_page_template', 'default');

-- Layout fullwidth (sin sidebar)
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_layout', 'fullwidth');

-- Contenido sin caja (unboxed)
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_content_style', 'unboxed');

-- Sin padding vertical
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_vertical_padding', 'hide');

-- Ocultar título de página
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_title', 'hide');

-- Header transparente
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_transparent', 'enable');

-- Mostrar footer
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_footer', 'show');

-- Ocultar imagen destacada
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_feature', 'hide');

-- Sin sidebar
INSERT INTO `wp_AFIOF_postmeta` (`post_id`, `meta_key`, `meta_value`)
VALUES (@home_page_id, '_kad_post_sidebar_id', 'sidebar-fullwidth');

-- ============================================
-- VERIFICACIÓN
-- ============================================

-- Para verificar que todo se creó correctamente, ejecuta:
SELECT ID, post_title, post_name, post_status FROM `wp_AFIOF_posts` WHERE post_name = 'inicio';
SELECT option_name, option_value FROM `wp_AFIOF_options` WHERE option_name IN ('show_on_front', 'page_on_front');
SELECT * FROM `wp_AFIOF_postmeta` WHERE post_id = @home_page_id;

-- ============================================
-- NOTAS IMPORTANTES
-- ============================================
-- 
-- 1. Ejecutar PRIMERO: amparomedium_kadence_config.sql (configura colores y tema)
-- 2. Ejecutar DESPUÉS: este archivo (crea la página Home)
-- 3. Después de ejecutar, ir a WordPress Admin:
--    - Apariencia > Personalizar > Publicar (regenera CSS)
--    - Limpiar caché del navegador (Ctrl+Shift+R)
-- 4. El diseño usa:
--    - Emojis en lugar de imágenes (carga más rápida)
--    - Colores inline para garantizar que se apliquen
--    - Clases CSS del tema hijo para efectos hover
-- 5. Para cambiar el logo:
--    - Ir a Apariencia > Personalizar > Cabecera > Logo
--    - Subir el logo de AmparoMédium
--
-- ============================================

