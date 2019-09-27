import 'package:flutter/material.dart';
import 'package:todoapp/src/widgets/bottom_bar_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'To Do Tasks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    print("inside main");
    setState(() {
      print("the selected tab $index");
      _lastSelected = 'TAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_lastSelected),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add Task",
        child: Icon(Icons.add),
        elevation: 2.0,
        onPressed: (){
          //code to show the dialog box for entry of notes
        },
      ),
      bottomNavigationBar: FabBottomAppBar(
        centerItemText: 'A',
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          BottomAppBarItem(iconData: Icons.home, text: 'Home'),
          BottomAppBarItem(iconData: Icons.favorite, text: 'Favorite'),
          BottomAppBarItem(iconData: Icons.center_focus_strong, text: 'Active'),
          BottomAppBarItem(
              iconData: Icons.playlist_add_check, text: 'Completed'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
