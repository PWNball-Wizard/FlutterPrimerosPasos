import 'package:flutter/material.dart';
import 'package:flutter_ejemplo/presentation/screens/counter/counter_functions_screen.dart';
import 'package:flutter_ejemplo/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //$ la linea de abajo se usa para crear un constructor de la clase MyApp que recibe un Key como parametro
  //$ y se lo pasa al constructor de la clase padre StatelessWidget
  //$
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //$ se usa const porque MaterialApp es un widget que no cambia y no necesita ser reconstruido
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, //$ se usa para quitar el banner de debug
        theme: ThemeData(
            useMaterial3: true,
            primarySwatch: Colors.blue,
            colorScheme: ColorScheme.fromSwatch().copyWith(
                secondary: Colors
                    .red)), //$ se usa para cambiar el color principal de la aplicacion
        //! si queremos agregar mas de un color a el tema de la aplicacion, por ejemplo usar 3 colores se puede usar el siguiente codigo
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
        // ),
        //$ Scaffold es un widget que proporciona una estructura visual básica para una aplicación de Material Design.
        home: const CounterFunctionsScreen());
  }
}
