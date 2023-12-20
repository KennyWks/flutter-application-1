import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _number = 0;

  int get number => _number;

  void increment() {
    _number++;
    notifyListeners();
  }

  void decrement() {
    _number--;
    notifyListeners();
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Page'),
      ),
      body: Center(
        child: Text('Count ${context.watch<Counter>().number} times',
            style: TextStyle(fontSize: 40)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().decrement(),
        tooltip: "Increment Counter App",
        child: const Icon(Icons.add),
      ),
    );
  }
}

// class CounterApp extends StatefulWidget {
//   @override
//   _CounterAppState createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   int _count = 0;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('State Page'),
//       ),
//       body: Center(
//         child: Text('Count $_count times', style: TextStyle(fontSize: 40)),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {setState(() => _count++)},
//         tooltip: "Increment Counter App",
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
