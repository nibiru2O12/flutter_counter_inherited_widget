import 'package:flutter/material.dart';
import 'state_container.dart';

void main() {
  runApp(CounterContainer(
    child: MaterialApp(
        title: "State Management",
        home: App()
    ),
  ));
}


class App extends StatefulWidget {

  _AppState createState() => _AppState();

}

class _AppState extends State<App> {
  Widget build(BuildContext context) {

    final store = CounterContainer.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Center(
        child: Text('Counter: ${store.count}',textDirection: TextDirection.ltr,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.increment,
        child: Icon(Icons.add),
      )
    ) ;
  }
}