import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/src/bloc/bloc.dart';
import 'package:todoapp/src/bloc/tasklist_bloc.dart';

class ListInputField extends StatefulWidget {
  @override
  _ListInputField createState() => _ListInputField();
}

class _ListInputField extends State<ListInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: _addNewList,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        hintText: 'Your List',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 35.0,
        ),
        contentPadding:
            EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0, bottom: 5.0),
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
    );
  }

  void _addNewList(String value) {
    final taskBloc = BlocProvider.of<TasklistBloc>(context);

    taskBloc.dispatch(AddTaskList("First List"));
    print(taskBloc);
    print(value);
  }
}
