# Aplicación Friendface

Friendface es una aplicación diseñada para mostrar una lista de usuarios obtenida desde un servicio web y permite ver información detallada de cada usuario seleccionado. Utiliza SwiftUI para la interfaz de usuario y SwiftData para gestionar la persistencia de datos.

## Conceptos Aprendidos en este Proyecto

- **Carga Asíncrona de Datos**: Implementación con `URLSession` y `async/await` para la obtención de datos de usuario desde un endpoint JSON.
- **ModelContext**: Utilizado para gestionar la inserción y persistencia de datos utilizando SwiftData.
- **NavigationStack**: Implementación de navegación entre vistas y transferencia de datos utilizando la pila de navegación de SwiftUI.

## Características Clave

- **Lista de Usuarios**: Muestra una lista de usuarios con su nombre, empresa y estado activo/inactivo.
- **Detalles del Usuario**: Al seleccionar un usuario, se navega a una vista detallada que muestra más información sobre el usuario seleccionado.
- **Carga Asíncrona de Datos**: Los datos se obtienen de manera asíncrona desde un endpoint remoto JSON, garantizando una experiencia de usuario fluida.
- **ModelContext y SwiftData**: Gestiona la inserción y persistencia de los datos de usuario descargados utilizando `ModelContext` de SwiftData.
- **Uso de NavigationStack**: Demostración de la navegación entre vistas y transferencia de datos utilizando `NavigationLink` y `@Environment` de SwiftUI.

## Desafíos y Conceptos Avanzados

- **Obtención Asíncrona de Datos**: Implementación de async/await con `URLSession` para la obtención de datos JSON y manejo de errores.
- **Integración de ModelContext**: Aprendizaje sobre cómo integrar `ModelContext` de SwiftData para gestionar objetos Core Data y almacenamiento persistente.
- **Navigación con NavigationStack y Transferencia de Datos**: Implementación de navegación en SwiftUI y transferencia de datos utilizando `NavigationLink` y `@Environment`.

## Vista Previa del Proyecto

![Simulator Screenshot - iPhone 15 Pro - 2024-06-18 at 17 33 38](https://github.com/gascondev/Friendface/assets/144269155/3f3385b0-40bf-43eb-b0ed-d7c55f7edd66)
![Simulator Screenshot - iPhone 15 Pro - 2024-06-18 at 17 34 06](https://github.com/gascondev/Friendface/assets/144269155/313f82d2-2e39-42a2-b26e-98abc021c77d)

## Instrucciones de Instalación

Para instalar y ejecutar este proyecto:

1. Descarga el archivo comprimido (.zip).
2. Descomprime el archivo.
3. Abre el proyecto en Xcode.
4. Ejecuta el simulador haciendo clic en el botón ▶️ PLAY en la esquina superior izquierda o usando el atajo CMD ⌘ + R.
