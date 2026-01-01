# 🏠 Guía de Implementación: Página HOME AmparoMédium

## 📋 Resumen

Esta guía te permite crear la página HOME de AmparoMédium en tu sitio WordPress con el tema Kadence Child.

---

## 🚀 Opción 1: Crear desde WordPress Admin (Recomendado)

### Paso 1: Crear Nueva Página

1. Ve a **Páginas > Añadir nueva**
2. Título: `Inicio`
3. Slug: `inicio`

### Paso 2: Configurar Layout de Página

En la barra lateral derecha, busca **"Kadence Page Settings"** y configura:

- **Page Layout:** Fullwidth
- **Content Style:** Unboxed
- **Page Title:** Hide
- **Featured Image:** Hide
- **Transparent Header:** Enable
- **Vertical Padding:** Disable

### Paso 3: Añadir Contenido

Copia y pega el siguiente contenido en el editor de bloques (Gutenberg):

#### HERO SECTION

```html
<!-- wp:cover {"dimRatio":70,"overlayColor":"black","minHeight":100,"minHeightUnit":"vh","align":"full"} -->
<div class="wp-block-cover alignfull" style="min-height:100vh">
<span aria-hidden="true" class="wp-block-cover__background has-black-background-color has-background-dim-70 has-background-dim"></span>
<div class="wp-block-cover__inner-container">

<!-- wp:heading {"textAlign":"center","level":1,"style":{"typography":{"fontSize":"3.5rem"},"color":{"text":"#ffffff"}}} -->
<h1 class="wp-block-heading has-text-align-center" style="color:#ffffff;font-size:3.5rem">AmparoMédium</h1>
<!-- /wp:heading -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#a8a29e"},"typography":{"fontSize":"1.25rem"}}} -->
<p class="has-text-align-center" style="color:#a8a29e;font-size:1.25rem">Especialista en Registros Akáshicos, Canalización y Videncia</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph {"align":"center","style":{"color":{"text":"#ffffff"}}} -->
<p class="has-text-align-center" style="color:#ffffff">Descubre tu camino espiritual y conecta con tu esencia a través de servicios profesionales de alta vibración</p>
<!-- /wp:paragraph -->

<!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"}} -->
<div class="wp-block-buttons">
<!-- wp:button {"backgroundColor":"vivid-purple","style":{"border":{"radius":"8px"}}} -->
<div class="wp-block-button"><a class="wp-block-button__link has-vivid-purple-background-color has-background wp-element-button" href="/cursos" style="border-radius:8px">Explorar Cursos</a></div>
<!-- /wp:button -->
<!-- wp:button {"className":"is-style-outline"} -->
<div class="wp-block-button is-style-outline"><a class="wp-block-button__link wp-element-button" href="/reservas">Reservar Sesión</a></div>
<!-- /wp:button -->
</div>
<!-- /wp:buttons -->

</div>
</div>
<!-- /wp:cover -->
```

### Paso 4: Establecer como Página de Inicio

1. Ve a **Ajustes > Lectura**
2. Selecciona "Una página estática"
3. En "Portada" selecciona la página "Inicio"
4. Guarda cambios

---

## 🚀 Opción 2: Ejecutar SQL en phpMyAdmin

Si prefieres crear todo automáticamente, ejecuta el script SQL que está en:

```
DB/amparomedium_home_complete.sql
```

### Pasos:

1. Accede a **phpMyAdmin** en tu hosting
2. Selecciona la base de datos `Chacras_22518`
3. Ve a la pestaña **SQL**
4. Copia y pega el contenido del archivo `amparomedium_home_complete.sql`
5. Haz clic en **Ejecutar**

---

## 🎨 Estructura del HOME

El Home contiene las siguientes secciones:

| Sección | Descripción |
|---------|-------------|
| **Hero** | Imagen de fondo con título, subtítulo y CTAs |
| **Servicios Rápidos** | 3 tarjetas con los servicios principales |
| **Sobre AmparoMédium** | Descripción con imagen de flor de loto |
| **Membresía** | Sección destacada para suscripción |
| **Productos** | 3 productos destacados de la tienda |
| **CTA Final** | Llamado a la acción con botones de contacto |

---

## 🎨 Personalización

### Añadir Imagen de Fondo al Hero

1. Edita la página con el editor de bloques
2. Selecciona el bloque "Portada" (Cover)
3. Haz clic en "Añadir multimedia"
4. Sube tu imagen de fondo (chakras, espiritual, etc.)
5. Ajusta la opacidad del overlay

### Añadir Logo

1. En el bloque de imagen dentro del Hero
2. Haz clic para añadir imagen
3. Sube tu logo (preferiblemente PNG transparente)
4. Ajusta el tamaño a 80px

---

## 📱 Responsive

El diseño es automáticamente responsive gracias a los bloques de Gutenberg y el CSS del tema hijo.

Para ajustes específicos en móvil:
1. Edita la página
2. Usa el icono de vista previa móvil
3. Ajusta tamaños de fuente y espaciados

---

## ✅ Checklist Final

- [ ] Página HOME creada
- [ ] Establecida como página de inicio
- [ ] Imagen de fondo del Hero añadida
- [ ] Logo añadido
- [ ] Todos los enlaces funcionando
- [ ] Vista móvil revisada
- [ ] CSS del tema hijo aplicado

---

## 🔧 Solución de Problemas

### Los estilos no se aplican

1. Ve a **Apariencia > Personalizar**
2. Haz clic en "Publicar" para regenerar CSS
3. Limpia caché del navegador (Ctrl+Shift+R)

### El header no es transparente

1. Edita la página
2. En configuración de Kadence, activa "Transparent Header"
3. Guarda y actualiza

### Los colores no coinciden

Verifica que el tema hijo `amparomedium-kadence-child` esté activo en:
**Apariencia > Temas**

---

## 📞 Soporte

- **WhatsApp:** +34 686 18 18 45
- **Email:** info@amparomedium.com

---

**Última actualización:** Enero 2026

