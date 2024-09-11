import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() =>
      _CounterFunctionsScreenState(); //$ se usa para crear un estado de la clase CounterScreen
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter functions'),
        //$ leading se usa para agregar un widget al inicio de la AppBar
        /* leading: IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Hello'),
            ));
          },
        ), */
        //$ actions se usa para agregar un widget al final de la AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter',
                style: const TextStyle(
                    fontWeight: FontWeight.w100, fontSize: 100)),
            Text(counter == 1 || counter == -1 ? 'Click' : 'Clicks'),
            CustomButton(
                text: "Aumentar",
                onPressed: () {
                  counter++;
                  setState(() {});
                }),
            CustomButton(
                text: "Disminuir",
                onPressed: () {
                  counter--;
                  setState(() {});
                }),
            CustomButton(
                text: "Reiniciar",
                onPressed: () {
                  counter = 0;
                  setState(() {});
                }),
            /* ElevatedButton(
                onPressed: () {
                  counter--;
                  setState(() {});
                },
                child: const Text('Decrementar')), */
            //$ para evitar que un widget tenga overflow se puede usar Expanded o Flexible en el widget padre ejem:
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //! para mostrar un toast se usa ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hello')));
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Hello'),
          ));
        },
        enableFeedback: true,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  //$ Para pasar una funcion como parametro se usa Function() y se le asigna un nombre a la funcion
  //$ en caso de que la funcion reciba parametros se le asignan los parametros a la funcion de la siguiente manera Function(int a, String b)
  //$Ejemplo con parametros: final Function(int a, String b) onPressed;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
