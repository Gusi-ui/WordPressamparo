# GUÍA RÁPIDA: Implementación Paso a Paso
## Home AmparoMédium en WordPress + Kadence + Elementor Free

---

## 🎯 TEMA ACTIVO

- **Tema Padre:** Kadence Theme
- **Tema Hijo:** AmparoMédium - Kadence Child

> **Nota:** El tema hijo ya incluye todos los estilos CSS personalizados necesarios.

---

## 🎯 FASE 1: PREPARACIÓN (30 minutos)

### Paso 1.1: Verificar Temas
```
1. Ir a Apariencia > Temas
2. Verificar que "AmparoMédium - Kadence Child" está activo
3. Verificar que "Kadence" (tema padre) está instalado
```

### Paso 1.2: Instalar Elementor (Opcional)
```
1. Ir a Plugins > Añadir nuevo
2. Buscar "Elementor"
3. Instalar y Activar
4. Saltar el wizard de configuración (por ahora)

Nota: También puedes usar el editor de bloques de Kadence
que ya viene incluido y no requiere plugins adicionales.
```

### Paso 1.3: Preparar Recursos
```
1. Descargar todas las imágenes del sitio original
2. Optimizarlas con TinyPNG.com
3. Convertir a WebP si es posible
4. Organizarlas en carpetas:
   - /hero
   - /productos
   - /iconos
   - /testimonios
```

---

## 🎨 FASE 2: CONFIGURACIÓN INICIAL (20 minutos)

### Paso 2.1: Configurar Colores Globales
```
1. Ir a Elementor > Configuración del Sitio
2. Click en "Colores Globales"
3. Agregar:
   - Primary: #9333ea (Púrpura)
   - Secondary: #7c3aed (Púrpura oscuro)
   - Text: #ffffff (Blanco)
   - Accent: #fbbf24 (Dorado)
```

### Paso 2.2: Configurar Tipografía
```
1. Ir a Elementor > Configuración del Sitio
2. Click en "Tipografía"
3. Configurar:
   - Fuente principal: Inter (Google Fonts)
   - Pesos: 400, 600, 700
   - Tamaño base: 16px
```

### Paso 2.3: Aplicar CSS Personalizado
```
1. Ir a Apariencia > Personalizar > CSS Adicional
2. Copiar todo el contenido de "styles-amparomedium.css"
3. Pegar y Publicar
```

---

## 🏗️ FASE 3: CREAR LA ESTRUCTURA (2 horas)

### Paso 3.1: Crear Página Home
```
1. Ir a Páginas > Añadir nueva
2. Título: "Inicio" o "Home"
3. Click en "Editar con Elementor"
4. En Configuración de Página:
   - Layout: Elementor Canvas (sin header/footer del theme)
   - Página de Inicio: Activar
```

### Paso 3.2: SECCIÓN 1 - HERO
```
1. Click en el + para añadir sección
2. Seleccionar estructura de 1 columna
3. En Estilo de Sección:
   - Height: Min Height 100vh
   - Background Type: Classic
   - Background Image: Subir chakraaa.jpg
   - Background Position: Center Center
   - Background Size: Cover
   - Background Overlay: Activar
     - Color: #0f0a1f
     - Opacity: 0.6

4. Añadir widgets en orden:
   a) Widget Image (logo)
      - Subir logo.jpg
      - Tamaño: Custom 80px
      - Alignment: Center
   
   b) Widget Heading (H1)
      - Texto: "AmparoMédium"
      - HTML Tag: H1
      - Color: #ffffff
      - Typography: 3.5rem, Bold
      - Alignment: Center
   
   c) Widget Text Editor (subtítulo)
      - Texto: "Especialista en Registros Akáshicos..."
      - Color: #a8a29e
      - Typography: 1.25rem
      - Alignment: Center
   
   d) Widget Text Editor (descripción)
      - Texto: "Descubre tu camino espiritual..."
      - Color: #ffffff
      - Typography: 1rem
      - Alignment: Center
   
   e) Widget Button (2 botones)
      Botón 1:
      - Text: "Explorar Cursos"
      - Link: /cursos
      - Style: Custom
      - Background: #9333ea
      - Border Radius: 8px
      - Padding: 14px 32px
      
      Botón 2:
      - Text: "Reservar Sesión"
      - Link: /reservas
      - Style: Outline
      - Border: 2px solid #9333ea
      - Color: #9333ea

5. Guardar como Plantilla: "Hero Section"
```

