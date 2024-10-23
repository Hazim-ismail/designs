
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:platformd/pages/samsung_pages/galaxys10.dart';
import 'package:platformd/util/prod_list.dart';


class GalaxyS8 extends StatefulWidget {
  @override
  _GalaxyS8State createState() => _GalaxyS8State();
}

class _GalaxyS8State extends State<GalaxyS8> {
  late ScrollController _scrollController;
  int _currentIndex = 0;


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
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: AnimatedBuilder(animation: _scrollController,
       builder: (context, child){
        return Container(
          
          height: _scrollController.position.userScrollDirection == ScrollDirection.reverse ? 0:70,
          child: child,
        );
      },

      child: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
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
                

                image: AssetImage('lib/samprod/s8.jpg'),
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
            child: Text('Samsung Galaxy S8 are Android smartphones eighth genration of the Samsung Galaxy S Series. The S8 were unveiled on 29 March 2017 and dirctly succeeded the Samsung Galaxy S7 and S7 Edge, with a North American release on 21 April 2017 and international rollout throughout April and May The Samsung Galaxy S8 Active was announced on 8 August 2017 and exclusive to certain U.S cellular carriers.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PhonePic(side: 'lib/samprod/galaxys8/s8f.jpg'),
                  PhonePic(side: 'lib/samprod/galaxys8/s8b.jpg'),
                  PhonePic(side: 'lib/samprod/galaxys8/s8r.jpg'),
                  PhonePic(side: 'lib/samprod/galaxys8/s8l.jpg'),
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
                Text('Samsung Galaxy S8'),
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
                Text('4 or 6 GB'),
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
                Text('64 GB UFS 2.1/UFS 2.0 in some devices'),
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
                Text('microSDXC, expandable 256 GB',maxLines: 2,),
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
                Text('Exynos: Octa-core (4x2.3 GHz)',maxLines: 2,),
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
                Text('\$220.000'),
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
                    onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => GalaxyS10()));},
                    child: ProdList(prodPath: 'lib/samprod/s10.jpeg', prodName: 'Samsung Galaxy S10', prodCampony: 'Samsung Campony', prodPrice: '250.000')),
                InkWell(
                  onTap: (){},
                    child: ProdList(prodPath: 'lib/samprod/note8.jpg', prodName: 'Samsung Galaxy Note 8', prodCampony: 'Samsung Campony', prodPrice: '300.00')),
                InkWell(
                    onTap: (){},
                    child: ProdList(prodPath: 'lib/samprod/note5.jpg', prodName: 'Samsung Galaxy Note 5', prodCampony: 'Samsung Campony', prodPrice: '230.00')),
              ],

            ),
          ),

         

        ],
      ),
    );
  }
}
