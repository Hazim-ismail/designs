
import 'package:flutter/material.dart';
import 'package:platformd/pages/colors.dart';

class ProdList extends StatelessWidget {
  final String prodPath;
  final String prodName;
  final String prodCampony;
  final String prodPrice;

  ProdList({
    required this.prodPath,
    required this.prodName,
    required this.prodCampony,
    required this.prodPrice
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23,bottom: 23),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
          child: Column(

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(prodPath),
                  ),
                  SizedBox(height: 10,),
                  Text(prodName,style: TextStyle(fontSize: 16,color: Colors.black),),
                  Text(prodCampony,style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$' + prodPrice),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: red,
                          ),

                          child: IconButton(onPressed: (){},icon: Icon(Icons.add),tooltip: 'Buy',),
                        )
                      ],
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}


//

class PhonePic extends StatelessWidget {
  final String side;

  PhonePic({required this.side});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2/3,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(side),
        fit: BoxFit.cover)

      ),
    ),
    );
  }
}
