# Registro de cambios — HemoAyuda
## Actualización: **08/11/2026** (BETA)

- **Inicio:** saludo «Hola [nombre], ¿dónde se ha producido el sangrado?»; fecha, hora de inicio y motivo dentro del recuadro de la figura; se quitan el logo y los accesos de Nuevo sangrado y Medicación, que ahora salen al pulsar el botón «+».
- **Usuario:** nuevo campo para elegir el nombre que aparece en la app (distinto del usuario de acceso).
- **Inicio:** el registro rápido está ahora en la pantalla principal, con la figura 3D, la barra de dolor (1-10) dentro de la figura, «Otro» con descripción y el motivo en desplegable. Se elimina la sección de novedades de la ventana principal.
- **Registro rápido:** nueva figura humana 3D realista (modelo muscular) que se puede girar 360º (frontal/dorsal) arrastrando o con el botón «Girar»; se toca la articulación, músculo o zona afectada y se marca en rojo. Si el dispositivo no admite 3D se usa la figura anterior.
- **Seguridad:** el cliente de Supabase se sirve ahora desde el propio sitio con la versión fijada (2.119.0) en lugar de una CDN externa.
- **Seguridad:** se añade una política de seguridad de contenido (CSP) que limita desde dónde se pueden cargar scripts y a qué servidores se puede conectar la app.

- **Seguridad:** al crear una cuenta, la contraseña debe tener al menos 10 caracteres.

- **Acceso:** la pantalla de inicio solo tiene «Entrar» y «Solicitar invitación»; ya no se pueden crear cuentas desde la app.

- **Acceso:** entrada con correo o usuario, recuperación de contraseña por correo y pantalla para elegir contraseña al aceptar una invitación.

- **Acceso:** mensaje único «Los datos introducidos no son correctos» y bloqueo temporal tras 3 intentos fallidos (5 min, y se duplica con cada nuevo fallo).

- **ID de episodio** único (HA-XXXXXXXX) visible en el resumen y en el CSV. La función de fotos y subida a Google Drive está preparada pero desactivada por ahora. (Descripción prevista: botón de cámara al registrar el sangrado (modo rápido y formulario completo) y al resolverlo; cada episodio tiene un ID único (HA-XXXXXXXX) y las fotos se nombran `ID_inicio` e `ID_resuelto`. Subida a Google Drive en la carpeta elegida, dentro de una subcarpeta «Mes Año» (requiere configurar Google Cloud).)

- **Registro rápido:** figura humana realista y neutra, sin desplegables (cabeza, abdomen, articulaciones y músculos se eligen en la figura; el resto con botones), que da una vuelta 360º al abrir y se gira arrastrando (vista frontal y dorsal); se toca la articulación o el músculo afectado y se marca en rojo, con el lado correcto según la vista.

---

## Actualización: **02/11/2026** (BETA)

- **Diseño:** estilo translúcido (glassmorphism) en grises, en modo claro u oscuro según el dispositivo.
- **Inicio:** se quitan «Registro rápido» y las flechas, Utilidades, «Últimos episodios» y «Reportar un error»; solo se muestran los episodios activos si los hay.
- **Actividad:** estados en un desplegable (Todos, Activo, En evolución) y episodios resueltos en «Archivados».
- **Configuración:** incluye «Reportar un error».
- **Registro de sangrado:** se elimina «¿Cuándo te diste cuenta?»; «Otro» permite escribir el motivo; «Centro de salud» con hora de entrada, salida y nombre; aviso al pasar a «Resuelto» (el episodio queda finalizado); evolución a los 15/30/60 min tras guardar; aviso de borrado permanente.
- **Modo rápido:** tipo, articulación/músculo y lado en desplegables; dolor con caritas.
- **SOS:** «Añadir datos» solo con sesión iniciada.
- Se quitan los iconos de notificaciones y noticias de la parte superior.

---

## Actualización: **07/01/2026**

Resumen de las actualizaciones realizadas sobre la aplicación **HemoAyuda**, organizadas por pestaña. 

---

## 🔐 Inicio de sesión / Registro

