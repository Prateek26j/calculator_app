import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override


  Widget buildbutton(String output){
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(24.0),
        child: new Text(output,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ) ,
        ),
        onPressed: () => {},
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome back',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:  new Text("Caluclator", style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.black,
        ),
        body: new Container(
          padding: new EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 12.0,
          ),
          alignment: Alignment.centerRight,
          child: new Column(children: <Widget> [
            Container
              (child: new Text("0", style: new TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),)),

            new Expanded(
              child: new Divider(),
            ),


            new Column(
              children: [
                new Row(
                  children: [
                    buildbutton('7'),
                    buildbutton('8'),
                    buildbutton('9'),
                    buildbutton("÷"),
                  ],
                ),
                new Row(
                  children: [
                    buildbutton("4"),
                    buildbutton("5"),
                    buildbutton("6"),
                    buildbutton("X"),
                  ],
                ),
                new Row(
                  children: [
                    buildbutton("1"),
                    buildbutton("2"),
                    buildbutton("3"),
                    buildbutton("-"),
                  ],
                ),
                new Row(
                  children: [
                    buildbutton("."),
                    buildbutton("0"),
                    buildbutton("00"),
                    buildbutton("+"),
                  ],
                ),
                new Row(
                  children: [
                    buildbutton("CLEAR"),
                    buildbutton("="),
                  ],
                ),
              ],
            )

          ],),
        ),
      ),
    );
  }
}
