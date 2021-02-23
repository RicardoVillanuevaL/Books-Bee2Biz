Proyecto de Libros Bees2Biz
Arquitectura:
La Arquitectura usada es una Arquitectura limpia, la cual consiste en separa el back-end y el front-end,
en primer lugar tenemos los paquetes basicos o común, estos son : 
    "contants" : con valores constantes el proyecto como colores, estilos, iconos, logos.
    "core" : en este paquete se encuentran dichas conecciones o paquetes que tienen una persistencia global en el proyecto, por ejemplo,
             paquetes de Firebase, Shared Preferences, Uso de Tokens en alguna Api, etc.
    "error_notifiers": se utiliza para controlar los errores que puedan generar en todo el aplicativo, mensajes emergentes o notificaciones.
Despues tenemos los paquetes en los cuales se organiza por Entidad o Caso de Uso, por ejemplo "Usuario", "Producto", "Pedido", "Book", etc.,
dentro de dichos paquetes se encuentras los siguientes :
    "model" : para poder guardar los modelos, clases u objetos que se usen para dicho modulo.
    "provider" : este paquete deriva de una libreria para el manejo de estados en dicho modulo, esto nos permite tener un mejor orden y realizar dicha
                autonomia del back-end y el front-end.
    "services": lo utilizo para poder administrar las promesas hacia APIs o uso de Web Services que tengan que ver con el modulo.
    "views" : en este paquete estan las vistas, puro codigo de front-end, widgets que se usen en todo el modulo.
    
Para ejecutar correctamente el proyecto se necesita:
Para Windows:
-Tener instalado Android Studio.
-Tener integrado en el ordenador el entorno de Flutter.
-Tener instaldo el Visual Studio Code
-Tener creado un dispositivo Emulador o conectar un dispositivo externo
-Descargar el repositorio correctamente
-Despues ejecutar los siguientes codigos en el siguiente orden:
    -flutter doctor -v 
    -flutter pub get
-Abrir el main.dart (o cualquier archivo que termine en .dart) y presionar F5.

Para Mac:
-Tener instalado Android Studio.
-Tener integrado en el ordenador el entorno de Flutter.
-Tener XCode.
-Conectar correctamente el XCode con el Visual Studio Code.
-Instalar los archivos CocoPoads.
-Descargar el repositorio correctamente
-Despues ejecutar los siguientes codigos en el siguiente orden:
    -flutter doctor -v 
    -flutter pub get
    -cd ios
    -pod install
-Abrir el main.dart (o cualquier archivo que termine en .dart) y correr.


PARA AMBOS SISTEMAS OPERATIVOS DESPUES DE TENER EL PROYECTO CORRECTAMENTE EJECUTADO SOLO FALTARIA USARLO Y DISFRUTARLO.

NOTA: PARA CUALQUIER TIPO DE CONSULTA CON LA INSTALACION DE FLUTTER Y OTROS SDK COMO ANDROID O XCode
      SE DEJA EL SIGUIENTE LINK QUE ES LA DOCUMENTACION OFICIAL, ADEMÁS SE ASEGURA QUE EL CODIGO CORRE
      EFECTIVAMENTE EN DISPOSITIVOS ANDROID, YA QUE FUE EJECUTADO Y DESARROLLADO EN UN ORDENADOR CON Windows
      Y PARA CORRER EN MAC SE TIENE QUE TENER MUCHO CUIDADO AL MOMENTO DE CORRER O EJECUTAR.

      https://flutter.dev/docs/get-started/install


