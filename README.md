# HemoAyuda

Aplicación web de seguimiento de episodios de sangrado y medicación para personas con hemofilia.

-- No sustituye las indicaciones del equipo de hematología ni constituye asesoramiento médico.

## Créditos

Modelo 3D «Músculos humanos» de Grab3D (https://grab3d.com/es/models/anatomy/human-muscles/), licencia CC0 1.0. Contiene contenido generado con ayuda de IA (según su LICENSE.txt). Se usa una versión optimizada en `assets/models/cuerpo.glb`.

## Crea tu propia copia

Sigue la guía [docs/GUIA-INSTALACION.md](docs/GUIA-INSTALACION.md) para montar tu propia base de datos y publicar tu app sin conocimientos técnicos.

## Estructura del repositorio

```
index.html              Aplicación (punto de entrada de GitHub Pages)
manifest.webmanifest    Datos de la app instalable (PWA)
version.json            Versión publicada (la app avisa si hay una nueva)
src/js/                 Código JavaScript propio (figura 3D) y configuración (config.js)
supabase/               Esquema SQL de la base de datos (schema.sql)
assets/icons/           Logos, iconos de la app y favicon
assets/images/          Imágenes
assets/models/          Modelo 3D del cuerpo humano
vendor/                 Librerías de terceros (Supabase, three.js)
docs/                   Registro de cambios y guía de instalación
```
