-- ============================================
-- SQL SCRIPT: Configuración de Kadence Theme para AmparoMédium
-- Ejecutar en la base de datos: Chacras_22518
-- Prefijo de tablas: wp_AFIOF_
-- ============================================
-- Fecha: Enero 2026
-- Descripción: Configura colores, tipografía, header y opciones globales de Kadence
-- ============================================
-- 
-- IMPORTANTE: Ejecutar DESPUÉS de activar el tema Kadence Child
-- 
-- ============================================

-- ============================================
-- PASO 1: CONFIGURAR OPCIONES GENERALES DE KADENCE
-- ============================================

-- Eliminar configuración anterior de Kadence (si existe)
DELETE FROM `wp_AFIOF_options` WHERE `option_name` = 'theme_mods_kadence';
DELETE FROM `wp_AFIOF_options` WHERE `option_name` = 'theme_mods_amparomedium-kadence-child';

-- Insertar nueva configuración completa de Kadence
INSERT INTO `wp_AFIOF_options` (`option_name`, `option_value`, `autoload`) VALUES
('theme_mods_amparomedium-kadence-child', 'a:50:{s:18:"custom_css_post_id";i:-1;s:11:"nav_menu_locations";a:1:{s:7:"primary";i:0;}s:14:"page_layout";s:9:"fullwidth";s:19:"content_background";a:1:{s:5:"color";s:7:"#0f0a1f";}s:16:"site_background";a:2:{s:4:"type";s:5:"color";s:5:"color";s:7:"#0f0a1f";}s:13:"header_sticky";s:2:"no";s:18:"header_sticky_main";b:1;s:24:"transparent_header_enable";b:1;s:21:"transparent_header_page";b:1;s:21:"transparent_header_post";b:0;s:22:"transparent_header_product";b:0;s:28:"transparent_header_archive";b:0;s:27:"transparent_header_search";b:0;s:25:"transparent_header_404";b:0;s:24:"transparent_header_site";a:1:{s:5:"color";s:7:"#0f0a1f";}s:31:"transparent_header_background";a:1:{s:5:"color";s:18:"rgba(0, 0, 0, 0)";}s:14:"header_desktop_items";a:3:{s:3:"top";a:0:{}s:4:"main";a:3:{s:11:"main_left";a:1:{i:0;s:4:"logo";}s:13:"main_center";a:0:{}s:12:"main_right";a:1:{i:0;s:11:"navigation";}};s:6:"bottom";a:0:{}}s:21:"header_main_background";a:1:{s:5:"color";s:27:"rgba(15, 10, 31, 0.95)";}s:14:"header_main_height";a:2:{s:4:"size";i:80;s:4:"unit";s:2:"px";}s:24:"header_navigation_color";a:5:{s:5:"color";s:7:"#ffffff";s:5:"hover";s:7:"#a855f7";s:6:"active";s:7:"#9333ea";s:10:"background";s:18:"rgba(0, 0, 0, 0)";s:16:"background_hover";s:18:"rgba(0, 0, 0, 0)";}s:28:"header_navigation_typography";a:4:{s:4:"size";a:1:{s:7:"desktop";s:6:"0.9rem";}s:10:"lineHeight";a:1:{s:7:"desktop";s:0:"";}s:13:"letterSpacing";a:1:{s:7:"desktop";s:0:"";}s:9:"transform";s:4:"none";}s:9:"logo_width";a:1:{s:7:"desktop";i:150;}s:13:"custom_logo";i:0;s:19:"brand_typography";a:3:{s:4:"size";a:1:{s:7:"desktop";s:6:"1.5rem";}s:6:"weight";s:3:"700";s:5:"color";s:7:"#ffffff";}s:19:"base_font";a:3:{s:6:"family";s:5:"Inter";s:6:"google";b:1;s:7:"variant";s:3:"400";}s:24:"heading_font";a:3:{s:6:"family";s:5:"Inter";s:6:"google";b:1;s:7:"variant";s:3:"700";}s:12:"link_color";a:2:{s:6:"highlight";s:7:"#9333ea";s:13:"highlight_alt";s:7:"#a855f7";}s:18:"buttons_background";a:2:{s:5:"color";s:7:"#9333ea";s:5:"hover";s:7:"#7c3aed";}s:13:"buttons_color";a:2:{s:5:"color";s:7:"#ffffff";s:5:"hover";s:7:"#ffffff";}s:20:"buttons_border_radius";a:2:{s:4:"size";i:8;s:4:"unit";s:2:"px";}s:15:"buttons_padding";a:4:{s:7:"desktop";a:4:{s:3:"top";s:5:"14px";s:5:"right";s:5:"32px";s:6:"bottom";s:5:"14px";s:4:"left";s:5:"32px";};s:6:"tablet";s:0:"";s:6:"mobile";s:0:"";s:4:"unit";s:2:"px";}s:14:"footer_wrap_background";a:1:{s:5:"color";s:7:"#0f0a1f";}s:16:"footer_html_content";s:80:"© 2025 AmparoMédium. Todos los derechos reservados. Hecho con ❤️";s:19:"footer_html_typography";a:1:{s:5:"color";s:7:"#a8a29e";}s:17:"footer_middle_background";a:1:{s:5:"color";s:7:"#0f0a1f";}s:17:"footer_bottom_background";a:1:{s:5:"color";s:7:"#000000";}s:16:"h1_font";a:3:{s:4:"size";a:1:{s:7:"desktop";s:6:"3.5rem";}s:5:"color";s:7:"#ffffff";s:6:"weight";s:3:"700";}s:16:"h2_font";a:3:{s:4:"size";a:1:{s:7:"desktop";s:6:"2.5rem";}s:5:"color";s:7:"#ffffff";s:6:"weight";s:3:"700";}s:16:"h3_font";a:3:{s:4:"size";a:1:{s:7:"desktop";s:7:"1.75rem";}s:5:"color";s:7:"#ffffff";s:6:"weight";s:3:"600";}s:16:"h4_font";a:3:{s:4:"size";a:1:{s:7:"desktop";s:6:"1.5rem";}s:5:"color";s:7:"#ffffff";s:6:"weight";s:3:"600";}s:19:"paragraph_color";s:7:"#a8a29e";s:16:"page_title_layout";s:4:"hide";s:20:"page_content_style";s:7:"unboxed";s:21:"page_vertical_padding";s:4:"hide";s:14:"page_feature_hide";b:1;s:15:"page_comments_hide";b:1;s:19:"sidebar_primary_width";i:0;s:14:"sidebar_layout";s:8:"fullwidth";s:19:"scroll_up_enable";b:1;s:17:"scroll_up_style";s:6:"filled";s:17:"scroll_up_color";a:2:{s:5:"color";s:7:"#9333ea";s:5:"hover";s:7:"#7c3aed";};}', 'yes');

