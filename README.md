# HemoAyuda

Aplicación web de seguimiento de episodios de sangrado y medicación para personas con hemofilia. Interfaz en español e inglés, con un estilo visual tipo cristal esmerilado (glassmorphism).

## Cómo se guardan los datos

HemoAyuda requiere **iniciar sesión** (usuario y contraseña) para poder usarse. Los datos (episodios de sangrado, medicación y ficha de emergencia SOS) se guardan en una base de datos en **Supabase**, protegida con seguridad por fila (*Row Level Security*): cada persona solo puede leer y escribir sus propios datos, nunca los de otra.

Además, la app mantiene una copia local en el navegador mientras se usa (más rápida y disponible sin conexión), que se borra automáticamente al cerrar sesión, para no dejar datos visibles en un dispositivo compartido.

> **Nota técnica:** por ahora, el "usuario" de la app no es un correo electrónico real; internamente se asocia a una dirección técnica (`usuario@hemoayuda.app`) solo para el sistema de autenticación. Es necesario desactivar la confirmación por correo en el proyecto de Supabase (**Authentication → Providers → Email → "Confirm email"**) para que los registros nuevos puedan iniciar sesión.

## Usuario de pruebas

- Usuario: `daniel`
- Contraseña: `123456`

## Qué hace cada pestaña

### Inicio de sesión / Registro
Pantalla con la que arranca la aplicación si no hay una sesión activa. Permite iniciar sesión o crear una cuenta nueva (usuario y contraseña). Ninguna otra pantalla es accesible sin iniciar sesión.

### Inicio
Logo de HemoAyuda en la cabecera y, debajo, un menú de accesos directos en forma de tarjetas (3 columnas, ampliable): Medicación, Seguimiento, SOS, Ajustes y Privacidad. Le sigue la lista de los últimos episodios registrados, cada uno con su icono de tipo y un indicador de color según su estado (activo, en evolución, resuelto).

### Botón central (＋)
Botón rojo circular fijo en la barra de navegación inferior, entre Seguimiento y SOS. Abre el registro de un nuevo episodio en modo rápido.

### Registrar sangrado — Modo rápido
Formulario reducido para anotar lo esencial en segundos: dónde se produce el sangrado, nivel de dolor actual (0–10) y la causa. Guarda el episodio como "Activo" y permite pasar al formulario completo si se quiere más detalle.

### Registrar sangrado — Formulario completo (8 pasos)
1. **Cuándo comenzó:** fecha, hora aproximada de inicio y hora en la que se detectó.
2. **Qué tipo de sangrado es:** tipo, localización (y lado, si aplica) y una localización específica en texto libre.
3. **Cómo comenzó:** causa del episodio.
4. **Síntomas:** dolor actual (0–10), inflamación, calor, rigidez y dificultad para mover la zona.
5. **Tratamiento:** producto, nombre comercial, dosis y unidad, hora de administración, si fue la primera dosis y dosis adicionales.
6. **Evolución:** dolor actual, comparación con el inicio y si el sangrado parece controlado.
7. **Atención médica:** contacto con el equipo médico, indicaciones recibidas, urgencias y hospitalización.
8. **Resolución:** estado del episodio y, si está resuelto, fecha y hora.

Al terminar se muestra un **resumen** con todos los datos antes de guardar, con opción de editar cualquier campo.

### 💊 Medicación
Registro de las dosis de tratamiento habitual, independiente del registro de sangrados:
- **Profilaxis:** indicando la zona (brazo o pierna, articulación concreta y lado) o abdomen.
- **Infusión:** indicando en qué brazo.
- Nombre del fármaco, lote y notas (para anotar cualquier reacción u otro síntoma).

### 📋 Seguimiento
Une el historial de episodios y las estadísticas en una sola pestaña, con un selector para cambiar entre ambas vistas. El historial tiene filtros por estado; las estadísticas muestran totales y un desglose por localización con icono y barra de color.

### 🆘 SOS
Ficha de emergencia con los datos clave del paciente para que los servicios médicos puedan consultarlos: datos personales, medicación actual y de rescate, inhibidores, alergias, hematólogo/a de referencia, centro de hemofilia y contacto de emergencia. Muestra también los episodios activos o en evolución en ese momento.

### ⚙️ Ajustes
Selector de idioma (Español / English), exportación de los registros a CSV, cierre de sesión y borrado de todos los datos guardados.

### 🔒 Privacidad
Explica cómo y dónde se guardan los datos, e incluye enlaces a FEDHEMO, la Federación Mundial de Hemofilia (WFH) y Liberate Life (Sobi).

## Publicar en GitHub Pages

1. Crea un repositorio nuevo en GitHub y sube `index.html` (y este `README.md`) a la rama `main`.
2. Ve a **Settings → Pages**.
3. En **Source**, elige **Deploy from a branch**, rama `main`, carpeta `/ (root)`, y guarda.
4. En uno o dos minutos, GitHub mostrará la URL pública, con esta forma:
   `https://TU-USUARIO.github.io/NOMBRE-DEL-REPOSITORIO/`

No hace falta compilación: es un único archivo `index.html` autocontenido. GitHub Pages sirve el sitio por HTTPS automáticamente.

## Aviso

HemoAyuda es una herramienta de apoyo para el registro y seguimiento de episodios de sangrado y medicación en hemofilia, y para reunir información útil en caso de emergencia. No sustituye las indicaciones del equipo de hematología ni constituye asesoramiento médico.
