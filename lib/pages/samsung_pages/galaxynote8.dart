import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:platformd/pages/samsung_pages/galaxynote5.dart';
import 'package:platformd/pages/samsung_pages/galaxys10.dart';
import 'package:platformd/util/prod_list.dart';

class GalaxyNote8 extends StatefulWidget {
  @override
  _GalaxyNote8State createState() => _GalaxyNote8State();
}

class _GalaxyNote8State extends State<GalaxyNote8> {
late ScrollController _scrollController;



  @override
  void initState() {
    
    super.initState();
    _scrollController = ScrollController();

  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: AnimatedBuilder(animation: _scrollController,
       builder: (context, child){
        return Container(
          
          height: _scrollController.position.userScrollDirection == ScrollDirection.reverse ? 0:70,
          child: child,
        );
      },

      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Buy'),
      ]
      ),
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          Container(
            height: 300,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                image: DecorationImage(                 

                  image: AssetImage('lib/samprod/note8.jpg'),
                )
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Descrption',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('The Galaxy Note 8 is a Android based smartphone phablet designed developed, produced and marketed by Samasung Electronics. The successor to the discontinued Samsung Galaxy Note 7, it was unveiled on 23 August 2017 and became available on 15 September 2017.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PhonePic(side: 'lib/samprod/galaxynote8/note8f.jpg'),
                  PhonePic(side: 'lib/samprod/galaxynote8/note8b.jpg'),

                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Device name:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('Samsung Galaxy Note 8'),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Battery:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('3300 mAh'),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Series:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('Galaxy Note'),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Memory:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('6 GB'),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Storage:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text(' 64 GB'),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Removable storage:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('expandable 256 GB',maxLines: 2,),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Compatiable networks:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('2G, 3G, LTE'),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('CPU:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Container(
                  child: Text('Exynos: Octa-core 8895',maxLines: 3,),
                ),
              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Price:',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('\$300.000'),
              ],

            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Similar Devices',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 360,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => GalaxyS10()));},
                    child: ProdList(prodPath: 'lib/samprod/s10.jpeg', prodName: 'Samsung Galaxy S10', prodCampony: 'Samsung Campony', prodPrice: '250.000')),
                InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => GalaxyNote5()));},
                    child: ProdList(prodPath: 'lib/samprod/note5.jpg', prodName: 'Samsung Galaxy Note 5', prodCampony: 'Samsung Campony', prodPrice: '230.000')),
                InkWell(
                    onTap: (){},
                    child: ProdList(prodPath: 'lib/samprod/a50.jpg', prodName: 'Samsung Galaxy A 50', prodCampony: 'Samsung Campony', prodPrice: '400.00')),
              ],

            ),
          ),

          
         

        ],
      ),
    );
  }
}
