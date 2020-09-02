import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chanju's reveiw app making",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage2(),
      
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('review app making'),
        elevation: 0.0,
        centerTitle: true,
        ),
      body: Padding(padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(backgroundImage: AssetImage('assets/jimmy_page.gif'),
            radius: 70.0,),
          ),
        Divider(
          color: Colors.grey,
          endIndent: 30.0,
          thickness: 0.5,
          height: 60.0,
        ),
        Text(
          'NAME',
          style: TextStyle(
          color: Colors.white,
          letterSpacing: 2.0,
        ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Jimmy Page',
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          letterSpacing: 2.0,
        ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          children: [
            Icon(Icons.check_circle_outline),
            Text("Stairway to heaven",
            style: TextStyle(
              letterSpacing: 1.0,
            ),
            )
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle_outline),
            Text("Misty hop mountain",
            style: TextStyle(
              letterSpacing: 1.0,
            ),
            )
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle_outline),
            Text("blah blah",
            style: TextStyle(
              letterSpacing: 1.0,
            ),
            )
          ],
        ),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/jimmy_page.jpg'),
            radius: 60.0,
          ),
        )
        ],
      
      
      ),

      ),
    );
  }
}