### Paso 3.3: SECCIÓN 2 - SERVICIOS RÁPIDOS
```
1. Añadir nueva sección
2. Seleccionar 3 columnas (33%-33%-33%)
3. Configurar sección:
   - Padding: 80px top/bottom, 20px left/right
   - Background: #0f0a1f

4. En cada columna añadir Widget Icon Box:

   Columna 1:
   - Icon: fas fa-book-open
   - Title: "Registros Akáshicos"
   - Description: "Accede a tu información akáshica"
   - Icon Color: #9333ea
   - Icon Size: 48px
   
   Columna 2:
   - Icon: fas fa-hands
   - Title: "Canalización"
   - Description: "Conexión con guías espirituales"
   - Icon Color: #9333ea
   
   Columna 3:
   - Icon: fas fa-eye
   - Title: "Videncia"
   - Description: "Lecturas y orientación espiritual"
   - Icon Color: #9333ea

5. En Avanzado de cada Icon Box:
   - CSS Class: servicios-rapidos
```

### Paso 3.4: SECCIÓN 3 - SOBRE AMPARO
```
1. Añadir nueva sección
2. Seleccionar 2 columnas (40%-60%)
3. Configurar sección:
   - Padding: 100px top/bottom
   - Background: Gradient
     - Color 1: #0f0a1f (Position 0%)
     - Color 2: #1a0f2e (Position 100%)
     - Angle: 135deg

4. Columna 1 (40%):
   a) Widget Image
      - Subir: flordeloto.png
      - Size: Medium
      - Alignment: Center
      - Animation: Fade In

5. Columna 2 (60%):
   a) Widget Heading
      - Text: "Sobre AmparoMédium"
      - HTML Tag: H2
      - Color: #ffffff
   
   b) Widget Text Editor
      - Texto: "Con años de experiencia..."
      - Color: #a8a29e
   
   c) Widget Icon List (repetir 3 veces)
      Item 1:
      - Icon: fas fa-star
      - Text: "Experiencia"
      - Description: "Años de dedicación..."
      
      Item 2:
      - Icon: fas fa-certificate
      - Text: "Especialización"
      - Description: "Técnicas avanzadas..."
      
      Item 3:
      - Icon: fas fa-heart
      - Text: "Compromiso"
      - Description: "Acompañamiento personalizado..."
```

### Paso 3.5: SECCIÓN 4 - MEMBRESÍA
```
1. Añadir nueva sección
2. Seleccionar 1 columna (Full Width)
3. Configurar sección:
   - Padding: 80px top/bottom
   - Background: Gradient
     - Color 1: #1a0f2e (Position 0%)
     - Color 2: #9333ea (Position 100%)
     - Angle: 135deg

4. Añadir Inner Section con 1 columna:
   a) Widget Text Editor (Badge)
      - Texto: "Acceso Ilimitado"
      - CSS Class: badge
   
   b) Widget Heading
      - Texto: "Únete a Nuestra Comunidad Espiritual"
      - HTML Tag: H2
   
   c) Widget Text Editor
      - Texto: "Por solo 9.99€ al mes..."
   
   d) Widget Icon List (4 items)
      - ✓ Contenido exclusivo mensual
      - ✓ 10% descuento en todos los cursos
      - ✓ Newsletter con tips espirituales
      - ✓ 1 consulta express de 15 min/mes
   
   e) Widget Button
      - Texto: "Suscribirme Ahora"
      - Link: /membresias
      - Background: #fbbf24

5. Añadir otra Inner Section (Tarjeta de Precio):
   - Background: rgba(255,255,255,0.1)
   - Border Radius: 16px
   - Padding: 40px
   
   Contenido:
   a) Heading: "Plan Único"
   b) Heading: "9.99€/mes"
   c) Text: "Facturación mensual"
   d) Icon List (repetir beneficios)
   e) Text: "✨ Cancela cuando quieras"
```

### Paso 3.6: SECCIÓN 5 - SERVICIOS DETALLADOS
```
1. Añadir nueva sección
2. Seleccionar 3 columnas
3. Padding: 80px top/bottom
4. Background: #0f0a1f

5. En cada columna (ejemplo: Registros Akáshicos):
   a) Widget Image (icono)
      - Tamaño: 80px
   
   b) Widget Heading H3
      - Texto: "Registros Akáshicos"
      - Color: #9333ea
   
   c) Widget Text Editor
      - Descripción del servicio
   
   d) Widget Icon List
      ✓ Propósito de vida
      ✓ Lecciones kármicas
      ✓ Sanación del alma
   
   e) Widget Button
      - Texto: "Más información"
      - Style: Outline
      - Link: /servicios/registros-akashicos

6. Repetir para Canalización y Videncia
```

