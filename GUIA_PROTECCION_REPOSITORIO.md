# Guía de Protección del Repositorio TallerGitHub

## 📋 Resumen

Este repositorio está configurado con múltiples capas de protección para garantizar que:
1. Nadie pueda hacer push directo a la rama `main` sin aprobación
2. Los administradores sean notificados cuando se creen nuevas ramas
3. Todos los cambios pasen por revisión de código

## 👥 Administradores

- **jdetri** - Administrador principal
- **kgonzalez06** - Administrador

## 🛡️ Protecciones Implementadas

### 1. Archivo CODEOWNERS (`.github/CODEOWNERS`)

✅ **Ya implementado en el repositorio**

Este archivo define que todos los cambios requieren aprobación de los administradores:
- Cualquier Pull Request automáticamente solicitará revisión de @jdetri y @kgonzalez06
- Los administradores deben aprobar antes de hacer merge

### 2. Workflow de Notificación (`.github/workflows/branch-creation-notification.yml`)

✅ **Ya implementado en el repositorio**

Este workflow automáticamente:
- Crea un issue cuando se crea una nueva rama
- Notifica a @jdetri y @kgonzalez06
- Agrega un comentario en el primer commit de la rama
- Etiqueta el issue para fácil seguimiento

### 3. Protección de Rama en GitHub

⚠️ **Debe configurarse manualmente en GitHub**

Ver el archivo `CONFIGURACION_GITHUB.md` para instrucciones detalladas.

## 🚀 Flujo de Trabajo Recomendado

### Para Desarrolladores

1. **Crear una rama desde `main`:**
   ```bash
   git checkout main
   git pull origin main
   git checkout -b feature/nombre-de-tu-feature
   ```

2. **Trabajar en tu rama:**
   ```bash
   # Hacer cambios
   git add .
   git commit -m "Descripción de cambios"
   git push origin feature/nombre-de-tu-feature
   ```

3. **Crear Pull Request:**
   - Ve a GitHub
   - Crea un Pull Request hacia `main`
   - Espera la revisión de los administradores
   - Los administradores (@jdetri o @kgonzalez06) serán automáticamente asignados como revisores

4. **Después de la aprobación:**
   - Un administrador hará el merge
   - Tu rama puede ser eliminada

### Para Administradores

1. **Revisar Pull Requests:**
   - Revisa el código cuidadosamente
   - Deja comentarios si es necesario
   - Aprueba o solicita cambios

2. **Revisar Notificaciones de Ramas:**
   - Cuando se cree una nueva rama, recibirás un issue
   - Verifica que la rama sea legítima
   - Cierra el issue si todo está bien
   - Si la rama no es autorizada, contacta al creador

3. **Hacer Merge:**
   - Solo después de aprobar el PR
   - Usa "Squash and merge" o "Merge commit" según el caso
   - Elimina la rama después del merge

## 📝 Comandos Útiles

### Ver todas las ramas
```bash
git branch -a
```

### Actualizar tu rama con los últimos cambios de main
```bash
git checkout main
git pull origin main
git checkout tu-rama
git merge main
```

### Eliminar una rama local
```bash
git branch -d nombre-rama
```

### Eliminar una rama remota
```bash
git push origin --delete nombre-rama
```

## ⚙️ Configuración Adicional Requerida en GitHub

Para completar la protección del repositorio, debes configurar manualmente en GitHub:

1. **Ir a Settings del repositorio**
2. **Configurar Branch Protection Rules para `main`**
3. **Configurar permisos de colaboradores**

Ver `CONFIGURACION_GITHUB.md` para instrucciones paso a paso.

## 🔍 Verificación de Protecciones

### Verificar que CODEOWNERS funciona:
1. Crea un PR
2. Verifica que @jdetri y @kgonzalez06 aparezcan como revisores requeridos

### Verificar que el workflow funciona:
1. Crea una nueva rama
2. Verifica que se cree un issue automáticamente
3. Verifica que el issue tenga las etiquetas correctas

### Verificar protección de rama:
1. Intenta hacer push directo a `main` (debería fallar)
2. Intenta hacer merge sin aprobación (debería fallar)

## 📚 Recursos

- [Documentación de Branch Protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches)
- [Documentación de CODEOWNERS](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)
- [Documentación de GitHub Actions](https://docs.github.com/en/actions)

## 🆘 Solución de Problemas

### "No puedo hacer push a main"
✅ Esto es correcto. Debes crear un PR.

### "Mi PR no tiene revisores asignados"
- Verifica que el archivo `.github/CODEOWNERS` exista
- Verifica que los usuarios @jdetri y @kgonzalez06 sean colaboradores del repo

### "No recibo notificaciones de nuevas ramas"
- Verifica que el workflow esté habilitado en Settings > Actions
- Verifica que tengas permisos de escritura en el repositorio

### "El workflow falla"
- Revisa los logs en la pestaña Actions
- Verifica que los usuarios en `assignees` existan y sean colaboradores

## 📞 Contacto

Para preguntas sobre las protecciones del repositorio, contacta a:
- @jdetri
- @kgonzalez06