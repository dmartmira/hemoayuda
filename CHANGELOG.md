# Registro de cambios — HemoAyuda
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