-- ============================================
-- PASO 2: CONFIGURAR PALETA DE COLORES GLOBAL
-- ============================================

-- Paleta de colores de Kadence (Global Palette)
DELETE FROM `wp_AFIOF_options` WHERE `option_name` = 'kadence_global_palette';

INSERT INTO `wp_AFIOF_options` (`option_name`, `option_value`, `autoload`) VALUES
('kadence_global_palette', 'a:2:{s:7:"palette";a:12:{i:0;a:3:{s:5:"color";s:7:"#9333ea";s:4:"slug";s:9:"palette1";s:4:"name";s:19:"Primary (Púrpura)";}i:1;a:3:{s:5:"color";s:7:"#7c3aed";s:4:"slug";s:9:"palette2";s:4:"name";s:22:"Primary Dark (Oscuro)";}i:2;a:3:{s:5:"color";s:7:"#a855f7";s:4:"slug";s:9:"palette3";s:4:"name";s:21:"Primary Light (Claro)";}i:3;a:3:{s:5:"color";s:7:"#0f0a1f";s:4:"slug";s:9:"palette4";s:4:"name";s:26:"Background (Fondo Oscuro)";}i:4;a:3:{s:5:"color";s:7:"#1a0f2e";s:4:"slug";s:9:"palette5";s:4:"name";s:21:"Background Alt (Alt)";}i:5;a:3:{s:5:"color";s:7:"#ffffff";s:4:"slug";s:9:"palette6";s:4:"name";s:13:"Text (Blanco)";}i:6;a:3:{s:5:"color";s:7:"#a8a29e";s:4:"slug";s:9:"palette7";s:4:"name";s:23:"Text Muted (Secundario)";}i:7;a:3:{s:5:"color";s:7:"#fbbf24";s:4:"slug";s:9:"palette8";s:4:"name";s:16:"Accent (Dorado)";}i:8;a:3:{s:5:"color";s:7:"#22c55e";s:4:"slug";s:9:"palette9";s:4:"name";s:15:"Success (Verde)";}i:9;a:3:{s:5:"color";s:7:"#ef4444";s:4:"slug";s:10:"palette10";s:4:"name";s:13:"Error (Rojo)";}i:10;a:3:{s:5:"color";s:7:"#000000";s:4:"slug";s:10:"palette11";s:4:"name";s:14:"Black (Negro)";}i:11;a:3:{s:5:"color";s:27:"rgba(147, 51, 234, 0.2)";s:4:"slug";s:10:"palette12";s:4:"name";s:14:"Border Purple";}};s:6:"active";s:7:"palette";}', 'yes');

