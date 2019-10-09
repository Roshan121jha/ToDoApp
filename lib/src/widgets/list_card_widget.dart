import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todoapp/src/database/todoapp_database.dart';

class ShowTaskCard extends StatefulWidget {
  final Tasklist taskItem;

  ShowTaskCard(this.taskItem);
  @override
  _ShowTaskCard createState() => _ShowTaskCard();
}

class _ShowTaskCard extends State<ShowTaskCard> {
  @override
  Widget build(BuildContext context) {      
      return ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 5.0,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Icon(Icons.mood),
                  ),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  isThreeLine: true,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.all(10.0),
                  child: Text("${DateTime.now().year}"),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
