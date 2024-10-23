import 'package:flutter/material.dart';
import 'package:platformd/pages/colors.dart';
import 'package:platformd/pages/samsung_pages/galaxy_s8.dart';
import 'package:platformd/pages/samsung_pages/galaxynote5.dart';
import 'package:platformd/pages/samsung_pages/galaxynote8.dart';
import 'package:platformd/pages/samsung_pages/galaxys10.dart';
import 'package:platformd/pages/samsung_pages/galaxys7edge.dart';
import 'package:platformd/util/prod_list.dart';
// import 'package:platformd/util/types.dart';


class AddOrders extends StatefulWidget {
  const AddOrders({ Key? key }) : super(key: key);

  @override
  State<AddOrders> createState() => _AddOrdersState();
}

class _AddOrdersState extends State<AddOrders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, 
    
    child: Scaffold(
        appBar: AppBar(
          backgroundColor: red,
          title: Text('Add All Orders'),
        ),
        body: ListView(
          children: [
            TabBar(
              
              tabs: [
              Tab(child: Text('Samsung',style: TextStyle(color: red,fontSize: 13),)),
              Tab(child: Text('Apple',style: TextStyle(color: red,fontSize: 13),)),
              Tab(child: Text('Huawei',style: TextStyle(color: red,fontSize: 13),)),
              Tab(child: Text('Nokia',style: TextStyle(color: red,fontSize: 13),)),
            ]),

            SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 1680,
                    child: TabBarView(children: [
                      //Samsung all products
                       Container(
                          
                          child: Column(
                            
                               children: [
                                 Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(18)),
                                   child: TextField(
                                    decoration: InputDecoration(
                                    hintText: 'Search',
                                    suffixIcon:  IconButton(onPressed: () {}, icon: Icon(Icons.search))),
                           ),
                         ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                'Recently Updated:',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 330,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
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
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                    Text(
                                  'Samsung Galaxy S Production:',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                  ],
                              ),
                            ),
                            SizedBox(height: 2,),
                            Container(
                          height: 330,
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
                         SizedBox(height: 2,),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                    Text(
                                  'Samsung Galaxy Note Production:',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                  ],
                              ),
                            ),
                            Container(
                          height: 330,
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
                         SizedBox(height: 2,),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                    Text(
                                  'Samsung Galaxy A Production:',
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                                  ],
                              ),
                            ),
                            Container(
                          height: 330,
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
                               ],
                              
                            
                          ),
                        ),
                      
                                 
                      //Apple all products
                      Container(
                        
                           child: Center(child: Text(''),)
                          
                        
                      ),
                                 
                      //Huawei all products
                      Container(
                       
                            child: Center(child: Text(''),)
                          
                      ),
                  
                      //Nokia all products
                      Container(
                        
                           child: Center(child: Text('4th Page'),)
                          
                      ),
                                 
                                 
                                 ]),
                  ),
                ),
               
            
          ],
        ),
      ),

      
    );
     
      
  }
}