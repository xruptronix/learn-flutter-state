import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Demo'),
        ),
        body: TapBoxA(),
      ),
    );
  }
}

class TapBoxA extends StatefulWidget {
  @override
  _TapBoxAState createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {

  bool _active = true;

  _handleTap(){
    setState(() {
      _active =!_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Center(
        child: Container(
          child: Center(
            child: Text(
              _active ? 'Active' : 'Inactive',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 32.0,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: _active ? Colors.green[700] : Colors.grey[700]
          ),
          width: 200.0,
          height: 200.0,
        ),
      ),
    );
  }
}

