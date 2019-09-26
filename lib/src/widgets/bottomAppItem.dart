import 'package:flutter/material.dart';
import 'package:todoapp/src/widgets/FABBottomAppBarItem.dart';

class BottomAppItem extends StatefulWidget {
  BottomAppItem({
    this.item,
    this.index,
    this.iconSize,
    this.height,
    this.color,
    this.selectedColor,
    this.selectedIndex,
    this.onPressed,
  });

  final FABBottomAppBarItem item;
  final int index;
  final ValueChanged<int> onPressed;
  final double height;
  final double iconSize;
  final Color color;
  final Color selectedColor;
  final int selectedIndex;

  @override
  State<StatefulWidget> createState() => BottomAppItemState();
}

class BottomAppItemState extends State<BottomAppItem> {
  @override
  Widget build(BuildContext context) {
    Color defColor =
        widget.selectedIndex == widget.index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => widget.onPressed(widget.index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(widget.item.iconData,
                    color: defColor, size: widget.iconSize),
                Text(
                  widget.item.text,
                  style: TextStyle(color: defColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
