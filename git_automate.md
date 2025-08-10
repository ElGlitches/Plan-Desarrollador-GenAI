# Automatización de Git para Plan Desarrollador GenAI

Este repositorio contiene la estructura y materiales para tu plan de desarrollo como Desarrollador GenAI.

Además, incluye un script para automatizar las tareas comunes de Git: agregar cambios, hacer commit con mensaje personalizado y subir (push) a la rama principal (`main`) en GitHub.

---

## Requisitos previos

- Tener **Git** instalado en tu sistema.  
  Puedes verificarlo con:
  ```bash
  git --version
  ```
- Configurar tu identidad global (nombre y correo) en Git:
  ```bash
  git config --global user.name "Tu Nombre"
  git config --global user.email "tu-email@example.com"
  ```
- Tener configurado el repositorio remoto origin apuntando a tu repositorio en      GitHub. 
- Contar con permisos para hacer push en el repositorio de GitHub.
Puedes verificar con:
  ```bash
  git remote -v 
  ```

## Archivo importante
### git_automate.sh
- Script Bash que automatiza:
- Agregar todos los cambios (git add .)
- Hacer commit con mensaje personalizado (git commit -m "mensaje")
- Detectar rama actual y, si no es main, preguntar si cambiar a main antes de hacer push.
- Hacer push a la rama main (git push origin main)

## Cómo usar el script
1. Ubícate en la raíz del repositorio, donde está el script git_automate.sh.
2. Dale permisos de ejecución (solo la primera vez):
   ```bash
    chmod +x git_automate.sh
   ```
3. Ejecuta el script con un mensaje para el commit. Ejemplo:
   ```bash
    ./git_automate.sh "Semana 5: avance en LangChain y RAG"
   ```
4. El script hará lo siguiente:
  - Añadirá todos los cambios en tu carpeta.
  - Hará commit con el mensaje que entregaste.
  - Detectará si estás en la rama main.
  - Si no es así, te preguntará si quieres cambiar a main para hacer push.
    Si aceptas, cambiará y hará push a main.
    Si no, abortará el push y deberás hacer push manualmente desde tu rama actual.

## Recomendaciones
- Escribe mensajes claros y concisos en tus commits para mantener un buen historial.
- Realiza commits frecuentes para evitar pérdida de trabajo.
- Mantén actualizado el repositorio remoto con git push regularmente.
- Documenta tus avances en los README.md de cada carpeta semanal.

### Soporte
Si tienes problemas con el script o Git, revisa los mensajes de error y consulta la documentación oficial de Git:
https://git-scm.com/doc
O escríbeme para ayudarte.
