import 'package:flutter/material.dart';

import '../models/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
   ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(borderRadius:BorderRadius.circular(12),
                child: Image.asset(shoe.image)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(shoe.desc,style: TextStyle(color: Colors.grey.shade600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 5,),
                      Text("\PKR  "+ shoe.price,style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  GestureDetector(
                      onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                        ),
                        child: Icon(Icons.add,color: Colors.white,)),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );

  }
}
