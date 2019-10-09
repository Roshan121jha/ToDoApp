import 'package:flutter/material.dart';
import 'package:todoapp/src/database/daos/task_list_dao.dart';
import 'package:todoapp/src/database/todoapp_database.dart';
import 'package:todoapp/src/widgets/bottom_bar_service.dart';
import 'package:todoapp/src/add_new_list.dart/easeout_route.dart';
import 'package:todoapp/src/widgets/insert_new_list.dart';
import 'package:todoapp/src/widgets/list_card_widget.dart';

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
            Expanded(child: _showTaskList(context)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add Task",
        child: Icon(Icons.add),
        elevation: 2.0,
        onPressed: () {
          _getRenderObject(context);
                    //code to show the entry of new titles
                    Navigator.push(
                        context, EaseOutRoute(listCreatePage: CreateNewTask()));
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
          
            StreamBuilder<List<Tasklist>> _showTaskList(BuildContext context) {
              return StreamBuilder(
                stream: TasklistDao(ToDoAppDatabase()).watchAllTasks(),
                builder: (context, AsyncSnapshot<List<Tasklist>> snapshot) {
                  final tasks = snapshot.data ?? List();
                  return ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (_, index) {
                      final itemTask = tasks[index];
                      return Dismissible(
                        direction: DismissDirection.endToStart,
                        background: Container(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                        key: Key("$itemTask"),
                        onDismissed: (direction) {
                          setState(() {
                            tasks.removeAt(index);
                          });
          
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text("${itemTask.tasklistname} dismissed")));
                        },
                        child: Container(
                          child: Center(
                            child: ShowTaskCard(itemTask),
                          ),
                          margin: EdgeInsets.all(10.0),
                        ),
                      );
                    },
                  );
                },
              );
            }
          
            void _getRenderObject(BuildContext context) {
              print("the render object is ${context.findRenderObject()}");
            }
}
