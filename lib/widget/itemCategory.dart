

import 'package:flutter/material.dart';
import 'package:shopping_application/data/Makeup.dart' as makeup;
import 'package:shopping_application/data/soin.dart' as soin;
import 'package:shopping_application/data/hair.dart' as hair;

class itemCategory extends StatelessWidget {
  final category;
  final index;

  const itemCategory({super.key, this.category,this.index});
     data(index,context){
     switch(index){
      case 0:
        return Navigator.of(context).pushNamed('categorie', arguments: {"makeup":makeup.makeup,"name":"Maquiage"});
      case 1:
        return Navigator.of(context).pushNamed('categorie', arguments: {"makeup":soin.soin,"name":"Soin de la peau"});
       case 2:
        return Navigator.of(context).pushNamed('categorie', arguments: {"makeup":hair.hair,"name":"Cheveaux"});




     }
   }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       data(index, context);
     
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8, left: 5),
       
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xffE2F5FA),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Image.asset(
              "${category['image']}",
              width: 50,
              height: 50,
              
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${category['title']}',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "ProductSansRegular",
                color: Color(0xff156779)
              ),
            ),
           if( category['subtitle'] !="")
              Center(
                child: Text(
                '${category['subtitle']}',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "ProductSansRegular",
                  color:  Color(0xff1a657a),
                ),
                            ),
              )
            
          ],
        ),
      ),
    );
  }
}
