import 'package:flutter/material.dart';
import 'package:shopping_application/widget/Buttonback.dart';
import 'package:shopping_application/widget/Headrs.dart';
import 'package:shopping_application/widget/itemArrival.dart';
import 'package:shopping_application/widget/itemCategory.dart';
import 'package:shopping_application/widget/itemMost.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:shopping_application/data/newArrivalsdata.dart' as newarr;
import 'package:shopping_application/data/CategorieData.dart' as categorie;
import 'package:shopping_application/data/MostData.dart' as mostdata;
import 'package:shopping_application/data/RecommendedData.dart'
    as recomndedData;
import 'package:shopping_application/widget/itemRecomnded.dart';
import 'package:shopping_application/widget/CustombottomNavig.dart';

import 'package:shopping_application/widget/search.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  ScrollController scrollController = ScrollController();
  bool showbtn = false;
  PageController pageController = PageController();
  var _currentPage = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!;
      });
    });
    scrollController.addListener(() {
      //scroll listener
      double showoffset =
          10.0; //Back to top botton will show on scroll offset 10.0

      if (scrollController.offset > showoffset) {
        showbtn = true;
        setState(() {
          //update state
        });
      } else {
        showbtn = false;
        setState(() {
          //update state
        });
      }
    });
  }

  List indcator = [
    {'image': 'images/1.jpg'},
    {'image': 'images/2.jpg'},
    {'image': 'images/3.jpg'},
    {'image': 'images/4.jpg'},
    {'image': 'images/6.jpg'}
  ];

  var selectedindex = 0;
  onPress(i) {
    setState(() {
      selectedindex = i;
      print(selectedindex);
    });
  }

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 4.3;
double cardHeight = MediaQuery.of(context).size.height / 4.6;
     double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            backgroundColor: Color(0xfff3f7f8),
             actions: [
              CircleAvatar(child: Icon(Icons.notifications,color: Color(0xff1a657a)),backgroundColor: Color(0xffdbe9ea),),
              SizedBox(width: 5,),
              CircleAvatar(child: Icon(Icons.menu,color: Color(0xff1a657a)),backgroundColor: Color(0xffdbe9ea),),
               SizedBox(width: 5,),
             ],
             centerTitle: true,
             leading: Icon(Icons.arrow_back,color: Color(0xff1a657a)),
            title:Text("Cosmoshop",style: TextStyle(color: Color(0xff1a657a),fontFamily: 'Poppins',fontWeight: FontWeight.w800),)
           
          ),
        ),
        bottomNavigationBar: CustombottomNavig(
          
          onPress: onPress,
          selectedindex: selectedindex,
        ),
        floatingActionButton:  Buttonback(showbtn: showbtn,scrollController: scrollController,),
        body: SafeArea(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Container(
              color: Color(0xfff4f4f4),
              child: Column(children: [
                Column(
                  children: [
                    search(),
                    Container(
                      height: 250,
                      child: Stack(alignment: Alignment.bottomCenter, children: [
                        ListView.builder(
                            controller: pageController,
                            scrollDirection: Axis.horizontal,
                            itemCount: indcator.length,
                            itemBuilder: (context, i) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                width: MediaQuery.of(context).size.width*0.95,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("${indcator[i]['image']}"),
                                        fit: BoxFit.fill)),
                              );
                            }),
                        Positioned(
                          bottom: 10,
                          child: new DotsIndicator(
                            dotsCount: indcator.length,
                            position: _currentPage.toInt(),
                            decorator: DotsDecorator(
                              activeColor: Color(0xff156779),
                              color: Colors.white,
                              size: const Size.square(9.0),
                              activeSize: const Size(18.0, 9.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      
                      margin: EdgeInsets.symmetric(horizontal: 15
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Just Arrivals',
                                    style: TextStyle(
                                       fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020))),
                                Text(
                                  'see more',
                                  style:
                                      TextStyle(fontSize: 16,color: Color(0xff156779),fontFamily: "ProductSansRegular",),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            
          
                            Column(
                              mainAxisSize: MainAxisSize.min,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    for (int i = 0; i < newarr.newArrivals.length; i++) itemArrival(
                                newArrivals: newarr.newArrivals[i],
                                i:i,
                              )
                                  ],
                                ),
                              )
                            ],
                            ),
                               
                           
                                                          
                            
                            Text('Category',
                                style: TextStyle(
                                      fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020))),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              
                              children: [
                                GridView.builder(
                                                    shrinkWrap: true,
                                                    scrollDirection: Axis.vertical,
                                                    itemCount: categorie.category.length,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                            crossAxisCount: 4,mainAxisSpacing: 0.1,childAspectRatio: 0.8 ,),
                                                    itemBuilder: (context, i) {
                                                      return itemCategory(
                                                        category: categorie.category[i],
                                                        index: i,
                                                      );
                                                    }),
                              ],
                            ),
                            SizedBox(height: 10,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Most popular',
                                    style: TextStyle(
                                      fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020))),
                                Text(
                                  'see more',
                                  style:
                                      TextStyle(fontSize: 16,color: Color(0xff156779),fontFamily: "ProductSansRegular"),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Column(
                             
                              children: [
                                ListView.builder(
                                
                                  shrinkWrap: true,
                                    padding: EdgeInsets.only(top: 15),
                                    itemCount: mostdata.most.length,
                                    itemBuilder: (context, i) {
                                      return itemMost(
                                        most: mostdata.most[i],
                                      );
                                    }),]
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('Recommended',
                                style: TextStyle(
                                     fontFamily: 'ProductSansMedium', fontSize: 17,color: Color(0xff202020))),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: double.infinity,
                              height: 450,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: recomndedData.recommonded.length,
                                  itemBuilder: (context, i) {
                                    return itemRecomnded(
                                        recommnded: recomndedData.recommonded[i]);
                                  }),
                            )
                          ]),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
