import 'package:flutter/material.dart';

class itemRecomnded extends StatelessWidget {
  final recommnded;
  const itemRecomnded({super.key,this.recommnded});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(top: 10,left: 5,right: 5),
          width: 320,
          height: 280,
       child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
          width: 350,
          height: 250,
          
          decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage('${recommnded['image']}'),
             fit: BoxFit.fill
             ),
             borderRadius: BorderRadius.circular(15),
                  boxShadow: [
              BoxShadow(
                 color: Color(0xff000000).withOpacity(0.1),
                            blurRadius: 10,
                            
              ),
            ],
          
          ),
         ),
         SizedBox(height: 8,),
         Text('${recommnded['title']}',style:TextStyle(fontFamily: "ProductSansMedium",color: Color(0xff2d2d2d) ,fontSize: 16)),
         SizedBox(height: 3,),
         Text('${recommnded['addresse']}',style:TextStyle(fontFamily: "ProductSansThin" ,color:Color(0xff757575) ,fontSize: 14)),
 SizedBox(height: 3,),
          Text('${recommnded['dis']}',maxLines: 2,style:TextStyle(fontSize: 16,fontFamily: "ProductSansRegular",color:Color(0xff156779),)),

        Container(
          margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01),
          color: Color(0xffe2f5fb),
          width: MediaQuery.of(context).size.width*0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          Icon(Icons.sell,color: Color(0xff1a657a),size: 14,),
          Text("ECONOMISEZ JUSQ'AU ` 20%",style: TextStyle(color: Color(0xff1a657a)),)

         ],
          ),
        )
       ],)

    );
  }
}