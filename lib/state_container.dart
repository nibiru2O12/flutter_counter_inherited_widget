import 'package:flutter/material.dart';


class _InheritedCounterContainer extends InheritedWidget {

  final CounterContainerState data;

  _InheritedCounterContainer({Key key,this.data,Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_InheritedCounterContainer old) => true;

}

class CounterContainer extends StatefulWidget {

    final Widget child;
    CounterContainer({this.child});

    static CounterContainerState of(BuildContext context) {
      return (context.inheritFromWidgetOfExactType(_InheritedCounterContainer) as _InheritedCounterContainer).data;
    }

  @override
  CounterContainerState createState() => CounterContainerState();

}

class CounterContainerState extends State<CounterContainer> {

  int count=0;

  increment() {
    print('inceremented $count');
    setState(() {
      count++;
    });
  }

  decrement() {
    setState(() {
      count--;;
    });
  }

  Widget build(BuildContext context) {
    return _InheritedCounterContainer(
      data: this,
      child: widget.child,
    ) ;
  }
}