### Paso 3.7: SECCIÓN 6 - PRODUCTOS
```
1. Añadir nueva sección
2. Seleccionar 3 columnas
3. Configurar como Servicios (mismo estilo)

4. En cada columna:
   a) Widget Image
      - Producto (Azufre.webp, cuarzo-rosa.jpg, etc.)
      - Aspect Ratio: 1/1
      - Border Radius: 12px
   
   b) Widget Text Editor (Badge opcional)
      - Texto: "⭐ DESTACADO"
   
   c) Widget Heading H3
      - Nombre del producto
   
   d) Widget Heading H4
      - Precio: "8€"
      - Color: #9333ea
   
   e) Widget Text Editor
      - Descripción
   
   f) Widget Text Editor
      - Estado: "✓ En stock (20 disponibles)"
   
   g) Widget Button
      - Texto: "Ver Producto"
      - Link: /servicios?tab=productos
```

### Paso 3.8: SECCIÓN 7 - TESTIMONIOS
```
1. Añadir nueva sección
2. Seleccionar 3 columnas (o 1 si usas carrusel)
3. Padding: 80px top/bottom
4. Background: Gradient (#0f0a1f → #1a0f2e)

5. En cada columna:
   a) Widget Testimonial (o Text Editor)
      - Texto del testimonio con comillas
      - Rating: ⭐⭐⭐⭐⭐
   
   b) Widget Image (avatar circular)
      - Tamaño: 60px
      - Border Radius: 50%
   
   c) Widget Text Editor
      - Nombre: "María González"
      - Servicio: "Registros Akáshicos"

6. CSS Class: testimonial-card
```

### Paso 3.9: SECCIÓN 8 - CTA FINAL
```
1. Añadir nueva sección
2. Seleccionar 1 columna
3. Configurar:
   - Padding: 100px top/bottom
   - Background: Gradient (#9333ea → #7c3aed)
   - Text Align: Center

4. Contenido:
   a) Widget Heading H2
      - Texto: "¿Listo para comenzar tu viaje espiritual?"
   
   b) Widget Text Editor
      - Subtítulo
   
   c) Widget Button (3 botones)
      - Reservar Sesión
      - Ver Cursos
      - WhatsApp (con enlace wa.me)
   
   d) Widget Text Editor
      - "+100 clientes satisfechos"
      - "Sesiones disponibles esta semana"
```

### Paso 3.10: SECCIÓN 9 - FOOTER
```
1. Añadir nueva sección
2. Seleccionar 3 columnas
3. Configurar:
   - Padding: 60px top, 20px bottom
   - Background: Gradient (#0f0a1f → #000000)

4. Columna 1:
   a) Widget Image (loto.png)
   b) Widget Heading H3: "AmparoMédium"
   c) Widget Text Editor: Descripción

5. Columna 2:
   a) Widget Heading H4: "Enlaces"
   b) Widget Icon List:
      - Inicio
      - Servicios
      - Cursos
      - Reservas

6. Columna 3:
   a) Widget Heading H4: "Contacto"
   b) Widget Icon List:
      - Teléfono: +34 686 18 18 45
      - Email: info@amparomedium.com

7. Añadir sección debajo (Copyright):
   - 1 columna
   - Background: #000000
   - Padding: 30px top/bottom
   - Widget Text Editor: "© 2025 AmparoMédium..."
   - Text Align: Center
```

---

## 📱 FASE 4: RESPONSIVIDAD (30 minutos)

### Paso 4.1: Revisar en Tablet
```
1. Click en el icono de Responsive Mode (tablet)
2. Ajustar para cada sección:
   - Reducir padding a 60px
   - Cambiar columnas de 3 a 2 si es necesario
   - Ajustar tamaños de fuente
```

### Paso 4.2: Revisar en Móvil
```
1. Click en el icono de Responsive Mode (móvil)
2. Ajustar para cada sección:
   - Todas las columnas a 100% width
   - Reducir padding a 40px
   - Botones a full-width
   - Tamaños de fuente más pequeños
   - Hero height: 80vh
```

---

## ✅ FASE 5: OPTIMIZACIÓN Y PUBLICACIÓN (30 minutos)

### Paso 5.1: Optimizar Imágenes
```
1. Revisar que todas las imágenes estén optimizadas
2. Activar Lazy Loading en Elementor
3. Usar WebP cuando sea posible
```

### Paso 5.2: Configurar SEO
```
1. Instalar Yoast SEO
2. Configurar:
   - Título SEO
   - Meta descripción
   - Focus Keyword
```

