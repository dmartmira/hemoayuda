# HemoAyuda

Aplicación web para el seguimiento de episodios de sangrado en hemofilia: localización, síntomas, tratamiento, evolución y atención médica.

## Publicar en GitHub Pages

1. Crea un repositorio nuevo en GitHub (público o privado con Pages habilitado en tu plan) y sube estos archivos a la rama principal (`main`).
2. En el repositorio, ve a **Settings → Pages**.
3. En **Source**, elige **Deploy from a branch**, selecciona la rama `main` y la carpeta `/ (root)`. Guarda.
4. Espera uno o dos minutos. GitHub mostrará la URL pública, con esta forma:
   `https://TU-USUARIO.github.io/NOMBRE-DEL-REPOSITORIO/`

No hace falta ningún paso de compilación: es un único archivo `index.html` autocontenido.

## Notas importantes

- **Datos del paciente:** se guardan únicamente en el navegador de cada persona (`localStorage`), en su propio dispositivo. Nada se envía a GitHub ni a ningún servidor. Si cambia de navegador, borra los datos del sitio o usa otro dispositivo, esos registros no se trasladan solos: conviene exportarlos antes desde Ajustes.
- **HTTPS:** GitHub Pages sirve el sitio por HTTPS de forma automática; no se requiere configuración adicional.
- **Dominio propio (opcional):** en **Settings → Pages → Custom domain** puedes añadir un dominio propio si lo tienes.
- **Actualizaciones:** para publicar cambios, sustituye `index.html` por la nueva versión y vuelve a subirlo (commit) a la rama `main`; Pages se actualiza solo.