- Pantalla con la que arranca la aplicación si no hay una sesión activa. Permite **iniciar sesión** o **crear una cuenta** con usuario y contraseña. Ninguna otra pantalla es accesible sin iniciar sesión.
- Conectado a una base de datos real en **Supabase**, con seguridad por fila (*Row Level Security*): cada persona solo puede leer y escribir sus propios datos.

## 🏠 Inicio

- Logo de HemoAyuda en la cabecera.
- Menú de accesos directos en tarjetas: **Nuevo sangrado** y **Medicación**.
- Lista de los últimos episodios registrados, cada uno con su icono de tipo y un indicador de color según su estado.

## 🩸 Nuevo sangrado

- Tarjeta propia en Inicio que abre directamente el **formulario completo** de registro (8 pasos), sin pasar por el modo rápido.
- El botón rojo circular (＋) de la barra inferior sigue abriendo el **modo rápido** (localización, dolor y causa en segundos); encima lleva la etiqueta «Registro rápido» con dos flechas animadas señalando el botón.
- Formulario completo: cuándo comenzó, tipo y localización, causa, síntomas, tratamiento, evolución, atención médica y resolución, con un resumen final antes de guardar.

## 💊 Medicación

- Registro de dosis de tratamiento habitual, independiente del registro de sangrados.
- **Profilaxis:** se elige la zona de inyección — **Abdomen, Muslo o Brazo** (lado izquierdo/derecho cuando aplica) — rotando el punto en cada dosis, igual que en una pauta real de Hemlibra u otros tratamientos subcutáneos.
- **Infusión:** se indica en qué brazo.
- Campos: nombre del fármaco, lote y notas (para anotar cualquier reacción u otro síntoma).
- Selector interno con dos vistas: **Registro** (lista de dosis) e **Historial** (antes "Dashboard"), con tarjetas de totales, desglose por punto de administración con icono y barra de color, y última zona usada.
- Exportación de todas las dosis a CSV desde Ajustes → Configuración.

## 🩺 Actividad (antes "Seguimiento")

- Une el historial de episodios de sangrado y las estadísticas en una sola pestaña, con icono de estetoscopio.
- Selector interno: **Historial** (filtros por estado: Activo, En evolución, Resuelto) y **Estadísticas** (totales y desglose por localización con icono y barra de color).

## 🆘 SOS

- Ficha de emergencia con los datos clave del paciente: datos personales, **medicación actual** y **de rescate**, inhibidores, alergias, **hematólogo/a de referencia** y su teléfono, centro de hemofilia, contacto de emergencia y notas.
- Muestra los episodios de sangrado activos o en evolución en ese momento.

## ⚙️ Ajustes

Ahora es una pantalla con las opciones en formato lista (sin menú desplegable):
- **Configuración:** idioma (Español / English), exportar episodios y medicación a CSV, borrar todos los datos.
- **Usuario:** nombre de usuario, **ID de usuario** y **hora del último inicio de sesión**, con botón para cerrar sesión.
- **Privacidad.**
- **Cerrar sesión:** también accesible directamente desde esta lista (solo visible con una sesión activa); vuelve a la pantalla de login.

## 🔒 Privacidad

- Aviso de que la aplicación está en **fase de pruebas**: se pide a quien la use que no introduzca datos personales reales, sino datos inventados para comprobar que el sistema funciona.
- Enlaces a FEDHEMO, la Federación Mundial de Hemofilia (WFH) y Liberate Life (Sobi).

## 🌐 Idioma

- Interfaz completa en **Español** e **English**, seleccionable desde Ajustes → Configuración.

## 🗄️ Base de datos (Supabase)

- Tablas protegidas con seguridad por fila (cada persona solo ve sus propios datos).
- Autenticación por usuario y contraseña.
- Mientras tanto, la app mantiene una copia local en el navegador para funcionar sin conexión; se borra al cerrar sesión.

---

> **Nota:** esta aplicación está en fase de pruebas. No introduzcas datos personales reales; usa datos inventados para comprobar que el sistema funciona correctamente. No sustituye las indicaciones del equipo de hematología ni constituye asesoramiento médico.
