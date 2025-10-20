<!-- Comentario -->
<!-- Comentario -->
<!-- Comentario -->
<!-- Comentario -->

Procedimiento que pasa cuando se realiza la autenticación de Azure (login) con Federación dentro la App registrations:

Paso 1: GitHub Actions genera un JWT

GitHub genera automáticamente un token OIDC
    Token = {
    iss: "https://token.actions.githubusercontent.com",
    sub: "repo:andresparrav/mvc-app-002:environment:production",
    aud: "https://login.microsoftonline.com/"
    }

Paso 2: azure/login@v1 solicita acceso
La action toma el JWT de GitHub

Lo envía a Azure AD como "prueba de identidad"

Dice: "Soy el workflow de andresparrav/mvc-app-002 en production"

Paso 3: Azure verifica la federación
Azure AD chequea:

✅ ¿El token viene de token.actions.githubusercontent.com?
✅ ¿Tengo una App Registration con federated credential para este subject?
✅ ¿Coincide exactamente repo:usuario/repo:environment:nombre?

Paso 4: Azure devuelve token de acceso
    * Si todo coincide, Azure devuelve un access_token de Azure
    * Este token tiene los permisos de la App Registration
    * Tu workflow puede ahora usar az cli o terraform autenticado