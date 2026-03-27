import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter_provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) {
         return CounterProvider();
        }
        ,child:  CounterScreen()
      ),
    );
  }
}
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
        builder: (context,counterProvider,child) {
          return Scaffold(
            body: Center(child: Text("Counter${counterProvider.counter}")),
            floatingActionButton: FloatingActionButton(onPressed: () {
              counterProvider.change_counter();
            },),
          );
        }
    ); }
}
