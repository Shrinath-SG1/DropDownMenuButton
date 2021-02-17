import 'package:flutter/material.dart';

class Demo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return DemoState();
  }

}
class DemoState extends State<Demo>{

  @override

  Widget build(BuildContext context) {
    Widget _offsetPopup() => PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(
            "Item 1",
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            "Item 2",
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.w700),
          ),
        ),
      ],
      icon: Icon(Icons.library_add),
       //offset: Offset(0, 500),
       offset: const Offset(80, -120)
    );
    // TODO: implement build
   // throw UnimplementedError();
    return Scaffold(
      body: Container(color: Colors.deepPurple,alignment: Alignment.bottomCenter,
        child: FloatingActionButton(onPressed: (){},child: _offsetPopup(),),
      ),
    );
  }

}