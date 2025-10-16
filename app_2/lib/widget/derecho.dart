// Importa el paquete widgets.dart de Flutter (contiene widgets básicos)
import 'package:flutter/widgets.dart';
// Define Derecho como un StatefulWidget (widget con estado)
class Derecho extends StatefulWidget{
  // Constructor constante que recibe una key opcional
  const Derecho({super.key});

  // Método obligatorio que crea el estado del widget
  @override
  State<StatefulWidget> createState() {
    // Retorna una instancia de la clase body que manejará el estado
    return body();
  }
}
// Clase body que extiende State<Derecho> para manejar el estado
class body extends State<Derecho>{
  // Método build que construye la interfaz de usuario
  @override
  Widget build(BuildContext context) {
   // Retorna un widget Center que centra a su hijo en la pantalla
   return Center(
    // Widget hijo del Center - un Text con contenido 'Derecho'
    child: Text('Derecho'),
   );
  }
}