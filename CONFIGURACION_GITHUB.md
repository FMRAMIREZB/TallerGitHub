# Configuración de Protección de Ramas en GitHub

Este documento describe cómo configurar las protecciones necesarias para el repositorio TallerGitHub.

## Administradores del Repositorio
- **jdetri** (tu usuario)
- **kgonzalez06**

## 1. Protección de la Rama MAIN

### Pasos para configurar:

1. Ve a tu repositorio en GitHub: `https://github.com/[tu-usuario]/TallerGitHub`

2. Haz clic en **Settings** (Configuración) en la parte superior del repositorio

3. En el menú lateral izquierdo, haz clic en **Branches** (Ramas)

4. En la sección "Branch protection rules", haz clic en **Add rule** (Agregar regla)

5. Configura la regla con los siguientes parámetros:

   **Branch name pattern:** `main`
   
   **Protecciones a activar:**
   - ☑️ **Require a pull request before merging** (Requerir pull request antes de fusionar)
     - ☑️ **Require approvals** (Requerir aprobaciones)
       - Número de aprobaciones requeridas: `1`
     - ☑️ **Dismiss stale pull request approvals when new commits are pushed** (Descartar aprobaciones antiguas cuando se suban nuevos commits)
     - ☑️ **Require review from Code Owners** (Requerir revisión de propietarios del código) - opcional
   
   - ☑️ **Require status checks to pass before merging** (Requerir que pasen las verificaciones de estado) - opcional
   
   - ☑️ **Require conversation resolution before merging** (Requerir resolución de conversaciones antes de fusionar) - recomendado
   
   - ☑️ **Require signed commits** (Requerir commits firmados) - opcional pero recomendado
   
   - ☑️ **Require linear history** (Requerir historial lineal) - opcional
   
   - ☑️ **Include administrators** (Incluir administradores)
     - **IMPORTANTE:** Si activas esta opción, incluso los administradores (jdetri y kgonzalez06) deberán seguir estas reglas
   
   - ☑️ **Restrict who can push to matching branches** (Restringir quién puede hacer push a ramas coincidentes)
     - Agrega a los usuarios: `jdetri` y `kgonzalez06`
     - Esto permite que SOLO estos usuarios puedan hacer push directo (aunque con las reglas anteriores, aún necesitarán aprobación)
   
   - ☑️ **Allow force pushes** - **NO ACTIVAR** (Mantener desactivado)
   
   - ☑️ **Allow deletions** - **NO ACTIVAR** (Mantener desactivado)

6. Haz clic en **Create** (Crear) o **Save changes** (Guardar cambios)

## 2. Restricción para Creación de Ramas

GitHub no tiene una función nativa para requerir aprobación antes de crear ramas. Sin embargo, puedes implementar las siguientes alternativas:

### Opción A: Usar Rulesets (Recomendado - Requiere GitHub Enterprise o GitHub Team)

1. Ve a **Settings** > **Rules** > **Rulesets**

2. Haz clic en **New ruleset** > **New branch ruleset**

3. Configura:
   - **Ruleset Name:** "Control de Creación de Ramas"
   - **Enforcement status:** Active
   - **Target branches:** All branches
   
4. En **Branch protections**, activa:
   - **Restrict creations** (Restringir creaciones)
   - Agrega los usuarios permitidos: `jdetri` y `kgonzalez06`

### Opción B: Configuración de Permisos del Repositorio (Disponible en todos los planes)

1. Ve a **Settings** > **Collaborators and teams**

2. Configura los permisos de los colaboradores:
   - **jdetri**: Admin
   - **kgonzalez06**: Admin
   - **Otros colaboradores**: Write o Read (NO Admin)

3. Ve a **Settings** > **Branches** > **Branch protection rules**

4. Crea una regla para todas las ramas:
   - **Branch name pattern:** `*` (todas las ramas)
   - Activa: **Restrict who can push to matching branches**
   - Agrega solo a: `jdetri` y `kgonzalez06`

### Opción C: Workflow de Aprobación con GitHub Actions

Puedes crear un workflow que notifique a los administradores cuando se cree una nueva rama:

```yaml
# .github/workflows/branch-creation-notification.yml
name: Notificar Creación de Rama

on:
  create:
    branches:
      - '**'

jobs:
  notify:
    runs-on: ubuntu-latest
    steps:
      - name: Notificar a administradores
        uses: actions/github-script@v6
        with:
          script: |
            github.rest.issues.create({
              owner: context.repo.owner,
              repo: context.repo.repo,
              title: `Nueva rama creada: ${context.ref}`,
              body: `@jdetri @kgonzalez06 - Se ha creado una nueva rama: ${context.ref} por ${context.actor}`,
              labels: ['branch-creation', 'requires-review']
            });
```

## 3. Configuración de CODEOWNERS (Opcional pero Recomendado)

Crea un archivo `.github/CODEOWNERS` para definir quién debe revisar los cambios:

```
# Todos los archivos requieren aprobación de los administradores
* @jdetri @kgonzalez06

# Documentación de IBMi
/Documentacion_IBMi/** @jdetri @kgonzalez06

# Documentación de Sistemas Abiertos
/Documentacion_SistemasAbiertos/** @jdetri @kgonzalez06

# Reglas
/Reglas/** @jdetri @kgonzalez06
```

## 4. Verificación de la Configuración

Para verificar que las protecciones están funcionando:

1. Intenta hacer push directo a `main` desde otro usuario (no administrador)
   - Debería ser rechazado

2. Crea un Pull Request hacia `main`
   - Debería requerir aprobación de jdetri o kgonzalez06

3. Intenta crear una nueva rama desde un usuario sin permisos
   - Debería ser rechazado (si configuraste las restricciones)

## 5. Flujo de Trabajo Recomendado

1. Los desarrolladores crean ramas desde `main` (si tienen permisos) o solicitan su creación
2. Trabajan en sus ramas feature/bugfix
3. Crean Pull Requests hacia `main`
4. Un administrador (jdetri o kgonzalez06) revisa y aprueba
5. Una vez aprobado, se puede hacer merge a `main`

## Notas Importantes

- **GitHub Free:** Algunas funciones avanzadas pueden requerir GitHub Team o Enterprise
- **Administradores:** Pueden bypass las reglas a menos que actives "Include administrators"
- **Protección completa:** Para máxima seguridad, activa "Include administrators" para que todos sigan las mismas reglas
- **Ramas existentes:** Las protecciones solo aplican a nuevos cambios, no afectan el historial existente

## Recursos Adicionales

- [Documentación oficial de Branch Protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches/about-protected-branches)
- [Documentación de Rulesets](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets)
- [Documentación de CODEOWNERS](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners)