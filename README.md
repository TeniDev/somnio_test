# Somnio Test - v1.0.0

_Proyecto realizado en Flutter para prueba tecnica para Somnio_

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

### Pre-requisitos 📋

_Para reproducir este proyecto en su maquina local es necesario instalar los items listados a continuación:_

* Flutter: Para instalar flutter puedes seguir los pasos que se encuentran en la pagina principal ([Flutter.dev](https://docs.flutter.dev/get-started/install?gclid=Cj0KCQjwi46iBhDyARIsAE3nVrahrFDcU8hIEgOrbstxdPPcB8TXpiSOonfZ3dAY7MD39wg70t6KK1QaAgtXEALw_wcB&gclsrc=aw.ds)) o puede seguir un video tutorial de como instalarlo ([Tutorial](https://www.youtube.com/watch?v=W9clR_Wg3ho&list=PLCKuOXG0bPi3xBRYOmcfoqrchgRJOafo9)) esta lista contiene ambas instalaciones (Windos y MacOS). Es necesario tener version de flutter 3.22.1+.

### Instalación 🔧

* Clonar el repositorio:

    ```
    git clone https://github.com/TeniDev/somnio_test.git
    ```
  
* Abrir el proyecto en tu editor de texto: (VS Code, Vim, etc...)

  - _Puedes ejecutar los siguientes comandos desde la misma terminal para abrirlo_

    ```
    cd {PROJECT-PATH}
    ```
    ```
    code .
    ```

* Si presenta algun error con el codigo generado ejecutar los siguientes comandos:

    ```
    make fix_gen

    make gen

    make gen_l10n
    ```
_Es posible que en computadores con Windows no funcione el comando ```
    make fix_gen ``` para ello solo debes ejecutar los pasos dentro del archivo Makefile_

_Finalmente puedes presionar F5 para correr el proyecto en modo debug_

## Ejecutando las pruebas ⚙️

_Para ejecutar las pruebas de este proyecto ejecute el siguiente comando_

```
  make gen_test
```

## Construido con 🛠️

_Herramientas usadas en el proyecto_

* [Flutter](https://docs.flutter.dev/) - El framework multiplataforma usado.
* [Riverpod](https://riverpod.dev/es/) - Manejador de estado reactivo.
* [GoRouter](https://pub.dev/packages/go_router) - Paquete manejador de rutas declarativo.
* [Hive](https://docs.hivedb.dev/#/) - Base de datos local, NoSQL.

## Versionado 📌

Se usa [SemVer](http://semver.org/) para el versionado.
