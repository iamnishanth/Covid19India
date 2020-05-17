import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  
  ReusableCard({this.colour,this.cardChild,this.onPress,this.margin,this.width,this.alignment,this.padding,this.height});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  final EdgeInsets margin;
  final double width;
  final Alignment alignment;
  final EdgeInsets padding;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin : margin,
        width: width,
        height: height,
        padding: padding,
        alignment: alignment,
        child : cardChild,
        decoration : BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );
  }
}