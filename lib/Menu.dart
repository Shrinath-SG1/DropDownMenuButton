import 'package:flutter/material.dart';

class Demo extends StatefulWidget{

  @override
  // TODO: implement createState
  //throw UnimplementedError();

  State<StatefulWidget> createState() => DemoState();


}
class DemoState extends State<Demo>{

  String dropdownValue = 'One';

  List <String> spinnerItems = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five'
  ] ;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child :
        Container(
          child: Container(
            height: 200,
            width: 200,
            //padding: const EdgeInsets.all(),
            //color: Colors.blue,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Container(color: Colors.yellow,
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.red, fontSize: 18),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String data) {
                        setState(() {
                          dropdownValue = data;
                        });
                      },
                      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),

                  Text('Selected Item = ' + '$dropdownValue',
                      style: TextStyle
                        (fontSize: 22,
                          color: Colors.black)
                  ),

                ]),
          ),
        ),
      ),
    );
  }
// TODO: implement build
//throw UnimplementedError();

}

