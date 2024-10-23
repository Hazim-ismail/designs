import 'package:flutter/material.dart';
import 'package:platformd/pages/colors.dart';
import 'package:platformd/pages/home.dart';
import 'package:platformd/pages/samsung_pages/galaxy_s8.dart';
import 'package:platformd/pages/samsung_pages/galaxynote5.dart';
import 'package:platformd/pages/samsung_pages/galaxynote8.dart';
import 'package:platformd/pages/samsung_pages/galaxys10.dart';
import 'package:platformd/pages/samsung_pages/galaxys7edge.dart';
import 'package:platformd/util/prod_list.dart';
import 'package:platformd/util/types.dart';

class SamProducts extends StatefulWidget {
  @override
  _SamProductsState createState() => _SamProductsState();
}

class _SamProductsState extends State<SamProducts> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: red,
        title: Text(
          'Samsung Products',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(18)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Find your device.....',
                  suffixIcon:
                  IconButton(onPressed: () {}, icon: Icon(Icons.search))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                      onTap: () {
                         pageController.animateToPage(0, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                      },
                      child: Type2(typeName2: 'All')),
                  InkWell(
                      onTap: () {
                         pageController.animateToPage(1, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                      },
                      child: Type(typeName: 'Galaxy S')),
                  InkWell(
                      onTap: () {
                        pageController.animateToPage(2, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                      },
                      child: Type(typeName: 'Galaxy Note')),
                  InkWell(
                      onTap: () {
                         pageController.animateToPage(3, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                      },
                      child: Type(typeName: 'Galaxy A')),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 500,
            child: PageView(
              scrollDirection: Axis.horizontal,
               controller: pageController,
              children: [
                //PageView 1
                //All Samsung Devices
                Container(
                  height: 900,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Samsung Galaxy S Production:',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 360,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {},
                                child: ProdList(
                                    prodPath: 'lib/samprod/S4.jpg',
                                    prodName: 'Samsnug Galaxy S4',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '100,000'),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => GalaxyS7Edge()));
                                },
                                child: ProdList(
                                    prodPath: 'lib/samprod/s7edge.jpg',
                                    prodName: 'Samsung Galaxy S7 Edge',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '200.000'),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => GalaxyS8()));
                                },
                                child: ProdList(
                                    prodPath: 'lib/samprod/s8.jpg',
                                    prodName: 'Samsung Galaxy S8',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '220.000'),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => GalaxyS10()));
                                },
                                child: ProdList(
                                    prodPath: 'lib/samprod/s10.jpeg',
                                    prodName: 'Samsung Galaxy S10',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '250.000'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Samsung Galaxy Note Production:',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 350,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {},
                                child: ProdList(
                                    prodPath: 'lib/samprod/note3.jpg',
                                    prodName: 'Samsnug Galaxy Note 3',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '150,000'),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => GalaxyNote5()));
                                },
                                child: ProdList(
                                    prodPath: 'lib/samprod/note5.jpg',
                                    prodName: 'Samsung Galaxy Note 5',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '230.000'),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => GalaxyNote8()));
                                },
                                child: ProdList(
                                    prodPath: 'lib/samprod/note8.jpg',
                                    prodName: 'Samsung Galaxy Note 8',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '300.000'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Samsung Galaxy A Production:',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 350,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {},
                                child: ProdList(
                                    prodPath: 'lib/samprod/a13.jpg',
                                    prodName: 'Samsnug Galaxy A 13',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '180,000'),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {},
                                child: ProdList(
                                    prodPath: 'lib/samprod/A30.jpg',
                                    prodName: 'Samsung Galaxy A 30',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '230.000'),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {},
                                child: ProdList(
                                    prodPath: 'lib/samprod/a50.jpg',
                                    prodName: 'Samsung Galaxy A50',
                                    prodCampony: 'Samsung Campony',
                                    prodPrice: '400.000'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                //The End Code


                //PageView 2
                //All Samsung Galaxy S Devices

                Container(
                  child: ListView(
                    children: [
                      Container(
                        height: 330,
                       width: 200,

                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 height:330,
                                 child: InkWell(
                                   borderRadius: BorderRadius.circular(12),
                                   onTap: () {},
                                   child: ProdList(
                                       prodPath: 'lib/samprod/S4.jpg',
                                       prodName: 'Samsnug Galaxy S4',
                                       prodCampony: 'Samsung Campony',
                                       prodPrice: '100,000'),
                                 ),
                               ),
                               Padding(padding: EdgeInsets.only(right: 4)),
                               Container(
                                 height: 330,
                                 child: InkWell(
                                   borderRadius: BorderRadius.circular(12),
                                   onTap: () {
                                     Navigator.of(context).push(MaterialPageRoute(
                                         builder: (context) => GalaxyS7Edge()));
                                   },
                                   child: ProdList(
                                       prodPath: 'lib/samprod/s7edge.jpg',
                                       prodName: 'Samsung Galaxy S7 Edge',
                                       prodCampony: 'Samsung Campony',
                                       prodPrice: '200.000'),
                                 ),
                               ),



                             ],
                           ),


                         ],
                       ),


                      ),

                      Container(
                        height: 330,
                        width: 200,

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 330,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => GalaxyS8()));
                                    },
                                    child: ProdList(
                                        prodPath: 'lib/samprod/s8.jpg',
                                        prodName: 'Samsung Galaxy S8',
                                        prodCampony: 'Samsung Campony',
                                        prodPrice: '220.000'),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(right: 4)),



                                Container(
                                  height: 330,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => GalaxyS10()));
                                    },
                                    child: ProdList(
                                        prodPath: 'lib/samprod/s10.jpeg',
                                        prodName: 'Samsung Galaxy S10',
                                        prodCampony: 'Samsung Campony',
                                        prodPrice: '250.000'),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),


                      ),
                    ],
                  ),
                ),


              //The End Code

              //PagView 3
              //All Samsung Note Devices
               Container(
                  child: ListView(
                    children: [
                      Container(
                        height: 330,
                       width: 200,

                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 height:330,
                                 child: InkWell(
                                   borderRadius: BorderRadius.circular(12),
                                   onTap: () {},
                                   child: ProdList(
                                       prodPath: 'lib/samprod/note3.jpg',
                                       prodName: 'Samsnug Galaxy Note 3',
                                       prodCampony: 'Samsung Campony',
                                       prodPrice: '150,000'),
                                 ),
                               ),
                               Padding(padding: EdgeInsets.only(right: 4)),
                               Container(
                                 height: 330,
                                 child: InkWell(
                                   borderRadius: BorderRadius.circular(12),
                                   onTap: () {
                                     Navigator.of(context).push(MaterialPageRoute(
                                         builder: (context) => GalaxyNote5()));
                                   },
                                   child: ProdList(
                                       prodPath: 'lib/samprod/note5.jpg',
                                       prodName: 'Samsung Galaxy Note 5',
                                       prodCampony: 'Samsung Campony',
                                       prodPrice: '230.000'),
                                 ),
                               ),



                             ],
                           ),


                         ],
                       ),


                      ),

                      Container(
                        height: 330,
                        width: 200,

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 330,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => GalaxyNote8()));
                                    },
                                    child: ProdList(
                                        prodPath: 'lib/samprod/note8.jpg',
                                        prodName: 'Samsung Galaxy Note 8',
                                        prodCampony: 'Samsung Campony',
                                        prodPrice: '300.000'),
                                  ),
                                ),
                                
                              ],
                            ),


                          ],
                        ),


                      ),
                    ],
                  ),
                ),


                //The End Code

                //PageView 4
                //All Samsung Galaxy A Devices

                Container(
                  child: ListView(
                    children: [
                      Container(
                        height: 330,
                       width: 200,

                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 height:330,
                                 child: InkWell(
                                   borderRadius: BorderRadius.circular(12),
                                   onTap: () {},
                                   child: ProdList(
                                       prodPath: 'lib/samprod/a13.jpg',
                                       prodName: 'Samsnug Galaxy A 13',
                                       prodCampony: 'Samsung Campony',
                                       prodPrice: '180,000'),
                                 ),
                               ),
                               Padding(padding: EdgeInsets.only(right: 4)),
                               Container(
                                 height: 330,
                                 child: InkWell(
                                   borderRadius: BorderRadius.circular(12),
                                   onTap: (){},                               
                                   
                                   child: ProdList(
                                       prodPath: 'lib/samprod/A30.jpg',
                                       prodName: 'Samsung Galaxy A 30',
                                       prodCampony: 'Samsung Campony',
                                       prodPrice: '230.000'),
                                 ),
                               ),



                             ],
                           ),


                         ],
                       ),


                      ),

                      Container(
                        height: 330,
                        width: 200,

                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 330,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {},
                                    child: ProdList(
                                        prodPath: 'lib/samprod/a50.jpg',
                                        prodName: 'Samsung Galaxy A 50',
                                        prodCampony: 'Samsung Campony',
                                        prodPrice: '400.000'),
                                  ),
                                ),
                                
                              ],
                            ),


                          ],
                        ),


                      ),
                    ],
                  ),
                ),


                //The End Code
              ],
            ),
          ),
        ],
      ),
    );
  }
}
