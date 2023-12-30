import 'package:flutter/material.dart';

class CustombottomNavig extends StatelessWidget {
  final selectedindex;
  final Function(int) onPress;
  const CustombottomNavig({super.key,this.selectedindex,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( currentIndex: selectedindex,
            onTap: onPress,
            selectedItemColor: Color(0xffc9c9c9),
            unselectedItemColor: Color(0xffc9c9c9),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.diamond),
                label: "shop",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.layers),
                label: "Tips",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.view_comfy),
                label: "Explors",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "Brands",
              ),
            ]);;
  }
}