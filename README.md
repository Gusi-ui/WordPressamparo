# 🔮 AmparoMédium - WordPress Site

Sitio web profesional para servicios espirituales de **Registros Akáshicos**, **Canalización** y **Videncia**.

## 📋 Descripción

Este repositorio contiene el tema hijo personalizado y la documentación para el sitio WordPress de AmparoMédium.

## 🎨 Tema: AmparoMédium Kadence Child

Tema hijo basado en **Kadence** con diseño oscuro místico y paleta de colores púrpura.

### Paleta de Colores

| Color | Código | Uso |
|-------|--------|-----|
| Púrpura Principal | `#9333ea` | Botones, enlaces, acentos |
| Púrpura Oscuro | `#7c3aed` | Hover, gradientes |
| Fondo Principal | `#0f0a1f` | Background del sitio |
| Fondo Alternativo | `#1a0f2e` | Secciones alternativas |
| Dorado | `#fbbf24` | Badges, CTAs especiales |
| Texto Principal | `#ffffff` | Títulos |
| Texto Secundario | `#a8a29e` | Párrafos |

## 📁 Estructura del Repositorio

```
WordPressamparo/
├── Documentaci/                    # Documentación del proyecto
│   ├── guia-home-amparomedium-elementor.md
│   ├── checklist-recursos-amparomedium.md
│   └── styles-amparomedium.css
├── wp-content/
│   └── themes/
│       └── amparomedium-kadence-child/  # ← Tema hijo personalizado
│           ├── assets/
│           │   └── js/main.js
│           ├── functions.php
│           ├── style.css
│           ├── screenshot.svg
│           └── README.md
├── llms.txt
├── .gitignore
└── README.md
```

## 🚀 Instalación

### Requisitos
- WordPress 6.0+
- PHP 7.4+
- Tema **Kadence** instalado (tema padre)

### Pasos

1. **Instalar Kadence** desde el repositorio de WordPress
2. **Subir** la carpeta `wp-content/themes/amparomedium-kadence-child/` al servidor
3. **Activar** el tema hijo desde Apariencia > Temas

## 🔧 Desarrollo Local

```bash
# Clonar repositorio
git clone https://github.com/Gusi-ui/WordPressamparo.git

# Copiar tema hijo a tu instalación de WordPress local
cp -r wp-content/themes/amparomedium-kadence-child /path/to/wordpress/wp-content/themes/
```

## 📚 Documentación

- [Guía de implementación del Home](Documentaci/guia-home-amparomedium-elementor.md)
- [Checklist de recursos](Documentaci/checklist-recursos-amparomedium.md)
- [Estilos CSS](Documentaci/styles-amparomedium.css)

## ⚠️ Archivos Excluidos (Seguridad)

Los siguientes archivos/carpetas están excluidos del repositorio por seguridad:

- `wp-config.php` - Credenciales de base de datos
- `DB/` - Dumps de base de datos
- `wp-content/uploads/` - Archivos de medios
- `wp-content/plugins/` - Plugins (instalar manualmente)
- Core de WordPress - Instalar desde wordpress.org

## 🔐 Seguridad

Este repositorio **NO incluye**:
- Credenciales de base de datos
- Claves API
- Archivos de configuración sensibles
- Dumps de base de datos

## 📞 Contacto

- **Sitio web:** https://amparomedium.com
- **WhatsApp:** +34 686 18 18 45
- **Email:** info@amparomedium.com

## 📄 Licencia

GPL v2 or later

---

**Versión:** 1.0.0  
**Última actualización:** Enero 2025

