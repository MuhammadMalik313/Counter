import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "counter",
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatelessWidget {
  ValueNotifier _count = ValueNotifier(0);
  CounterApp({Key? key}) : super(key: key);
  addCount() {
    _count.value = _count.value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addCount();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _count,
          builder: (BuildContext ctx, dynamic counter,Widget? child){
            return Center(child: Text("$counter"));
          } ,

          
        ),
      ),
    );
  }
}
