# Guía: crea tu propia HemoAyuda con tu propia base de datos

Esta guía es para personas **sin conocimientos técnicos**. Al terminar tendrás tu propia copia de la app, con tu propia base de datos, que no depende de nadie más. Tardarás unos 30-40 minutos y todo es **gratis**.

> **Importante:** tus datos de salud se guardan en TU cuenta de Supabase. Nadie más (ni quien creó la app) puede verlos. Tú eres la persona responsable de ellos y de quién tiene acceso.

## Qué necesitas

1. Una cuenta gratuita en **GitHub** (https://github.com) para guardar y publicar tu copia de la app.
2. Una cuenta gratuita en **Supabase** (https://supabase.com) para la base de datos.
3. Un correo electrónico y un ordenador (el móvil sirve para usar la app, pero esta guía es más cómoda desde un ordenador).

Ten a mano un bloc de notas: vas a apuntar un par de datos.

---

## Paso 1 · Copia el repositorio

1. Entra en la página del repositorio de HemoAyuda en GitHub (el enlace que te han compartido).
2. Pulsa el botón **Fork** (arriba a la derecha) y luego **Create fork**.
3. Ya tienes tu propia copia, en `https://github.com/TU-USUARIO/NOMBRE`.

## Paso 2 · Crea tu proyecto en Supabase

1. Entra en https://supabase.com, pulsa **Start your project** y regístrate (puedes usar tu cuenta de GitHub).
2. Pulsa **New project**.
3. Rellena:
   - **Name:** por ejemplo `hemoayuda`.
   - **Database password:** pulsa *Generate a password* y **guárdala** en un lugar seguro (no la vas a usar a diario, pero no la pierdas).
   - **Region:** la más cercana a ti (por ejemplo *West EU (Ireland)* o *Central EU (Frankfurt)*).
   - **Plan:** *Free*.
4. Pulsa **Create new project** y espera 1-2 minutos a que termine.

## Paso 3 · Crea las tablas (un copiar y pegar)

1. En Supabase, en el menú de la izquierda pulsa **SQL Editor** y luego **New query**.
2. En GitHub abre el archivo `supabase/schema.sql` de tu copia y pulsa el botón **Copy raw file** (icono de copiar).
3. Pega todo el texto en el editor de Supabase y pulsa **Run** (abajo a la derecha).
4. Debe aparecer **Success. No rows returned**. Si te avisa de que la consulta «tiene operaciones destructivas», puedes aceptar: solo reemplaza reglas de seguridad que ya son las mismas.
5. Comprueba: en el menú **Table Editor** deben aparecer tres tablas: `episodes`, `medications` y `sos_profile`.

Esto crea las tablas **y** la seguridad: cada persona solo puede ver y modificar sus propios datos.

## Paso 4 · Cierra el registro público

Para que nadie pueda crearse una cuenta en tu base de datos sin que tú lo sepas:

1. Menú **Authentication** → **Sign In / Providers** (o *Providers*).
2. En **User Signups** desactiva **Allow new users to sign up**.
3. Comprueba que **Email** está activado.
4. Recomendado: en la misma zona, sube la longitud mínima de contraseña a **10**.
5. Pulsa **Save**.

## Paso 5 · Crea los usuarios (las personas que usarán la app)

Las cuentas las creas **tú**, desde Supabase:

1. **Authentication** → **Users** → **Add user** → **Create new user**.
2. **Email:**
   - Si la persona tiene correo, pon su correo real (así podrá recuperar su contraseña).
   - Si no, inventa uno con este formato: `nombre@hemoayuda.app` (por ejemplo `manuel@hemoayuda.app`). En la app entrará escribiendo solo `manuel`.
3. **Password:** una contraseña de al menos 10 caracteres. Apúntala para dársela a la persona.
4. **Marca la casilla «Auto Confirm User»** (muy importante, si no podrá entrar).
5. Pulsa **Create user**.

Repite para cada persona. Cada una verá solo sus propios datos.

## Paso 6 · Conecta la app con tu base de datos

1. En Supabase: **Project Settings** (engranaje) → **API** (o *API Keys*).
2. Apunta dos datos:
   - **Project URL**, algo como `https://abcdefghijklmnop.supabase.co`
   - La clave **anon / publishable** (una cadena larga). Es una clave pública por diseño: la seguridad la dan las reglas del Paso 3. **Nunca copies la clave `service_role` ni `secret`.**
3. En GitHub, abre `src/js/config.js` de tu copia, pulsa el **lápiz** (Edit this file) y cambia:
   - `SUPABASE_URL` → tu Project URL.
   - `SUPABASE_KEY` → tu clave anon.
   - `CONTACT_URL` → un enlace para que te pidan invitación o te avisen de errores (por ejemplo `https://t.me/tu_usuario` o `mailto:tu@correo.com`). Si lo dejas entre comillas vacío (`''`), esos botones no se muestran.
4. Pulsa **Commit changes** → **Commit changes**.

### Cambia también el identificador en `index.html`

La app solo permite hablar con tu base de datos y con ninguna otra. Para eso hay que poner tu identificador:

1. Tu identificador es la parte de la URL antes de `.supabase.co` (en el ejemplo: `abcdefghijklmnop`).
2. En GitHub abre `index.html`, pulsa el **lápiz**, busca (Ctrl+F, o Cmd+F en Mac) `pgypvwfpsxuhgcyjztbc` y sustituye **las dos veces** que aparece por tu identificador.
3. **Commit changes**.

## Paso 7 · Publica la app

1. En tu repositorio de GitHub: **Settings** → **Pages**.
2. En **Source** elige **Deploy from a branch**; en **Branch** elige `main` y la carpeta `/ (root)`; pulsa **Save**.
3. Espera 1-3 minutos y recarga. Arriba aparecerá la dirección de tu app, del estilo `https://TU-USUARIO.github.io/NOMBRE/`. **Esa es tu app.** Ábrela también en el móvil y, si quieres, «Añadir a pantalla de inicio».

## Paso 8 · Dile a Supabase cuál es tu dirección

Esto hace que funcione «Recuperar contraseña».

1. Supabase → **Authentication** → **URL Configuration**.
2. **Site URL:** pon la dirección de tu app (`https://TU-USUARIO.github.io/NOMBRE/`).
3. En **Redirect URLs** pulsa *Add URL* y pon la misma dirección.
4. **Save**.

## Paso 9 · Pruébalo

1. Abre tu app, entra con un usuario del Paso 5 y registra un sangrado de prueba.
2. En Supabase → **Table Editor** → `episodes` debe aparecer una fila nueva.
3. Si aparece, ¡ya está todo funcionando! Puedes borrar la fila de prueba.

---

## Mantenimiento (muy poco)

- **Proyecto en pausa:** en el plan gratuito, Supabase **pausa el proyecto si pasa una semana sin actividad**. Si un día la app no guarda, entra en supabase.com y pulsa **Restore project**. Con uso normal (registrar de vez en cuando) no se pausa.
- **Copias de seguridad:** el plan gratuito no incluye copias automáticas. En la app, **Perfil → Configuración → Exportar** descarga tus registros en CSV (se abre con Excel). Haz una de vez en cuando.
- **Añadir o quitar personas:** Authentication → Users. Al borrar un usuario se borran también sus datos.
- **Olvidó su contraseña:** si tiene correo real, usa «Recuperar contraseña» en la app. Si no, en Users → los tres puntos del usuario → *Send password recovery* o créale otra contraseña.
- **Actualizar la app:** si quien creó HemoAyuda publica mejoras, en tu fork pulsa **Sync fork** → **Update branch**. Tus archivos `config.js` e `index.html` pueden requerir repetir el cambio del Paso 6 si hay conflicto.

## Problemas frecuentes

| Qué pasa | Qué hacer |
|---|---|
| Pantalla en blanco o «no se pudo conectar» | Revisa que el identificador de `index.html` (Paso 6) es el tuyo y que `SUPABASE_URL` y `SUPABASE_KEY` de `config.js` están bien copiados, sin espacios. |
| «Los datos introducidos no son correctos» | Usuario o contraseña mal escritos, o el usuario se creó sin marcar *Auto Confirm User*. Bórralo y créalo de nuevo. |
| Tras varios fallos no deja entrar | Es una protección de la app: espera 5 minutos (se va duplicando con cada nuevo fallo). |
| Cambié algo y no se ve | GitHub tarda 1-3 minutos en publicar. Recarga con Ctrl+F5 o abre la app en una pestaña privada. |
| Los datos no llegan a Supabase | Mira el Paso 3 (que las tres tablas existan) y el Paso 5 (que estás entrando con un usuario creado en tu proyecto). |

## Privacidad y responsabilidad

- La app **no sustituye** a tu equipo médico. Es solo un registro personal.
- Los datos de salud son datos sensibles. Si vas a usar la app con otras personas, informales de dónde se guardan sus datos (tu Supabase), quién puede verlos (solo tú, como administrador de la base de datos, y cada persona los suyos) y cómo pedir que se borren.
- Tu repositorio de GitHub es público (necesario para GitHub Pages gratuito), pero **no contiene datos de nadie**: los datos están en tu Supabase, protegidos por usuario y contraseña.
- El modelo 3D del cuerpo es de Grab3D, licencia CC0 (uso libre).
