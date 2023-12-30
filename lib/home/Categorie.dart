import 'package:flutter/material.dart';
import 'package:shopping_application/widget/favorite.dart';

class Catgorie extends StatefulWidget {
  const Catgorie({super.key});

  @override
  State<Catgorie> createState() => _CatgorieState();
}

class _CatgorieState extends State<Catgorie> {
  late List data;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    final item = (ModalRoute.of(context)?.settings.arguments as Map);
    List data = item['makeup'];
    print(data);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xfff4f4f4),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Color(0xff156779)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Back',style:TextStyle(color: Color(0xff156779), fontFamily: 'Poppins', fontWeight: FontWeight.w300) ,)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.shopping_bag)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${item['name']}',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                      Text('${data.length} items found ',
                          style: TextStyle(
                              color: Color(0xff156779), fontFamily: 'Poppins', fontWeight: FontWeight.w300))
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              Container(
                width: width * 0.9,
                height: height - 150,
                child: GridView.builder(
                 
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.only(top: 15),
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     
                        crossAxisCount: 2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 4,
                        childAspectRatio: (width / (height/1.3))),
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            'details',
                            arguments: data[i],
                          );
                        },
                        // ignore: avoid_unnecessary_containers
                        child: Container( 
                          width: width*0.2,
                             
                                decoration: BoxDecoration(
                                     color: Color(0xffEDEFF2), 
                                     borderRadius: BorderRadius.circular(15)
                                ),
                        
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: width * 0.5,
                                height: height * 0.2 - 14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      child: Container(
                                        width: width * 0.2,
                                        height: width * 0.2,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    '${data[i]["images"]}'),
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
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Text(
                                          'New',
                                          style: TextStyle(
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 5, right: 5, child: favorite()),
                                    Positioned(
                                      left: 5,
                                      top: 10,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 35,
                                        height: 20,
                                        child: Text(
                                          "-20%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Color(0xff1a657a),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(
                                  '${data[i]['title']}',
                                  style: const TextStyle(
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w900),
                                ),
                                Container(
                                  child: Text(
                                    '${data[i]['subtitle']}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w100,
                                        color:  Color(0xff9c9c9c)),
                                  ),
                                ),
                                Text(
                                  '${data[i]['prix']}',
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff1a657a)),
                                ),
                                Text('${data[i]['otherprix']}',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                      decoration: TextDecoration.lineThrough,
                                      color: Color(0xff9c9c9c),
                                      decorationColor:  Color(0xff9c9c9c),
                                    )),
                                ],),
                              )
                             
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
