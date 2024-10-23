import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:platformd/pages/samsung_pages/galaxy_s8.dart';
import 'package:platformd/pages/samsung_pages/galaxynote8.dart';
import 'package:platformd/util/prod_list.dart';



class GalaxyS7Edge extends StatefulWidget {
  @override
  _GalaxyS7EdgeState createState() => _GalaxyS7EdgeState();
}

class _GalaxyS7EdgeState extends State<GalaxyS7Edge> {
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
                  

                  image: AssetImage('lib/samprod/s7edge.jpg'),
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
            child: Text('The Samasung Galaxy S7 Edge are Android-based smartphones manufactured released and marketed by Samsung Electornics. The S7 Series serves as the successor to the Galaxy S6, S6 Edge, S6 Edge+, S6 Active released in 2015. The S7 Edge were offcially unveiled on 21 February 2016 during a Samsung press conference at Moblie world Congress, with European and North American release on 11 March 2016.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PhonePic(side: 'lib/samprod/galaxys7edge/s7edgef.jpg'),
                  PhonePic(side: 'lib/samprod/galaxys7edge/s7edgeb.webp'),
                  PhonePic(side: 'lib/samprod/galaxys7edge/s7edger.jpg'),

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
                Text('Samsung Galaxy S7 Edge'),
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
                Text('3000 mAh'),
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
                Text('Galaxy S'),
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
                Text('4 GB'),
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
                Text(' 32/64 GB'),
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
                Text('non expandable',maxLines: 2,),
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
                  child: Text('Exynos: 8890 Octa-core',maxLines: 3,),
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
                Text('\$200.000'),
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
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => GalaxyS8()));},
                    child: ProdList(prodPath: 'lib/samprod/s8.jpg', prodName: 'Samsung Galaxy S8', prodCampony: 'Samsung Campony', prodPrice: '220.000')),
                InkWell(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => GalaxyNote8()));},
                    child: ProdList(prodPath: 'lib/samprod/note8.jpg', prodName: 'Samsung Galaxy Note 8', prodCampony: 'Samsung Campony', prodPrice: '300.00')),
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
