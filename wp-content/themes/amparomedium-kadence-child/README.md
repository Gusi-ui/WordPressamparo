# AmparoMédium - Kadence Child Theme

## 🔮 Descripción

Tema hijo de Kadence personalizado para **AmparoMédium** - Servicios espirituales de Registros Akáshicos, Canalización y Videncia.

## 📋 Requisitos

- WordPress 6.0 o superior
- Tema padre **Kadence** instalado y activo
- PHP 7.4 o superior

## 🎨 Paleta de Colores

| Color | Código | Uso |
|-------|--------|-----|
| Púrpura Principal | `#9333ea` | Botones, enlaces, acentos |
| Púrpura Oscuro | `#7c3aed` | Hover states, gradientes |
| Fondo Principal | `#0f0a1f` | Background del sitio |
| Fondo Alternativo | `#1a0f2e` | Secciones alternativas |
| Dorado | `#fbbf24` | Badges, CTAs especiales |
| Texto Principal | `#ffffff` | Títulos, texto importante |
| Texto Secundario | `#a8a29e` | Párrafos, descripciones |

## 🚀 Instalación

1. Instalar el tema **Kadence** desde el repositorio de WordPress
2. Subir la carpeta `amparomedium-kadence-child` a `/wp-content/themes/`
3. Activar el tema hijo desde `Apariencia > Temas`

## 📁 Estructura de Archivos

```
amparomedium-kadence-child/
├── assets/
│   ├── css/
│   │   └── (CSS adicional si es necesario)
│   ├── images/
│   │   └── (Imágenes del tema)
│   └── js/
│       └── main.js
├── functions.php
├── README.md
├── screenshot.svg
└── style.css
```

## 🎯 Características

### Estilos Personalizados
- Variables CSS globales para fácil personalización
- Diseño oscuro místico con acentos púrpura
- Animaciones suaves y modernas
- 100% responsive (mobile-first)

### Shortcodes Disponibles

#### Botón
```php
[am_button url="/reservas" style="primary"]Reservar Sesión[/am_button]
[am_button url="/cursos" style="outline"]Ver Cursos[/am_button]
[am_button url="/membresias" style="accent"]Suscribirme[/am_button]
```

#### Badge
```php
[am_badge]Acceso Ilimitado[/am_badge]
[am_badge style="primary"]Nuevo[/am_badge]
[am_badge style="success"]En Stock[/am_badge]
```

#### Separador Decorativo
```php
[am_divider]
```

#### Icono
```php
[am_icon name="fas fa-star" size="2em" color="#9333ea"]
```

### Clases CSS Útiles

#### Animaciones
- `.am-animate-fadeInUp` - Aparece desde abajo
- `.am-animate-fadeIn` - Aparece gradualmente
- `.am-animate-slideLeft` - Desliza desde la izquierda
- `.am-animate-slideRight` - Desliza desde la derecha
- `.am-animate-float` - Efecto flotante
- `.am-animate-pulse` - Efecto pulso

#### Tarjetas
- `.am-card` - Tarjeta base con bordes y hover
- `.am-service-card` - Tarjeta de servicio
- `.am-product-card` - Tarjeta de producto
- `.am-testimonial-card` - Tarjeta de testimonio
- `.am-pricing-card` - Tarjeta de precio

#### Botones
- `.am-btn-primary` - Botón púrpura principal
- `.am-btn-outline` - Botón con borde
- `.am-btn-accent` - Botón dorado

#### Utilidades
- `.am-text-center` - Centrar texto
- `.am-gradient-text` - Texto con gradiente
- `.am-divider` - Separador decorativo
- `.am-bg-dark` - Fondo oscuro
- `.am-floating-image` - Imagen con animación flotante

## ⚙️ Configuración Recomendada de Kadence

### Colores Globales
1. Ir a `Apariencia > Personalizar > Colores`
2. Configurar la paleta con los colores de AmparoMédium

### Tipografía
- **Fuente principal:** Inter (ya incluida)
- **Pesos:** 400, 500, 600, 700

### Header
- Fondo: Transparente (cambia al hacer scroll)
- Logo: Max 60px de altura

## 🔧 Personalización

### Variables CSS
Puedes sobrescribir las variables CSS en el personalizador:

```css
:root {
    --am-primary: #9333ea;
    --am-primary-dark: #7c3aed;
    --am-background: #0f0a1f;
    --am-accent: #fbbf24;
}
```

### Opciones de Página
En cada página puedes activar:
- **Header Transparente** - Para páginas con hero fullscreen
- **Ocultar Título** - Para landing pages

## 📱 Responsive Breakpoints

| Breakpoint | Tamaño |
|------------|--------|
| Desktop | > 1024px |
| Tablet | 768px - 1024px |
| Mobile | < 768px |
| Mobile Small | < 480px |

## 🎨 Integración con Elementor

El tema incluye estilos específicos para widgets de Elementor:
- Icon Box con hover effects
- Buttons con estilos personalizados
- Secciones con backgrounds apropiados

## 📞 Soporte

- **Sitio web:** https://amparomedium.com
- **Email:** info@amparomedium.com

---

**Versión:** 1.0.0  
**Autor:** AmparoMédium  
**Licencia:** GPL v2 or later

