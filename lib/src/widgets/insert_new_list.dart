import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/src/bloc/tasklist_bloc.dart';
import 'package:todoapp/src/widgets/list_textfield.dart';

class CreateNewTask extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  //initiate the tasklist bloc
  final tasklistbloc = TasklistBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasklistBloc>(
      builder: (context) => tasklistbloc,
      child: Scaffold(
          body: Stack(
            children: <Widget>[
              _getBackButton(context),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.grey,
                              height: 1.5,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'New',
                                  style: new TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'List',
                                  style: new TextStyle(
                                      fontSize: 28.0, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.grey,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Add the name of your list...',
                                        style: new TextStyle(
                                            fontSize: 18.0, color: Colors.grey),
                                      ),
                                      Icon(Icons.mood),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 50.0, left: 20.0, right: 20.0),
                          ),
                          ListInputField(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.only(bottom: 20.0),
        //   child: FloatingActionButton.extended(
        //     label: Text('Create Task'),
        //     icon: Icon(Icons.add),
        //     backgroundColor: Colors.blue,
        //     onPressed: () {
        //       print("create task event is called");
        //       _insertNewTaskList(context);
        //       //_showAllTaskList(context);
        //     },
        //   ),
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

Container _getBackButton(BuildContext context) {
  return Container(
    margin: new EdgeInsets.only(top: 40.0, left: 10.0),
    child: BackButton(color: Colors.grey),
  );
}

// void _showAllTaskList(BuildContext context) {
//   return StreamBuilder(
//       stream: taskListdao.watchAllTasks(),
//       builder: (context, AsyncSnapshot<List<Tasklist>> snapshot) {
//         final tasksList = snapshot.data ?? List();
//       });
// }
