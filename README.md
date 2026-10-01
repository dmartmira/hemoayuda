# HemoAyuda
#### $\color{orange}{\text{Aplicación en fase Alpha, se recomienda contactar con @dmartmira a través de Telegram (indicando que quieres probar la app) para realizar pruebas.}}$

Aplicación web de seguimiento de episodios de sangrado para personas con hemofilia. Es un único archivo (`index.html`), sin instalación ni servidor: todo funciona en el navegador y los datos se guardan solo en el dispositivo de cada persona.

## Cómo se guardan los datos

No hay cuentas ni servidor: cada episodio se guarda en el `localStorage` del navegador, en el propio teléfono u ordenador de la persona. Nada se envía a GitHub ni a ningún tercero. Si se borran los datos del navegador o se cambia de dispositivo, los registros no se trasladan solos; conviene exportarlos antes desde Ajustes.

## Qué hace cada pantalla

### Inicio
Logo de la app, un pequeño resumen (episodios activos, en evolución y fecha del último registro, cuando ya hay datos) y la lista de los últimos episodios registrados, cada uno con su icono de tipo y una etiqueta de color según su estado (activo, en evolución, resuelto). Al final hay un enlace a Privacidad. Las banderas de la esquina superior cambian el idioma de toda la app entre español e inglés.

### Botón central (＋)
Botón rojo circular fijo en la barra inferior, entre Historial y Estadísticas. Abre el registro de un nuevo episodio en modo rápido.

### Registrar sangrado — Modo rápido
Formulario reducido para anotar lo esencial en segundos: dónde se produce el sangrado (articulación, músculo, piel, nariz/boca, orina/heces, cabeza, abdomen, otro), nivel de dolor actual (0–10) y la causa (espontáneo, golpe, actividad, otro). Guarda el episodio como "Activo" y permite pasar al formulario completo si se quiere más detalle.

### Registrar sangrado — Formulario completo (8 pasos)
1. **Cuándo comenzó:** fecha, hora aproximada de inicio y hora en la que se detectó.
2. **Qué tipo de sangrado es:** tipo, localización (y lado, si aplica) y una localización específica en texto libre.
3. **Cómo comenzó:** causa del episodio (espontáneo, golpe, caída, actividad física, procedimiento médico, etc.).
4. **Síntomas:** dolor actual (0–10), inflamación, calor, rigidez y dificultad para mover la zona.
5. **Tratamiento:** si se ha administrado tratamiento, producto (Factor VIII, Factor IX, Emicizumab, otro), nombre comercial, dosis y unidad, hora de administración, si fue la primera dosis y la posibilidad de añadir dosis adicionales.
6. **Evolución:** dolor actual, comparación con el inicio (mucho mejor / algo mejor / igual / peor / mucho peor) y si el sangrado parece controlado.
7. **Atención médica:** si se ha contactado con el equipo médico (y con quién), indicaciones recibidas, y si se ha acudido a urgencias o se ha sido hospitalizado.
8. **Resolución:** estado del episodio (activo, en evolución, resuelto) y, si está resuelto, fecha y hora de resolución.

Al terminar se muestra un **resumen** con todos los datos introducidos antes de guardar, con opción de editar cualquier campo.

### Historial
Lista completa de episodios registrados, con filtros en forma de píldora: Todos, Activo, En evolución y Resuelto (cada uno con un punto de color). Al tocar un episodio se abre su ficha completa, con dos iconos en la esquina inferior derecha para editar la información (lápiz) o eliminar el episodio (papelera, con doble pulsación de confirmación), y botones para cambiar su estado directamente.

### Estadísticas
Totales generales: número de episodios, episodios en los últimos 30 días, episodios con tratamiento administrado y dolor inicial medio. Debajo, un desglose de episodios por localización con una barra proporcional para cada una.

### Ajustes
- Interruptor de modo oscuro/claro (se recuerda en el dispositivo).
- Exportar todos los registros a un archivo CSV (para guardarlo o subirlo, por ejemplo, a Google Drive).
- Borrar todos los datos guardados (con doble pulsación de confirmación).

### Privacidad
Explica que HemoAyuda no guarda información en servidores ni en la nube, que todo se queda en local en el dispositivo del paciente, y qué pasa si se cambia de navegador o dispositivo. Incluye enlaces externos a FEDHEMO, la Federación Mundial de Hemofilia (WFH) y Liberate Life de Sobi.

## Aviso

HemoAyuda es una herramienta de apoyo para llevar un registro estructurado de los episodios de sangrado. No sustituye las indicaciones del equipo de hematología ni constituye asesoramiento médico.
