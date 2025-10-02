// Importa el archivo Pagina1.dart que contiene el widget Pagina1
import 'package:app_2/widget/Pagina1.dart';

// Importa el paquete material.dart de Flutter que contiene los widgets Material Design
import 'package:flutter/material.dart';

// Función principal que es el punto de entrada de la aplicación
void main() {
  // Ejecuta la aplicación Flutter, iniciando con el widget MyApp
  runApp(const MyApp());
}

// Define una clase MyApp que extiende StatelessWidget (widget sin estado)
class MyApp extends StatelessWidget {
  // Constructor constante que recibe una key opcional
  const MyApp({super.key});

  // Método build obligatorio que describe cómo mostrar el widget
  @override
  Widget build(BuildContext context) {
    // Retorna un MaterialApp, que es el widget raíz de una app con Material Design
    return MaterialApp(
      // Propiedad home define la pantalla principal de la aplicación
      home: Pagina1() // Instancia el widget Pagina1 como pantalla inicial
    );
  }
}

