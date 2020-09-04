import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'practice to snackbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage3(),
    );
  }
}

class MyHomePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext ctx) {
        return Center(
          child: FlatButton(
            child: Text(
              'show me',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () {
              Scaffold.of(ctx).showSnackBar(SnackBar(
                content: Text('Hello there.'),
              ));
            },
          ),
        );
      }),
      appBar: AppBar(
        title: Text(
          'practice snackbar',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button clicked');
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('chanju1998@naver.com'),
              accountName: Text('chanju'),
              onDetailsPressed: () {
                print('detail clicked');
              },
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/jimmy_page.jpg'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/jimmy_page.jpg'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('home button is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            Builder(builder: (BuildContext ctx1) {
              return ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('settings'),
                onTap: () {
                  Scaffold.of(ctx1).showSnackBar(SnackBar(
                    content: Text("setting snack clicked"),
                  ));
                },
                trailing: Icon(Icons.add),
              );
            }),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onLongPress: () {
                print('Question button is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
