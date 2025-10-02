// Importa los widgets personalizados desde diferentes archivos
import 'package:app_2/widget/Izquierdo.dart';
import 'package:app_2/widget/centro.dart';
import 'package:app_2/widget/derecho.dart';
// Importa el paquete material.dart de Flutter
import 'package:flutter/material.dart';

// Define Pagina1 como un StatefulWidget (widget con estado)
class Pagina1 extends StatefulWidget{
  // Constructor constante que recibe una key opcional
  const Pagina1({super.key});

  // Método obligatorio que crea el estado del widget
  @override
  State<StatefulWidget> createState() {
    // Retorna una instancia de la clase Disenio que manejará el estado
    return Disenio();
  }
}

// Clase Disenio que extiende State<Pagina1> para manejar el estado
class Disenio extends State<Pagina1>{
  // Variable de estado que controla el índice de navegación (0, 1, 2)
  int _index = 0;
  
  // Método build que construye la interfaz de usuario
  @override
  Widget build(BuildContext context) {
    // Retorna un Scaffold (estructura básica de pantalla Material Design)
    return Scaffold(
      // Barra superior de la aplicación
      appBar: AppBar(
        // Título de la barra de aplicación
        title: Text('ButtonNavigatorBar',
        // Estilo del texto del título
        style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0)
       ),
      ),
      // Color de fondo de la AppBar
      backgroundColor: Colors.lightGreenAccent,),
      
      // Cuerpo principal de la pantalla
      body: _index == 0 ? Izquierdo():(_index == 1 ? Centro(): Derecho()),
      
      // Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        // Color de fondo de la barra de navegación
        backgroundColor: Colors.lightGreen,
        // Array de items de navegación
        items: [
        // Primer item de navegación - Izquierda
        BottomNavigationBarItem(icon:Icon (Icons.airlines),
        label: 'Izquierda',
        ),
         // Segundo item de navegación - Centro
         BottomNavigationBarItem(icon:Icon (Icons.add_call),
        label: 'Centro',
        ),
        // Tercer item de navegación - Derecha
        BottomNavigationBarItem(icon: Icon(Icons.zoom_out),
        label: 'Derecha')
      ],
      // Índice actual seleccionado
      currentIndex: _index,
      // Color del item seleccionado
      selectedItemColor: Colors.deepPurple,
      // Función que se ejecuta al tocar un item
      onTap: (index){
        // Actualiza el estado con el nuevo índice
        setState(() {
          _index = index;
        });
      },
      ),
    );
  }
}