import 'package:flutter/material.dart';
import 'package:shopping_application/widget/CustomButton.dart';

class Paymentsucc extends StatefulWidget {
  const Paymentsucc({super.key});

  @override
  State<Paymentsucc> createState() => _PaymentsuccState();
}

class _PaymentsuccState extends State<Paymentsucc> {

  @override
  Widget build(BuildContext context) {
      final item = (ModalRoute.of(context)?.settings.arguments);
      print(item);
    return Scaffold(
      body: Container(
        
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color:  Color(0xff16677a),
              child: Container(
                margin: EdgeInsets.only(left: 13,right: 13,top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back,color: Colors.white,),
                    Text("Payment",style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w800,color: Colors.white,fontSize: 18),),
                    Icon(Icons.notifications),

                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 130),
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff4f4f4),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   
                  Container(
                    width: 70,
                    height: 70,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xff16677a),
                    ),
                    child: Icon(Icons.check,color: Colors.white,size: 30,),
                  ),
                  SizedBox(height: 30,),

                  if(item=="laiv")
                  Container(
                    width: 320,
                    height: 100,
                 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 237, 237, 237),
                    ),
                    child: Container(
                      width: 180,
                         
                      margin: EdgeInsets.only(left: 10,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text('Order successful',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w800),)),
                          Text('Your order #65767 was placed with success. You can see the status of the order at any time.'),
                        ],
                      )),
                  ),
                  if(item =="payment")
                   Column(children: [
                       Text("Successful!",style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w800)),
                       SizedBox(height: 5,),
                        Text("Your Payment is Successfummy done ",style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,color: Colors.grey))
                   ],),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left:20,right: 20,),
                    child: CustomButton(height: 40.0,
                      text: "Done",color: Color(0xff16677a),onPress: (){}))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}