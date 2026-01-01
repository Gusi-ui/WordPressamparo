# Guía Completa: Home AmparoMédium en WordPress + Elementor Free

## 📋 Índice
1. [Preparación Inicial](#preparación-inicial)
2. [Estructura de la Home](#estructura-de-la-home)
3. [Secciones Detalladas](#secciones-detalladas)
4. [Recursos Necesarios](#recursos-necesarios)
5. [CSS Personalizado](#css-personalizado)

---

## 🎯 Preparación Inicial

### Plugins Necesarios
- **Elementor** (versión Free)
- **ElementsKit Lite** (opcional, para efectos adicionales)
- **Happy Elementor Addons** (opcional, para widgets extras)

### Imágenes y Recursos a Preparar
1. **Logo**: logo.jpg (transparente preferiblemente)
2. **Hero Background**: imagen chakra o espiritual (1920x1080px)
3. **Video Hero** (opcional): video de fondo espiritual
4. **Flor de Loto**: flordeloto.png (formato PNG transparente)
5. **Productos**: 
   - Azufre.webp
   - cuarzo-rosa.jpg
   - amatista.jpg
6. **Icono Loto Footer**: loto.png

### Paleta de Colores Detectada
```css
/* Colores principales */
--primary: #9333ea (Púrpura)
--primary-dark: #7c3aed
--background: #0f0a1f (Oscuro profundo)
--text: #ffffff
--text-muted: #a8a29e
--accent: #fbbf24 (Dorado)
```

---

## 🏗️ Estructura de la Home

### Layout General
```
1. HEADER (Menú de navegación)
2. HERO SECTION (Video/Imagen + Título + CTAs)
3. SERVICIOS RÁPIDOS (3 tarjetas)
4. SOBRE AMPARO (Con imagen flor de loto)
5. SUSCRIPCIÓN/MEMBRESÍA (Destacada)
6. SERVICIOS DETALLADOS (3 servicios principales)
7. PRODUCTOS DESTACADOS (3 productos)
8. TESTIMONIOS (Carrusel)
9. CTA FINAL (Llamado a la acción)
10. FOOTER
```

---

## 📐 Secciones Detalladas

### 1. HEADER / MENÚ DE NAVEGACIÓN

**Configuración en WordPress:**
- Ir a `Apariencia > Menús`
- Crear menú con items:
  - Inicio
  - Servicios
  - Cursos
  - Suscripción
  - Reservas
  - Mi Cuenta

**En Elementor Free:**
Como Elementor Free no permite editar el header completo, usa:
- Theme Builder gratuito (si tu tema lo permite) O
- Widget "Nav Menu" de Elementor Free

**Alternativa:** Usar un plugin como **Sticky Header Effects** para mantener el menú fijo.

---

### 2. HERO SECTION

**Widget:** Sección con Background

**Configuración:**
1. Agregar nueva sección (Full Width)
2. Configurar altura mínima: 100vh
3. **Background:**
   - Tipo: Image (o Classic si quieres video)
   - Subir imagen: chakraaa_joltqh.jpg
   - Position: Center Center
   - Size: Cover
   - Overlay: Activar con color #0f0a1f (opacidad 60%)

4. **Contenido (en 1 columna central):**

**Columna Inner Section:**
```
- Logo (Widget Image)
  - Tamaño: 80px
  - Alineación: Centro

- Título H1 (Widget Heading)
  - Texto: "AmparoMédium"
  - Color: #ffffff
  - Tamaño: 3.5rem (móvil: 2rem)
  - Text Align: Center

- Subtítulo (Widget Text Editor)
  - Texto: "Especialista en Registros Akáshicos, Canalización y Videncia"
  - Tamaño: 1.25rem
  - Color: #a8a29e
  - Text Align: Center

- Descripción (Widget Text Editor)
  - Texto: "Descubre tu camino espiritual y conecta con tu esencia a través de servicios profesionales de alta vibración"
  - Tamaño: 1rem
  - Color: #ffffff
  - Max-width: 600px

- Botones (Widget Button)
  Botón 1: "Explorar Cursos"
  - Color fondo: #9333ea
  - Link: /cursos
  - Border radius: 8px
  - Padding: 15px 30px

  Botón 2: "Reservar Sesión"
  - Color fondo: Transparente
  - Border: 2px solid #9333ea
  - Link: /reservas
```

**CSS Personalizado para Hero:**
```css
/* Agregar en Elementor > Avanzado > CSS Personalizado */
.hero-section {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.hero-content {
    text-align: center;
    z-index: 10;
}
```

---

### 3. SERVICIOS RÁPIDOS (3 Tarjetas)

**Widget:** Icon Box (x3) en una sección de 3 columnas

**Sección:**
- Layout: 3 columnas (iguales 33%-33%-33%)
- Padding: 80px 20px
- Background: #0f0a1f

**Columna 1 - Registros Akáshicos:**
```
Widget: Icon Box
- Icono: fas fa-book-open (o usa imagen)
- Título: "Registros Akáshicos"
- Descripción: "Accede a tu información akáshica"
- Color icono: #9333ea
- Tamaño icono: 48px
- Alineación: Centro
- Estilo: Modern
```

**Columna 2 - Canalización:**
```
Widget: Icon Box
- Icono: fas fa-hands (o fas fa-praying-hands)
- Título: "Canalización"
- Descripción: "Conexión con guías espirituales"
- Color icono: #9333ea
```

**Columna 3 - Videncia:**
```
Widget: Icon Box
- Icono: fas fa-eye
- Título: "Videncia"
- Descripción: "Lecturas y orientación espiritual"
- Color icono: #9333ea
```

**CSS para tarjetas:**
```css
.servicios-rapidos .elementor-icon-box-wrapper {
    padding: 30px;
    border: 1px solid rgba(147, 51, 234, 0.2);
    border-radius: 12px;
    transition: all 0.3s ease;
}

.servicios-rapidos .elementor-icon-box-wrapper:hover {
    border-color: #9333ea;
    transform: translateY(-5px);
    box-shadow: 0 10px 30px rgba(147, 51, 234, 0.3);
}
```

---

### 4. SOBRE AMPAROMEDIUM

**Sección:** 2 columnas (40% - 60%)

**Columna 1 (Imagen):**
```
Widget: Image
- Subir: flordeloto.png
- Tamaño: Medium (256px)
- Alineación: Centro
- Animation: Fade In
```

**Columna 2 (Contenido):**
```
Widget: Heading
- Texto: "Sobre AmparoMédium"
- Nivel: H2
- Color: #ffffff

Widget: Text Editor
- Texto: "Con años de experiencia en el mundo espiritual..."
- Color: #a8a29e

Widget: Icon List (x3)
Item 1:
- Icono: fas fa-star
- Texto: "Experiencia - Años de dedicación..."
Item 2:
- Icono: fas fa-certificate
- Texto: "Especialización - Técnicas avanzadas..."
Item 3:
- Icono: fas fa-heart
- Texto: "Compromiso - Acompañamiento personalizado..."
```

**CSS:**
```css
.sobre-amparo {
    padding: 100px 20px;
    background: linear-gradient(135deg, #0f0a1f 0%, #1a0f2e 100%);
}
```

---

### 5. SECCIÓN SUSCRIPCIÓN/MEMBRESÍA

**Sección:** Full Width con background gradient

**Configuración:**
- Background: Gradient (#1a0f2e → #9333ea)
- Padding: 80px 20px
- Text Align: Center

**Estructura (1 columna central):**
```
Widget: Text Editor
- Badge: "Acceso Ilimitado"
- Estilo: Badge pequeño con fondo dorado

Widget: Heading H2
- Texto: "Únete a Nuestra Comunidad Espiritual"
- Color: #ffffff

Widget: Text Editor
- Texto: "Por solo 9.99€ al mes, accede a contenido exclusivo..."
- Color: rgba(255,255,255,0.9)

Widget: Icon List
- ✓ Contenido exclusivo mensual
- ✓ 10% descuento en todos los cursos
- ✓ Newsletter con tips espirituales
- ✓ 1 consulta express de 15 min/mes

Widget: Button
- Texto: "Suscribirme Ahora"
- Link: /membresias
- Color: #fbbf24 (dorado)

Widget: Text Editor
- Texto: "Sin compromisos. Cancela cuando quieras."
- Tamaño: pequeño
```

**Tarjeta de Precio (Inner Section):**
```
Background: rgba(255,255,255,0.1)
Border-radius: 16px
Padding: 40px

Heading: "Plan Único"
Precio: "9.99€/mes"
Texto: "Facturación mensual"
+ Lista de beneficios (repetir icon list)
```

---

### 6. SERVICIOS DETALLADOS

**Sección:** 3 columnas

**Estructura por columna (ejemplo Registros Akáshicos):**
```
Widget: Image
- Icono o imagen representativa
- Tamaño: 80px

Widget: Heading H3
- Texto: "Registros Akáshicos"
- Color: #9333ea

Widget: Text Editor
- Descripción del servicio

Widget: Icon List (beneficios)
- Propósito de vida
- Lecciones kármicas
- Sanación del alma

Widget: Button
- Texto: "Más información"
- Estilo: Outline
- Link: /servicios/registros-akashicos
```

**Repetir para:**
- Canalización
- Videncia

---

### 7. PRODUCTOS DESTACADOS

**Sección:** 3 columnas

**Estructura por producto:**
```
Widget: Image
- Producto (ejemplo: Azufre.webp)
- Aspect Ratio: 1:1
- Border-radius: 12px

Widget: Text Editor
- Badge "⭐ DESTACADO" (opcional)

Widget: Heading H3
- Nombre del producto

Widget: Heading H4
- Precio: "8€"
- Color: #9333ea

Widget: Text Editor
- Descripción breve

Widget: Text Editor
- Estado: "✓ En stock (20 disponibles)"
- Color: verde

Widget: Button
- Texto: "Ver Producto"
- Link: /servicios?tab=productos
```

**CSS para productos:**
```css
.productos-destacados .elementor-column {
    transition: transform 0.3s ease;
}

.productos-destacados .elementor-column:hover {
    transform: translateY(-10px);
}

.producto-imagen {
    border-radius: 12px;
    overflow: hidden;
}
```

---

### 8. TESTIMONIOS

**Widget:** Testimonial Carousel (usar plugin adicional) O crear manualmente

**Opción Manual con Elementor Free:**
```
Sección con 1 columna

Widget: Testimonial (repetir x3)
Estructura:
- Icono: comillas (")
- Texto del testimonio
- Widget: Image (avatar circular - 60px)
- Nombre: María González
- Label: "Registros Akáshicos"
- Rating: ⭐⭐⭐⭐⭐
```

**Para efecto carrusel:**
Usar CSS + un poco de JavaScript (o plugin gratuito como **Testimonial Slider**)

---

### 9. CTA FINAL

**Sección:** Full Width con background

**Configuración:**
- Background: #9333ea
- Padding: 100px 20px
- Text Align: Center

```
Widget: Heading H2
- Texto: "¿Listo para comenzar tu viaje espiritual?"
- Color: #ffffff

Widget: Text Editor
- Subtítulo: "Reserva una sesión o inscríbete en uno de nuestros cursos"

Widget: Button (x3)
- Botón 1: "Reservar Sesión" → /reservas
- Botón 2: "Ver Cursos" → /cursos
- Botón 3: "WhatsApp" → https://wa.me/34686181845

Widget: Text Editor
- "+100 clientes satisfechos"
- "Sesiones disponibles esta semana"

Widget: Image Carousel (avatares de clientes)
- Circular, pequeños
```

---

### 10. FOOTER

**Crear Footer con Elementor:**

**Opción 1:** Usar Theme Builder (si está disponible)
**Opción 2:** Crear sección al final de la página

**Estructura:** 3 columnas

**Columna 1 - Logo y descripción:**
```
Widget: Image (logo loto.png)
Widget: Heading H3 - "AmparoMédium"
Widget: Text Editor - "Servicios profesionales de..."
```

**Columna 2 - Enlaces:**
```
Widget: Heading H4 - "Enlaces"
Widget: Icon List
- Inicio
- Servicios
- Cursos
- Reservas
```

**Columna 3 - Contacto:**
```
Widget: Heading H4 - "Contacto"
Widget: Icon List
- Teléfono: +34 686 18 18 45
- Email: info@amparomedium.com
```

**Sección Copyright (debajo):**
```
Widget: Text Editor
- Texto: "© 2025 AmparoMédium. Todos los derechos reservados."
- Text Align: Center
- Fondo oscuro
```

---

## 🎨 CSS Personalizado Global

**Agregar en: Elementor > Configuración del Sitio > CSS Personalizado**

```css
/* VARIABLES GLOBALES */
:root {
    --primary: #9333ea;
    --primary-dark: #7c3aed;
    --background: #0f0a1f;
    --text: #ffffff;
    --text-muted: #a8a29e;
    --accent: #fbbf24;
}

/* ESTILOS GENERALES */
body {
    background-color: var(--background);
    color: var(--text);
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
}

/* SECCIONES */
.elementor-section {
    position: relative;
}

/* BOTONES */
.elementor-button {
    border-radius: 8px;
    padding: 14px 32px;
    font-weight: 600;
    transition: all 0.3s ease;
}

.elementor-button:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(147, 51, 234, 0.4);
}

.elementor-button.elementor-button-primary {
    background: var(--primary);
    background: linear-gradient(135deg, #9333ea 0%, #7c3aed 100%);
}

.elementor-button.elementor-button-outline {
    background: transparent;
    border: 2px solid var(--primary);
    color: var(--primary);
}

/* HEADINGS */
h1, h2, h3, h4, h5, h6 {
    color: var(--text);
    font-weight: 700;
}

h2 {
    font-size: 2.5rem;
    margin-bottom: 20px;
}

h3 {
    font-size: 1.75rem;
}

/* CARDS / TARJETAS */
.elementor-widget-icon-box .elementor-icon-box-wrapper {
    padding: 30px;
    border: 1px solid rgba(147, 51, 234, 0.2);
    border-radius: 12px;
    transition: all 0.3s ease;
    background: rgba(15, 10, 31, 0.5);
    backdrop-filter: blur(10px);
}

.elementor-widget-icon-box .elementor-icon-box-wrapper:hover {
    border-color: var(--primary);
    transform: translateY(-5px);
    box-shadow: 0 15px 40px rgba(147, 51, 234, 0.3);
}

/* GRADIENT BACKGROUNDS */
.gradient-purple {
    background: linear-gradient(135deg, #0f0a1f 0%, #1a0f2e 50%, #9333ea 100%);
}

/* BADGES */
.badge {
    display: inline-block;
    padding: 6px 16px;
    background: var(--accent);
    color: #000;
    border-radius: 20px;
    font-size: 0.875rem;
    font-weight: 600;
    margin-bottom: 16px;
}

/* TESTIMONIALS */
.testimonial-card {
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid rgba(147, 51, 234, 0.2);
    border-radius: 16px;
    padding: 30px;
    backdrop-filter: blur(10px);
}

/* RESPONSIVE */
@media (max-width: 768px) {
    h2 {
        font-size: 2rem;
    }
    
    .elementor-button {
        width: 100%;
        margin-bottom: 10px;
    }
    
    .elementor-column {
        margin-bottom: 30px;
    }
}

/* ANIMACIONES */
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.animate-fade-in-up {
    animation: fadeInUp 0.6s ease-out;
}

/* EFECTOS DE HOVER PARA IMÁGENES */
.elementor-widget-image img {
    transition: transform 0.3s ease;
}

.elementor-widget-image:hover img {
    transform: scale(1.05);
}

/* ICONOS */
.elementor-icon {
    color: var(--primary);
    transition: all 0.3s ease;
}

.elementor-icon:hover {
    color: var(--primary-dark);
    transform: rotate(5deg);
}

/* FOOTER */
.footer-section {
    background: linear-gradient(180deg, #0f0a1f 0%, #000000 100%);
    padding: 60px 20px 20px;
}

.footer-links a {
    color: var(--text-muted);
    transition: color 0.3s ease;
}

.footer-links a:hover {
    color: var(--primary);
}

/* OVERLAY EFECTOS */
.overlay-gradient {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(180deg, rgba(15,10,31,0.6) 0%, rgba(15,10,31,0.9) 100%);
    z-index: 1;
}

/* LOADING ANIMATION (opcional) */
@keyframes shimmer {
    0% { background-position: -1000px 0; }
    100% { background-position: 1000px 0; }
}

.shimmer {
    animation: shimmer 2s infinite;
    background: linear-gradient(to right, transparent 0%, rgba(147,51,234,0.2) 50%, transparent 100%);
    background-size: 1000px 100%;
}
```

---

## ⚙️ Configuración Adicional

### Tipografía Recomendada
1. Ir a `Elementor > Configuración del Sitio > Tipografía`
2. **Fuente Principal:** Inter o Poppins (Google Fonts)
3. **Peso:** 400 (regular), 600 (semibold), 700 (bold)

### Colores del Theme
1. Ir a `Elementor > Configuración del Sitio > Colores Globales`
2. Configurar:
   - Primary: #9333ea
   - Secondary: #7c3aed
   - Text: #ffffff
   - Accent: #fbbf24

### Optimización
1. **Lazy Loading:** Activar en imágenes
2. **Minificar CSS:** Usar plugin como **Autoptimize**
3. **Cache:** Instalar **WP Super Cache** o **W3 Total Cache**
4. **CDN:** Considerar Cloudflare para recursos

---

## 📱 Responsividad

### Breakpoints en Elementor
- **Desktop:** > 1024px
- **Tablet:** 768px - 1024px
- **Mobile:** < 768px

### Ajustes por Dispositivo
Para cada widget, usar las opciones responsivas de Elementor:
- Click en el icono de móvil/tablet
- Ajustar tamaños de fuente
- Modificar padding/margin
- Cambiar dirección de columnas (vertical en móvil)

---

## ✅ Checklist Final

- [ ] Todas las imágenes optimizadas (WebP, comprimidas)
- [ ] Logo en header funcional
- [ ] Menú de navegación configurado
- [ ] Hero section con imagen/video
- [ ] 3 tarjetas de servicios rápidos
- [ ] Sección Sobre Amparo con imagen
- [ ] Sección de suscripción destacada
- [ ] 3 servicios detallados con enlaces
- [ ] 3 productos con imágenes y precios
- [ ] Testimonios (mínimo 1)
- [ ] CTA final con botones WhatsApp
- [ ] Footer con enlaces y contacto
- [ ] CSS personalizado aplicado
- [ ] Colores globales configurados
- [ ] Tipografía configurada
- [ ] Versión móvil revisada
- [ ] Enlaces funcionando
- [ ] Formularios conectados (si aplica)

---

## 🚀 Pasos de Implementación

### Orden Recomendado:
1. **Preparar recursos** (imágenes, textos)
2. **Configurar colores y tipografía global**
3. **Crear estructura base** (secciones vacías)
4. **Rellenar contenido** sección por sección
5. **Aplicar CSS personalizado**
6. **Revisar responsividad**
7. **Optimizar y publicar**

---

## 💡 Tips Profesionales

1. **Usa Plantillas:** Guarda cada sección como plantilla para reutilizar
2. **Global Widgets:** Usa widgets globales para elementos repetitivos
3. **Anchor Links:** Agrega IDs a secciones para navegación suave
4. **Test en Navegadores:** Prueba en Chrome, Firefox, Safari
5. **Performance:** Mantén el tamaño de página < 3MB
6. **SEO:** Usa Yoast SEO para optimizar meta tags
7. **Analytics:** Instala Google Analytics para seguimiento

---

## 🔧 Solución de Problemas Comunes

### El video de fondo no se ve
- Usa formato MP4
- Tamaño máximo 10MB
- Considera usar solo en desktop

### Las animaciones no funcionan
- Verifica que no haya conflictos con otros plugins
- Desactiva animaciones en móvil para mejor performance

### Los colores no se aplican
- Limpia caché del navegador
- Regenera CSS en Elementor > Herramientas > Regenerar CSS

### El footer no se ve bien
- Asegúrate de usar Full Width
- Verifica que el tema no tenga footer propio

---

## 📞 Soporte y Recursos

- **Documentación Elementor:** https://elementor.com/help/
- **Comunidad:** https://www.facebook.com/groups/Elementors/
- **Tutoriales:** YouTube - "Elementor Tutorial"
- **Iconos:** FontAwesome, Flaticon
- **Imágenes:** Unsplash, Pexels

---

**Creado para:** AmparoMédium
**Versión:** 1.0
**Fecha:** Enero 2025
**Compatible con:** WordPress 6.x + Elementor Free 3.x
