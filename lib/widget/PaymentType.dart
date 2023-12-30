

import 'package:flutter/material.dart';

class PaymentType extends StatefulWidget {
  final String type;
  final text;
  final index;
  final isSelected;
  final   VoidCallback onPrees;
  const PaymentType({super.key, required this.type,this.text,this.index, required this.onPrees,this.isSelected});

  @override
  State<PaymentType> createState() => _PaymentTypeState();
}

class _PaymentTypeState extends State<PaymentType> {

  @override
  Widget build(BuildContext context) {
    print(widget.isSelected);
    return InkWell(
      onTap: widget.onPrees,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        border:Border.all(width: 1,color: Colors.grey) ),
        child: Container(
          margin: EdgeInsets.only(left: 10,right: 10,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
              if(widget.type=="master")
              Image.network( 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/800px-Mastercard-logo.svg.png',
                        height: 30,
                        width: 30,)
                        else Image.asset("images/cash.png",height: 30,
                        width: 30,)
                        ,
                        
                        SizedBox(width: 10,),
                        Text("${widget.text}",style: TextStyle(fontSize: 14,fontFamily: 'ProductSansRegular',color: Color(0xff757575)),)
          
            ],),
            if(widget.index==widget.isSelected)
               Icon(Icons.check_circle,color:Color(0xff156779))
                
  
          ]),
        ),
      ));
  }
}