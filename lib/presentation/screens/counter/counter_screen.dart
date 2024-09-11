import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() =>
      _CounterScreenState(); //$ se usa para crear un estado de la clase CounterScreen
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Center(child: Text('Hello World')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter',
                style: const TextStyle(
                    fontWeight: FontWeight.w100, fontSize: 100)),
            Text(counter == 1 ? 'Click' : 'Clicks'),
            /* Row(
              children: const [
                Flexible(
                    child: Text('Hellooooooooooooooopppppppppppp',
                        style: TextStyle(fontSize: 20))),
                Flexible(child: Text('World', style: TextStyle(fontSize: 80))),
              ],
            ), */
            ElevatedButton(
                onPressed: () {
                  counter++;
                  setState(() {});
                  /* ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Hello'),
                  )); */
                },
                child: const Text('Aumentar')),
            //$ para evitar que un widget tenga overflow se puede usar Expanded o Flexible en el widget padre ejem:
            // Expanded(child: Text('Hello World'))
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
