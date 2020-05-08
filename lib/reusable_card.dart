import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  
  ReusableCard({@required this.colour,this.cardChild,this.onPress,this.margin,this.width,this.alignment});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  final EdgeInsets margin;
  final double width;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin : margin,
        width: width,
        alignment: alignment,
        child : cardChild,
        decoration : BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}