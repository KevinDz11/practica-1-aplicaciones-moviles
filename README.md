# Catálogo de Componentes UI: Kotlin vs. Flutter

> Un proyecto de demostración que explora los componentes de UI más comunes, implementado tanto en **Kotlin Nativo** para Android como en el framework multiplataforma **Flutter**.

**Desarrollador:** Kevin Díaz Fuentes

---

## 📖 Sobre el Proyecto

Esta práctica contiene dos versiones de una misma aplicación. Ambas sirven como un catálogo interactivo que demuestra cómo funcionan los componentes fundamentales de la interfaz de usuario.

El proyecto explora conceptos clave como la gestión de estado y la navegación en cada ecosistema:
* **Versión Kotlin (`/kotlin_version`)**: Utiliza `Fragments` y un `SharedViewModel` para la comunicación y persistencia de datos entre pantallas.
* **Versión Flutter (`/flutter_version`)**: Implementa una arquitectura reactiva con `Widgets` y el paquete `Provider` para la gestión del estado global.

## 🚀 Explorando los Componentes

La aplicación está dividida en varias secciones, cada una enfocada en un grupo de componentes específicos.

### 1. Campos de Texto (Text Fields)
Los `EditText` (en Kotlin) o `TextField` (en Flutter) son esenciales para que el usuario ingrese datos. Esta sección muestra cómo capturar texto y reflejarlo en el estado de la aplicación.

| Kotlin | Flutter |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/110cb547-53c2-40c3-ba30-1fec2381ce3f" width="200" /> <img src="https://github.com/user-attachments/assets/97083ff7-9389-4ae6-b973-df96e593a33e" width="200" /> | <img src="https://github.com/user-attachments/assets/0d6674ca-7310-4942-8ad0-4d290f66c969" width="200" /> <img src="https://github.com/user-attachments/assets/51775f9e-f304-456e-a0c4-708c5d20fdd3" width="200" /> |

### 2. Botones (Buttons)
Permiten al usuario ejecutar acciones. Aquí se demuestra un botón con texto y un `ImageButton`. Al ser presionados, actualizan el estado de la UI.

| Kotlin | Flutter |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/a841bd8b-d4aa-4672-87a6-40e85345eefa" width="200" /> <img src="https://github.com/user-attachments/assets/99381f97-3e42-40da-b8bb-15f97b9f6ce1" width="200" /> | <img src="https://github.com/user-attachments/assets/b4b54995-55d3-4b3e-beb0-5be518069e8c" width="200" /> |

### 3. Controles de Selección
Esta sección presenta `CheckBox`, `RadioGroup` y `Switch`. Las selecciones del usuario actualizan el estado global y se pueden visualizar localmente.

| Kotlin | Flutter |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/a9da6978-3110-4da6-8d46-9f7f71e19d0c" width="200" /> | <img src="https://github.com/user-attachments/assets/87221e7b-1520-47a3-be80-fe16671f5cbf" width="200" /> |

### 4. Listas (Lists)
Las listas (`RecyclerView` o `ListView`) son perfectas para mostrar grandes cantidades de datos de forma eficiente y desplazable.

| Kotlin | Flutter |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/513a3634-37b3-49b0-ae52-63bc4b8ed87c" width="200" /> <img src="https://github.com/user-attachments/assets/98f90faf-e387-46d7-b7b8-9fc99ede0546" width="200" /> | <img src="https://github.com/user-attachments/assets/325deb8c-490e-4aca-b34f-51e2e96407da" width="200" /> <img src="https://github.com/user-attachments/assets/c839edfe-29ed-4c52-a7e5-c53aba54879f" width="200" /> |

### 5. Elementos de Información
Aquí se muestra cómo presentar datos al usuario. Este fragmento consume información del estado global y contiene componentes interactivos como `ProgressBar` y un `ImageView` informativo.

| Kotlin | Flutter |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/858e834d-4d3b-41ce-ad46-7b3d390fa637" width="200" /> <img src="https://github.com/user-attachments/assets/f6ca52a0-8423-4995-a37f-79ae956c7478" width="200" /> | <img src="https://github.com/user-attachments/assets/8f071027-4b4f-47a4-8cd5-8a40a1f82fa4" width="200" /> <img src="https://github.com/user-attachments/assets/d405237f-5c93-4bc0-8a32-47fd6db0d453" width="200" /> |

---

## ✨ Pantalla de Resumen

Finalmente, la aplicación incluye una pantalla de resumen que recopila todas las interacciones del usuario. Esta pantalla demuestra la navegación a una segunda `Activity` (en Kotlin) o a una nueva `Screen` (en Flutter).

En ella puedes:
-   📊 **Ver un resumen** completo de tus selecciones.
-   📲 **Compartir tus resultados** con otras aplicaciones.
-   🔄 **Iniciar nuevamente**, borrando todos los datos para empezar de cero.

| Kotlin | Flutter |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/5df8354f-af33-4d29-a757-5ed0e27b26ff" width="200" /> | <img src="https://github.com/user-attachments/assets/6ba32bf2-2385-463c-a2a1-5243b415044a" width="200" /> |

---

## 📸 Evidencia de Ejecución

A continuación, se muestra una captura de la aplicación corriendo en el emulador de Android Studio, demostrando la integración y el funcionamiento de ambos proyectos.

<img width="700" alt="Evidencia de ejecución" src="https://github.com/user-attachments/assets/80124010-b28f-4fbe-b8d4-2b9371bb4970" />

---

## 💡 Diferencias y Hallazgos

Este proyecto permitió comparar directamente el desarrollo nativo con Kotlin y el desarrollo multiplataforma con Flutter. A continuación se resumen los principales hallazgos.

### Kotlin (Android Nativo)
* **Curva de Aprendizaje**: ... *(describe tu experiencia con la curva de aprendizaje, por ejemplo, si fue más compleja por la gestión de ciclo de vida, etc.)*
* **UI y Diseño**: La creación de interfaces con archivos XML es un enfoque más tradicional. Separa claramente la lógica del diseño, pero puede ser menos intuitivo que la UI declarativa.
* **Gestión de Estado**: El uso de `ViewModel` y `LiveData` es robusto y está bien integrado en el ecosistema de Android, pero requiere una configuración más explícita para compartir datos entre `Fragments`.

### Flutter
* **Curva de Aprendizaje**: ... *(describe si Flutter fue más rápido de aprender, especialmente el concepto de "todo es un widget")*
* **UI y Diseño**: La UI declarativa permite construir interfaces de manera rápida y ver los cambios en tiempo real con Hot Reload, lo cual agiliza significativamente el desarrollo.
* **Gestión de Estado**: Utilizar `Provider` fue una forma sencilla y eficiente de gestionar el estado global. La propagación de datos a través del árbol de widgets se siente muy natural.
