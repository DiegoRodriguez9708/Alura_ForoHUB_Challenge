# Alura_ForoHUB_Challenge
Foro Hub Challenge formación Alura
# ForoHub

ForoHub es una plataforma de gestión de foros educativos construida con Spring Boot. Permite a los usuarios crear, gestionar y participar en foros de discusión sobre diversos temas educativos.

## Tabla de Contenidos

- [Características](#características)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Instalación](#instalación)
- [Uso](#uso)
- [API](#api)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)

## Características

- Registro de usuarios
- Inicio de sesión con autenticación JWT
- Creación y gestión de foros
- Participación en discusiones
- Interfaz de usuario amigable

## Tecnologías Utilizadas

- [Spring Boot](https://spring.io/projects/spring-boot)
- [Spring Security](https://spring.io/projects/spring-security)
- [JWT (JSON Web Tokens)](https://jwt.io/)
- [H2 Database](https://www.h2database.com/)
- [Maven](https://maven.apache.org/)

## Instalación

Para ejecutar el proyecto en tu máquina local, sigue estos pasos:

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/tu_usuario/forohub.git
   cd forohub
   ```
   
2.**Compila el proyecto:**

   ```bash
   mvn clean install
   ```

3.**Ejecuta la aplicación:**
   
   ```bash
   mvn spring-boot:run
   ```
La aplicación se ejecutará en "http://localhost:8080"

   ## Uso 
   
1.Registro de Usuario: Envía una solicitud POST a /register con los datos del usuario.
   ```bash
      {
          "username": "nuevo_usuario",
          "password": "tu_contraseña"
      }
   ```
2. Inicio de Sesión: Envía una solicitud POST a /login con el nombre de usuario y la contraseña.
   ```bash
   {
    "username": "tu_usuario",
    "password": "tu_contraseña"
   }
   ```
Recibirás un token JWT en la respuesta que deberás usar para autenticarte en las siguientes solicitudes.
3.Gestión de Foros: Utiliza los endpoints correspondientes para crear y gestionar foros. Asegúrate de incluir el token JWT en el encabezado de autorización.
   ## API
La API de ForoHub incluye los siguientes endpoints:

- POST /register: Registra un nuevo usuario.
- POST /login: Inicia sesión y devuelve un token JWT.
- GET /foros: Obtiene la lista de foros.
- POST /foros: Crea un nuevo foro (requiere autenticación).
- GET /foros/{id}: Obtiene detalles de un foro específico.
- POST /foros/{id}/comentarios: Agrega un comentario a un foro (requiere autenticación).

## Contribuciones
Las contribuciones son bienvenidas. Si deseas contribuir, por favor sigue estos pasos:

- Haz un fork del repositorio.
- Crea una nueva rama (git checkout -b feature/nueva-caracteristica).
- Realiza tus cambios y haz commit (git commit -m 'Agregada nueva característica').
- Haz push a la rama (git push origin feature/nueva-caracteristica).
- Abre un Pull Request.
