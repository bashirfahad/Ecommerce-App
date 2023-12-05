import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  State<ShopPage> createState() => _ShopPageState();
  }
class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text("Successfully Added!"),
            content: Text("Check your cart"),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context,value,child)=>Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade200,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search,color: Colors.grey,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text("Everyone flies.. some fly longer than others",style: TextStyle(color: Colors.grey.shade600),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hot Picks 🔥",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Text("See all",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
            ],
          ),
        ),
        SizedBox(height: 10,),
        Expanded(child: ListView.builder(itemCount:4,scrollDirection:Axis.horizontal,itemBuilder: (context,index){
          Shoe shoe=value.getShoeList()[index];
          return ShoeTile(
            shoe: shoe,
            onTap: ()=> addShoeToCart(shoe),
          );
        })),
        Padding(
          padding: const EdgeInsets.only(top: 25.0,left: 25,right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    ),);
  }
}
