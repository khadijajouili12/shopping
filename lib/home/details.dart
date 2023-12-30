// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shopping_application/widget/CustomButton.dart';
import 'package:shopping_application/data/newArrivalsdata.dart' as newarr;
import 'package:shopping_application/data/Productrecommended.dart' as product;
import 'package:shopping_application/widget/itemArrival.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  var _itemsView = GlobalKey();
  String st = "SHOP NEW";
  String stt = "commender";
 late double _stackHeight;
  



  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
     double width = MediaQuery.of(context).size.width;
     double advice =MediaQuery.of(context).devicePixelRatio;
     print(height);
      print(width);
    final item = (ModalRoute.of(context)?.settings.arguments as Map);
    double nex =height+100.0;
    print(item['image']);
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          height: height,
        width: MediaQuery.of(context).size.width,
          child: Stack(
          
            alignment: Alignment.center, children: [
            
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: width*0.55,
                height: height*0.45,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40)),
                  color: Color(0xffffdcd6),
                  boxShadow: [BoxShadow(
                       color: Color(0xff000000).withOpacity(0.1),
                    blurRadius: 10,
                     offset: Offset(1, 1),
                    ),]
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
            
                margin: EdgeInsets.only(top: height*0.05, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back,color: Color(0xff156779),)),
                    
                  ],
                ),
              ),
                          
            ),
            Positioned(
              left: 10,
              top: height*0.09,
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${item['title']}",
                  style:  TextStyle(fontFamily: 'ProductSansBold',fontSize: 16)),
                  SizedBox(
                    height: height/180,
                  ),
                  Container(
                      width: width*.45,
                     
                    child: Text(
                      "${item['subtitle']}",
                     
                      style: TextStyle(fontFamily: 'ProductSansRegular',fontSize: 14,color: Color(0xff757575)),
                    ),
                  ),
                
                  Container(
                    width: width*0.2,
                    height: height*0.04,
                    margin: EdgeInsets.only(top: height*0.02,),
                    alignment: Alignment.center,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffffebde)
                     ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Text('4.5',
                      
                         style: TextStyle(color: Color(0xffff7c18),fontSize: 14),),
                           SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xffff7c18),
                          size: 20,
                        ),
                      
                       
                      ],
                    ),
                  ),
                 
                  Container(
                    margin: EdgeInsets.only(top: height*0.008,),
                    child: Text(
                      
                      "Starting from ",
                      style: TextStyle(fontFamily: 'ProductSansBold',fontSize: 16),
                    ),
                  ),
                  
                  Container(
                     margin: EdgeInsets.only(top: height*0.002,),
                     width: 100,
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$20",
                     
                    style:TextStyle(
                    fontFamily: 'ProductSansBold',fontSize: 18,color: Color(0xff156779))),
                              CircleAvatar(
                    maxRadius: 15,
                    
                    child: Icon(Icons.shopping_cart,color:Color(0xff156779),size: 15,),backgroundColor:  
                   Color(0xffcfe1e3)),
                   
                    ],)
                   
                  ),
                  
                  Container(
                    
                     margin: EdgeInsets.only(top: height*0.008,),
                    child: Text(
                      
                      "Promotional price ",
                      style: TextStyle(fontFamily: 'ProductSansBold',fontSize: 16),
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                   Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   CustomButton(fontSize: 15.0,text: "SHOP NOW",width:width*0.3,height:height*.04,color: Color(0xff156779),onPress: 'paymenet'),
                   
                           
                    
                                 ],
                               ),
                   SizedBox(height: height*0.02,),
                   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Suggested Products",
                        
                              style: TextStyle(fontFamily: 'ProductSansBold',fontSize: 16)),
                          Text(
                            "Recommnded Products fo all type",
                          
                            style: TextStyle(fontFamily: 'ProductSansRegular',fontSize: 14,color: Color(0xff757575)),
                          ),
                        ]),
                         SizedBox(height: height*0.02,),
                          Container(
                            height: 320,
                            width: width,
                            child: ListView.builder(
                             reverse:true,
                            scrollDirection: Axis.horizontal,
                             itemCount: newarr.newArrivals.length,
                             itemBuilder: (context,i){
                             return   itemArrival(
                                                        newArrivals: newarr.newArrivals[i],
                                                        i:i,
                                                      );
                            }),
                          ),
                  
                 
                ],
              ),
            ),
            Positioned(
                top: height*0.09,
               right: 0,
                child:Container(
                  width: width*0.45,
                  height: height*0.50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('${item['images']}'),
                          fit: BoxFit.cover)),
                )  ),
            
           
             
            
          ]),
        ),
      ),
    );
  }
}

