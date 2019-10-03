import 'package:flutter/material.dart';

class CreateNewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  fontSize: 30.0, fontWeight: FontWeight.bold),
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
                  padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
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
                        padding:
                            EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Your List',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 35.0,
                          ),
                          contentPadding: EdgeInsets.only(
                              left: 16.0, top: 20.0, right: 16.0, bottom: 5.0),
                        ),
                        //controller: textFieldController, will add later on how controller works
                        autofocus: true,
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        maxLength: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton.extended(
          label: Text('Create Task'),
          icon: Icon(Icons.add),
          backgroundColor: Colors.blue,
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Container _getBackButton(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(top: 40.0, left: 10.0),
      child: BackButton(color: Colors.grey),
    );
  }
}
