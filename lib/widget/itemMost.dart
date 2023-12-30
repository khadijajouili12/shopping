import 'package:flutter/material.dart';

class itemMost extends StatelessWidget {
   final most;
  const itemMost({super.key,this.most, });

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
     double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 10,right: 5,left: 5),
      
       decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                                       boxShadow: [
              BoxShadow(
                 color: Color(0xff000000).withOpacity(0.1),
                            blurRadius: 6,
                            
              ),
            ],
                ),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                width: width*0.3,
                height: width*0.3,
                
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                                       boxShadow: [
              BoxShadow(
                 color: Color(0xff000000).withOpacity(0.1),
                            blurRadius: 10,
                            
              ),
            ],
                ),
                child: Image.asset("${most['image']}",width: width*0.3,height: 100,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      children: [
                        Text('${most['title']}',style: TextStyle(fontFamily: "ProductSansMedium",color: Color(0xff2d2d2d) ,fontSize: 16),),
                        SizedBox(width: 12,),
                        Container(
                                          alignment: Alignment.center,
                                          width: 35,
                                          height: 20,
                                          child: Text("20%",style: TextStyle(color:Colors.white,fontSize: 13),),
                                          decoration: BoxDecoration(
                                            color: Color(0xff156779),
                                            borderRadius: BorderRadius.circular(30),
                                            ),
                                            
                                         ),
                      ],
                    ),
                    SizedBox(height: 2,),
                    Text('${most['prix']}',style: TextStyle(fontFamily: "ProductSansBold" ,color: Color(0xff156779),fontSize: 18,)),
                    Text('${most['otherprix']}',style:TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xffdbe9ea),decorationColor: Color(0xffdbe9ea),fontFamily: "ProductSansBold",fontSize: 18)),
                            
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("Age:${most['age']} | Color:${most['color']} ", style:TextStyle(fontFamily: "Roboto",fontWeight:FontWeight.w100 ,color:Color(0xffb7b7b7) ),)
                      ],
                    )
                  ],),
                ),
              )
            ],
          ),
        

        ],
      ),
    );
  }
}