import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatefulWidget {
  final text;
  final  width;
  final height;
  final color ;
  final onPress;
  final argument;
  final fontSize;
  const CustomButton({super.key,this.text,this.height,this.width,this.color,this.onPress,this.argument,this.fontSize});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: (){
        Navigator.of(context).pushNamed(widget.onPress,arguments: widget.argument);
       },
      child: Container( 
        
      alignment: Alignment.center,
       width: widget.width,
       height: widget.height,
        margin: EdgeInsets.only(right: 10),
       decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(30)
       ),
      child: Text(widget.text,style: TextStyle(color: Colors.white,fontFamily: 'ProductSansBold',fontSize: widget.fontSize),)),);
  }
}