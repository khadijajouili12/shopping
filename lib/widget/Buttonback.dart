import 'package:flutter/material.dart';

class Buttonback extends StatelessWidget {
  final showbtn;
  final scrollController;
  const Buttonback({super.key,this.scrollController,this.showbtn});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
          duration: Duration(milliseconds: 1000), //show/hide animation
          opacity: showbtn ? 1.0 : 0.0, //set obacity to 1 on visible, or hide
          child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {
              scrollController.animateTo(
                  //go to top of scroll
                  0.0, //scroll offset to go
                  duration: Duration(milliseconds: 500), //duration of scroll
                  curve: Curves.fastOutSlowIn //scroll type
                  );
            },
            child: Icon(
              Icons.keyboard_arrow_up,
              size: 35,
              color:Color(0xff1a657a),
            ),
            backgroundColor: Color(0xffdbe9ea),
          ),
        );
  }
}