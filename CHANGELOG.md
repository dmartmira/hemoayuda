# Registro de cambios — HemoAyuda

Resumen de las actualizaciones realizadas en esta sesión de trabajo sobre la aplicación **HemoAyuda**, organizadas por pestaña.

---

## 🏠 Inicio

- Sustituido el logo por la versión definitiva aportada (gota + estetoscopio + texto "HemoAyuda"), colocado en la cabecera.
- Eliminado el resumen numérico ("Activos", "En evolución", "Último registro") para simplificar la pantalla.
- Sustituido por un **menú de accesos directos en tarjetas** (cuadrícula de 3 columnas, ampliable), con entradas a: **Medicación**, **Seguimiento**, **SOS**, **Ajustes** y **Privacidad**.
- Fondo unificado en blanco, sin cajas ni "módulos" visuales, para una apariencia más limpia.

## 💉 Registro de sangrado (modo rápido y formulario completo)

- Corregido un error que impedía que la vista previa cargara (conflicto con la palabra reservada `top`).
- Botón de "Registrar sangrado" rediseñado: ahora es un botón circular rojo con una cruz blanca, flotante en la barra inferior, entre **Seguimiento** y **SOS**.
- Corregido el texto del botón **"Espontáneo"** en "¿Por qué ocurrió?", que se salía de los límites del botón; ahora se centra correctamente.
- Iconos por tipo de sangrado (🦴 articulación, 💪 músculo, 👃 nariz/boca, etc.) aplicados también en los listados de episodios.

## 📋 Seguimiento *(antes "Historial" y "Estadísticas" por separado)*

- **Historial** y **Estadísticas** se han unificado en una sola pestaña llamada **Seguimiento**, con un selector interno para cambiar entre ambas vistas.
- Historial: filtros rediseñados como píldoras finas con un punto de color según el estado (Activo, En evolución, Resuelto).
- Estadísticas: el desglose "Por localización" ahora muestra un **icono por articulación/zona** (🦵 rodilla, 🦶 tobillo, 🙆 hombro, ✋ muñeca, etc.) junto a una barra de color, en lugar de solo texto.
- En la ficha de cada episodio, los botones "Editar" y "Eliminar" se sustituyeron por iconos minimalistas (lápiz y papelera) en la esquina inferior derecha.

## 💊 Medicación *(nueva pestaña, sustituye a la antigua tarjeta "Registrar")*

- Nueva sección para registrar las dosis de tratamiento habitual, independiente del registro de sangrados.
- Cada dosis se clasifica como **Profilaxis** o **Infusión**:
  - Si es **Profilaxis**, se indica la zona: **Articulación** (eligiendo primero **Brazo** o **Pierna**, y después la articulación concreta y el lado) o **Abdomen**.
  - Si es **Infusión**, se indica en qué **brazo** se ha realizado.
- Campos añadidos: **nombre del fármaco**, **lote** y **notas**, con indicación explícita de anotar aquí cualquier reacción u otro síntoma.
- Listado de dosis registradas con icono distintivo (🩹 profilaxis, 💉 infusión) y el punto exacto de administración.

## 🆘 SOS *(nueva pestaña)*

- Pantalla pensada para que los servicios médicos accedan de un vistazo a la información clave del paciente en una emergencia.
- Datos incluidos:
  - Datos personales: nombre, fecha de nacimiento, grupo sanguíneo, tipo de hemofilia y gravedad.
  - **Medicación actual (tratamiento habitual)** y **medicación de rescate (en caso de sangrado)**.
  - Inhibidores y alergias conocidas.
  - **Hematólogo/a de referencia** y su teléfono.
  - Centro de hemofilia y su teléfono.
  - Contacto de emergencia.
  - Notas adicionales.
- Muestra automáticamente los episodios de sangrado **activos o en evolución** en ese momento.
- Los datos se añaden o editan desde un formulario dedicado y se guardan igual que el resto de la información.

## ⚙️ Ajustes

- Añadido y después retirado un interruptor de modo claro/oscuro (la app se adapta automáticamente al modo del sistema).
- Añadida la **exportación de todos los registros a CSV**.
- Añadido el **selector de idioma** (Español / English), primero como banderas en Inicio, después como menú desplegable en un icono de tres líneas, y finalmente consolidado aquí, en Ajustes, como una lista desplegable.
- Corregido el espaciado entre la palabra "Idioma" y su selector, que quedaban pegados.
- Opción para borrar todos los datos guardados, con doble confirmación.
- Pestaña devuelta a la barra de navegación inferior (había pasado temporalmente a un menú superior).

## 🔒 Privacidad

- Nueva pantalla explicando que HemoAyuda no guarda información en servidores ni en la nube, y que todo se almacena en local, en el dispositivo del paciente.
- Añadidos enlaces a **FEDHEMO**, la **Federación Mundial de Hemofilia (WFH)** y **Liberate Life** (Sobi).
- Añadido un aviso: por el momento todos los datos se guardan en el navegador; más adelante se guardarán en una **base de datos protegida**, para que estén siempre disponibles aunque se cambie de dispositivo.

## 🌐 Idioma de la aplicación

- Toda la interfaz es ahora bilingüe (**Español** / **English**), incluyendo formularios, resumen, Seguimiento, SOS y Privacidad.
- Los episodios y dosis se guardan siempre en español y se muestran traducidos según el idioma elegido.

## 🎨 Estilo visual

- Fondo general unificado en blanco, sin tarjetas con caja, para un aspecto más limpio.
- Aplicado un estilo **glassmorphism** (cristal esmerilado, efecto "iOS"): barra de navegación flotante y translúcida, menú y tarjetas con desenfoque de fondo, botón de registro con anillo de cristal.

## 📦 Publicación

- Preparados los archivos `index.html` y `README.md` para publicar la aplicación en **GitHub Pages**, con instrucciones paso a paso.
- `README.md` actualizado para describir el funcionamiento de cada pestaña.

---

> **Nota:** esta aplicación es una herramienta de apoyo para el registro y seguimiento de episodios de sangrado y medicación en hemofilia. No sustituye las indicaciones del equipo de hematología ni constituye asesoramiento médico.
