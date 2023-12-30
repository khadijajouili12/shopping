import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.center ,
      
      margin: EdgeInsets.only(left: 10,right: 10,top:15,bottom: 5 ),
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
      color:Color(0xffEDEFF2) ),
      child: TextFormField(
        style: TextStyle(color:Color.fromARGB(255, 69, 69, 69),fontFamily: 'Poppins'),
        decoration: InputDecoration(
          hintText: "Recherche",
          labelStyle: TextStyle(color:Color(0xffb4b4b4),fontFamily: 'Poppins'),
          hintStyle: TextStyle(color: Color(0xffb4b4b4),fontFamily: 'Poppins'),
          suffixIcon: Container(
              margin: EdgeInsets.only(right: 8,left: 8,top: 8,bottom: 8),
            
            decoration: BoxDecoration(
              color: Color(0xffdbe9ea),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Icon(Icons.search,color: Color(0xff1a657a),size: 20,),),
          border: InputBorder.none,
         
contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),

        ),
        
      ),
    );
  }
}