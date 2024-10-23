import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:platformd/pages/samsung_pages/galaxy_s8.dart';
import 'package:platformd/util/prod_list.dart';



class GalaxyS10 extends StatefulWidget {
  @override
  _GalaxyS10State createState() => _GalaxyS10State();
}

class _GalaxyS10State extends State<GalaxyS10> {
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
                  

                  image: AssetImage('lib/samprod/s10.jpeg'),
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
            child: Text('The Samsung Galaxy S10 is line of Android-based smartphones manufactured, released and marketed by Samsung Galaxy S series. The Galaxy S10 series of the 10th anniversary of the Samsung Galaxy S flagship line, its top line of phones next to the Note models. Unveiled dring the "Samsung Galaxy Unpacked 2019" press event held on 20 February 2019, the devies started shipping in certain regions such as Australia and the United states on 6 March 2019, then worldwide on 8 March 2019.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PhonePic(side: 'lib/samprod/galaxys10/s10f.png'),
                  PhonePic(side: 'lib/samprod/galaxys10/s10b.jpeg'),
                  PhonePic(side: 'lib/samprod/galaxys10/s10r.jpg'),
                  PhonePic(side: 'lib/samprod/galaxys10/s10l.jpg'),
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
                Text('Samsung Galaxy S10'),
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
                Text('3400 mAh'),
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
                Text('8 GB'),
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
                Text(' 128/512 GB'),
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
                  child: Text('Exynos: Octa-core (2x2.73 GHz)',maxLines: 3,),
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
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => GalaxyS8()));},
                    child: ProdList(prodPath: 'lib/samprod/s8.jpg', prodName: 'Samsung Galaxy S8', prodCampony: 'Samsung Campony', prodPrice: '220.000')),
                InkWell(
                  onTap: (){},
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