-- ============================================
-- PASO 3: ACTUALIZAR TÍTULO Y DESCRIPCIÓN DEL SITIO
-- ============================================

UPDATE `wp_AFIOF_options` 
SET `option_value` = 'AmparoMédium' 
WHERE `option_name` = 'blogname';

UPDATE `wp_AFIOF_options` 
SET `option_value` = 'Especialista en Registros Akáshicos, Canalización y Videncia' 
WHERE `option_name` = 'blogdescription';

-- ============================================
-- PASO 4: CONFIGURAR PÁGINA DE INICIO
-- ============================================

-- Asegurar que la página de inicio se muestre como página estática
UPDATE `wp_AFIOF_options` 
SET `option_value` = 'page' 
WHERE `option_name` = 'show_on_front';

-- ============================================
-- PASO 5: REGENERAR CSS DE KADENCE
-- ============================================

-- Eliminar caché de CSS de Kadence para forzar regeneración
DELETE FROM `wp_AFIOF_options` WHERE `option_name` LIKE '%kadence%css%';
DELETE FROM `wp_AFIOF_options` WHERE `option_name` LIKE '%kadence%version%';

-- ============================================
-- VERIFICACIÓN
-- ============================================

-- Para verificar que todo se configuró correctamente, ejecuta:
-- SELECT option_name, LEFT(option_value, 100) as valor FROM wp_AFIOF_options WHERE option_name LIKE '%kadence%' OR option_name IN ('blogname', 'blogdescription', 'show_on_front');

-- ============================================
-- NOTAS IMPORTANTES
-- ============================================
-- 
-- 1. Después de ejecutar este script, ve a WordPress Admin
-- 2. Ve a Apariencia > Personalizar y haz clic en "Publicar" 
--    (esto regenera el CSS de Kadence)
-- 3. Limpia la caché del navegador (Ctrl+Shift+R)
-- 4. Si tienes un plugin de caché, limpia la caché también
--
-- COLORES CONFIGURADOS:
-- - Primary: #9333ea (Púrpura)
-- - Primary Dark: #7c3aed
-- - Primary Light: #a855f7
-- - Background: #0f0a1f (Fondo oscuro)
-- - Background Alt: #1a0f2e
-- - Text: #ffffff (Blanco)
-- - Text Muted: #a8a29e
-- - Accent: #fbbf24 (Dorado)
-- - Success: #22c55e (Verde)
--
-- ============================================


