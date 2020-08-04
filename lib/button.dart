import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Text child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const CustomButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width,
    this.height = 60.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: gradient,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500],
                offset: Offset(0.0, 1.5),
                blurRadius: 1.5,
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
