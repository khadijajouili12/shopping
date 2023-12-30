import 'package:flutter/material.dart';

class favorite extends StatefulWidget {
  
  const favorite({super.key,});

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
   bool fav =false; 
  onPress(){
    setState(() {
      fav=!fav;
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                      ));
  }
}