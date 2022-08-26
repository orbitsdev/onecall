import 'package:flutter/material.dart';

import 'package:onecall/constant/ui.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Function function;
  final Color? bgcolor;
  const CircleButton({
    Key? key,
    required this.icon,
    required this.function,
    this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: bgcolor !=  null ? bgcolor: Colors.transparent,
        borderRadius: BorderRadius.circular(34 * 2),
        child: Center(
          child: InkWell(
            splashColor: black_75,
            onTap: () {
              function();
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                icon,
                color: purewhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
