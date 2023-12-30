import 'package:flutter/material.dart';

class itemOrder extends StatefulWidget {
  final text;
  final item;
  const itemOrder({super.key,this.item,this.text});

  @override
  State<itemOrder> createState() => _itemOrderState();
}

class _itemOrderState extends State<itemOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Text("${widget.text}",style: TextStyle(fontSize: 14,fontFamily: 'ProductSansRegular',color: Color(0xff757575))),
            Text("${widget.item}",style: TextStyle(fontSize: 14,fontFamily: 'ProductSansRegular',color: Color(0xff757575))),

           ],
      ),
    );
  }
}