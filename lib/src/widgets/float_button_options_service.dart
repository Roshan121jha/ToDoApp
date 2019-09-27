import 'package:flutter/material.dart';
import 'package:todoapp/src/widgets/float_buttons_options.dart';

class FloatingButtonIconsService extends StatefulWidget {
  FloatingButtonIconsService({
    this.icons,
    @required this.onIconTapped,
  });

  final List<IconData> icons;
  final ValueChanged<int> onIconTapped;

  @override
  State createState() => FloatingButtonIconsServiceState();
}

class FloatingButtonIconsServiceState extends State<FloatingButtonIconsService>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    print("inside init state");
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.icons.length, (int index) {
          return FloatingButtonOptions(
            animationController: _animationController,
            icons: widget.icons[index],
          );
        })
          ..toList().add(
            _buildFloatingButton(),
          ));
  }

  Widget _buildFloatingButton() {
    print("inside buildfloatingbutton");
    return FloatingActionButton(
      // onPressed: () {
      //   if (_animationController.isDismissed) {
      //     _animationController.forward();
      //   } else {
      //     _animationController.reverse();
      //   }
      // },
      onPressed: (){},
      tooltip: 'Add Task',
      child: Icon(Icons.add),
      elevation: 2.0,
    );
  }
}
