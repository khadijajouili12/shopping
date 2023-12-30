import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_application/widget/CustomButton.dart';
import 'package:shopping_application/widget/InputText.dart';
import 'package:shopping_application/widget/PaymentType.dart';
import 'package:shopping_application/widget/itemOrder.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int isSelected = 0;
  void onPrees() {
    setState(() {
      isSelected = 1;
      print(isSelected);
    });
  }

  void onPress() {
    setState(() {
      isSelected = 2;
      print(isSelected);
    });
  }

  @override
  Widget build(BuildContext context) {
    String type1 = "livraison";
    String type2 = "master";
          double width = MediaQuery.of(context).size.width;
            double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset:true,
      
      body: Container(
         color: Color(0xfff4f4f4),
          width: double.infinity,
         
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Icon(Icons.shopping_cart),
                ],
              ),
              SizedBox(
                height: height*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Text(
                'Delivry address',
                style: TextStyle( fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020)),
              ),
              Text(
                'Edit',
                style: TextStyle(fontSize: 16,color: Color(0xff156779),fontFamily: "ProductSansRegular",),
              ),
              ],),
              
              SizedBox(
                height: 10,
              ),
              Container(
             
              
                child: Text(
                  'Primoholla 64 number house,jalalabad,Sylhet',
                  
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: const Color.fromARGB(255, 197, 197, 197)),
                      
                ),
              ),
             
                   SizedBox(
                height: 10,
              ), 
               Text(
                'Order summary ',
                style: TextStyle(fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020)),
              ),
                SizedBox(
                height: 10,
              ), 
              itemOrder(text: "Total item",item: "2",),
              SizedBox(height: 5,),
              itemOrder(text: "Order",item: "\$ 55.33",),
              SizedBox(height: 5,),
              itemOrder(text: "Delivery fee ",item: "\$ 10.77",),
              Divider(),
              itemOrder(text: "Total",item: "\$ 60.77"),
              SizedBox(
                height: 20,
              ), 
              
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                     Text(
                    'Payments Methods ',
                    style: TextStyle(fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PaymentType(
                    type: type1,
                    text: "Payer a livrasion",
                    index: 1,
                    onPrees: onPrees,
                    isSelected: isSelected,
                  ),
                  PaymentType(
                    type: type2,
                    text: "Master Card",
                    index: 2,
                    onPrees: onPress,
                    isSelected: isSelected,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                   if (isSelected == 1)
                  Container(
                     child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             'Card details ',
                             style:
                                 TextStyle(fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020)),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           InputText(
                             text: 'Email',
                             keybord: TextInputType.name,
                             obscureText: false,
                             maxlength: 15,
                             hintText: "Card name",
                           ),
                           Container(
                             
                             child: Row(
                               children: [
                                 Expanded(
                                   child: InputText(
                                     keybord: TextInputType.name,
                                     hintText: 'Adresse',
                                     text: "Adresse",
                                     maxlength: 25,
                                     obscureText: false,
                                   ),
                                 ),
                                 SizedBox(
                                 width: 8,
                               ),
                                 Expanded(
                                   child: InputText(
                                     keybord: TextInputType.number,
                                     hintText: 'Numéro de téléphone',
                                     text: "Numéro de téléphone",
                                     maxlength: 8,
                                     obscureText: false,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           Row(
                             children: [
                               Expanded(
                                   child: InputText(
                                 text: 'Nom',
                                 keybord: TextInputType.name,
                                 obscureText: false,
                                 maxlength: 10,
                                 hintText: "Nom",
                               )),
                               SizedBox(
                                 width: 8,
                               ),
                               Expanded(
                                   child: InputText(
                                 text: 'Prénom',
                                 keybord: TextInputType.name,
                                 obscureText: true,
                                 maxlength: 10,
                                 hintText: "Prénom",
                               )),
                             ],
                           ),
                            CustomButton(text:"Send order",
                            fontSize: 19.0,
                                          height: 45.0,
                     color: Color(0xff156779),onPress: "paymenetsuc",argument:"laiv")
                         ]),
                   ),
                    
                   
                  if (isSelected == 2)
                    Container(
                      height: 400,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Card details ',
                              style:
                                  TextStyle(fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InputText(
                              text: 'Card name',
                              keybord: TextInputType.name,
                              obscureText: false,
                              maxlength: 15,
                              hintText: "Card name",
                            ),
                            Container(
                             
                              child: InputText(
                                keybord: TextInputType.number,
                                hintText: 'XXXX XXXX XXXX XXXX',
                                text: "Card Number",
                                maxlength: 19,
                                obscureText: true,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: InputText(
                                  text: 'Valid Thru',
                                  keybord: TextInputType.datetime,
                                  obscureText: false,
                                  maxlength: 5,
                                  hintText: "Valid Thru",
                                )),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                    child: InputText(
                                  text: 'CVC',
                                  keybord: TextInputType.number,
                                  obscureText: true,
                                  maxlength: 4,
                                  hintText: "CVC",
                                )),
                              ],
                            ),
                             CustomButton(text:"Send order",
                             fontSize: 19.0,
                     height: 45.0,
                      color: Color(0xff156779),onPress:'paymenetsuc',argument:"payment")
                          ]),
                    ),
                  ],),
                ),
              )
             
               
            ],
          ),
        ),
      ),
    );
  }
}
