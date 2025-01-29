import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Counter App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                _counter.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _resetCounter();
                    },
                    child: const Icon(Icons.restore),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    child: const Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _decrementCounter();
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        )
      );
  }
}