### Paso 5.3: Testing
```
1. Probar todos los enlaces
2. Verificar formularios (si hay)
3. Revisar en diferentes navegadores
4. Test de velocidad con Google PageSpeed
```

### Paso 5.4: Publicar
```
1. Click en "Publicar" en Elementor
2. Ir a Ajustes > Lectura
3. Configurar página de inicio como "Inicio"
4. Guardar cambios
```

---

## 🎓 TIPS PROFESIONALES

### Atajos de Elementor
```
Ctrl/Cmd + S: Guardar
Ctrl/Cmd + D: Duplicar sección/widget
Ctrl/Cmd + Z: Deshacer
Ctrl/Cmd + Shift + Z: Rehacer
Delete: Eliminar elemento seleccionado
```

### Organización
```
- Renombrar secciones y widgets con nombres descriptivos
- Usar colores en las pestañas para organizar secciones
- Guardar secciones complejas como plantillas
- Mantener un documento con todos los enlaces
```

### Performance
```
- Limitar animaciones en móvil
- No usar videos de fondo en móvil
- Comprimir todas las imágenes
- Usar CDN para recursos
- Activar cache
```

---

## 🔧 SOLUCIÓN DE PROBLEMAS

### El CSS no se aplica
```
1. Ir a Elementor > Herramientas > Regenerar CSS
2. Limpiar caché del navegador (Ctrl + Shift + R)
3. Verificar que el CSS esté en el lugar correcto
```

### Las imágenes no se ven
```
1. Verificar permisos de la carpeta uploads
2. Regenerar miniaturas con plugin
3. Verificar ruta de las imágenes
```

### Los botones no funcionan
```
1. Verificar que los enlaces sean relativos (/servicios)
2. Crear las páginas destino primero
3. Verificar que no haya # en los enlaces
```

### Elementor se carga lento
```
1. Desactivar plugins innecesarios
2. Aumentar PHP memory limit
3. Usar hosting de calidad
4. Activar cache
```

---

## 📊 MÉTRICAS DE ÉXITO

### Performance Target
```
- Tiempo de carga: < 3 segundos
- PageSpeed Score: > 80
- Tamaño de página: < 3MB
- Número de requests: < 50
```

### SEO Target
```
- Meta título y descripción optimizados
- ALT text en todas las imágenes
- Headings jerárquicos (H1, H2, H3)
- Schema markup implementado
```

---

## ✨ PRÓXIMOS PASOS

### Después del Lanzamiento
```
1. Configurar Google Analytics
2. Añadir Google Search Console
3. Crear backup automático
4. Configurar SSL
5. Añadir Política de Privacidad
6. Configurar formularios de contacto
7. Integrar sistema de reservas
8. Configurar pasarela de pago (si aplica)
```

### Mejoras Futuras
```
1. Añadir blog
2. Crear más páginas de servicios
3. Implementar chat en vivo
4. Añadir testimonios en video
5. Crear newsletter
6. Integrar redes sociales
```

---

## 🎯 CHECKLIST FINAL

- [ ] WordPress instalado
- [ ] Elementor instalado y configurado
- [ ] Colores globales configurados
- [ ] Tipografía configurada
- [ ] CSS personalizado aplicado
- [ ] Todas las imágenes subidas
- [ ] Hero section completa
- [ ] Servicios rápidos completos
- [ ] Sección Sobre Amparo completa
- [ ] Sección Membresía completa
- [ ] Servicios detallados completos
- [ ] Productos completos
- [ ] Testimonios completos
- [ ] CTA final completo
- [ ] Footer completo
- [ ] Responsividad revisada (móvil, tablet)
- [ ] Todos los enlaces funcionando
- [ ] SEO configurado
- [ ] Performance optimizado
- [ ] Página publicada
- [ ] Testing completo

---

## 📞 RECURSOS DE AYUDA

### Documentación Oficial
- Elementor: https://elementor.com/help/
- WordPress: https://wordpress.org/support/

### Comunidades
- Facebook: Elementor Community
- Reddit: r/elementor
- YouTube: Tutoriales en español

### Plugins Recomendados
- Yoast SEO (SEO)
- WP Super Cache (Performance)
- Contact Form 7 (Formularios)
- Wordfence (Seguridad)

---

**¡Éxito con tu proyecto!** 🚀

**Tiempo estimado total:** 3-4 horas
**Dificultad:** Intermedia
**Tema:** Kadence + AmparoMédium Kadence Child
**Herramientas:** WordPress + Editor de Bloques Kadence o Elementor Free (opcional)
