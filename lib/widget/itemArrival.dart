import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:shopping_application/home/homePage.dart';
import 'package:auto_size_text/auto_size_text.dart';


class itemArrival extends StatefulWidget {
   final  newArrivals;
   final i;
 
  const itemArrival({super.key,this.newArrivals,this.i});
 
  @override
  State<itemArrival> createState() => _itemArrivalState();
}

class _itemArrivalState extends State<itemArrival> {
  bool fav = false;
    onPress() {
      setState(() {
        fav = !fav;
        print(fav);
      });
    }
      

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context, ) {
      double height = MediaQuery.of(context).size.height;
     double width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.45,
       
       
        margin: EdgeInsets.only(left: 10),
        
      child: InkWell(
        onTap: (){
          print(widget.i);
          Navigator.of(context).pushNamed('details',arguments:widget.newArrivals,);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
             width: width*0.4-10,
        
        height: height*0.2-14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                   boxShadow: [
            BoxShadow(
               color: Color(0xff000000).withOpacity(0.1),
                          blurRadius: 10,
                           offset: Offset(1, 1),
            ),
          ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Container(
                      width: width*0.2,
                      height: width*0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('${widget.newArrivals['images']}'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    bottom: 5,
                    child: Container(
                      alignment: Alignment.center,
                      
                      width: 45,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Color(0xffee943b),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text('New',style: TextStyle(fontFamily: "Roboto",fontWeight:FontWeight.w900,color: Colors.white),),
                    ),
                  ),
                  Positioned(
                     top: 5,
                    right: 5,
                    child: InkWell(
                      onTap: onPress,
                      child: Container(
                        
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xfff8f8f8),
                            borderRadius: BorderRadius.circular(50)),
                        child: fav == true
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite,
                                color: Color(0xffc4c4c4),
                              ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 10,
                    child: Container(
                      alignment: Alignment.center,
                      width: 35,
                      height: 20,
                      child: AutoSizeText(
                        "-20%",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xff156779),
                          borderRadius: BorderRadius.circular(30),
                        ),
                          
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.02,),
            Text('${widget.newArrivals['title']}',style: TextStyle(fontFamily: "ProductSansMedium",color: Color(0xff2d2d2d) ,fontSize: 16,overflow: TextOverflow.ellipsis,),),
                        Container(
            
            
            child: Text('${widget.newArrivals['subtitle']}',maxLines: 2,
                         style:TextStyle(fontFamily: "ProductSansThin" ,color:Color(0xff757575) ,fontSize: 14),),
                        ),
                        Text('${widget.newArrivals['prix']}',style:TextStyle(fontFamily: "ProductSansBold" ,color: Color(0xff156779),fontSize: 18,),),
                        Text('${widget.newArrivals['otherprix']}',
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                 fontSize: 18,
                fontFamily: "ProductSansBold",
                decoration: TextDecoration.lineThrough,
                color: Color(0xffdbe9ea),
                decorationColor: Color(0xffd2d2d2),
              ))
           
                
          ],
        ),
      ),
    );
  }
}