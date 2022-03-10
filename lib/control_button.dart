import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  // const ControlButton({Key? key}) : super(key: key);
  final Function() onPressed;
  final Icon icon;
  const ControlButton({Key? key, required this.onPressed, required this.icon}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: 0.5,
      child: Container(
        width: 80.0,
        height: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            elevation: 0.0,
            onPressed: this.onPressed,
            child: this.icon,
          )
        ),
      ),
    );
  }
}
