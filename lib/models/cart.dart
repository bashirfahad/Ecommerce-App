import 'package:flutter/cupertino.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop=[
    Shoe(name: "Air Max", image: "assets/shoes3.png", price: "50500", desc: "Casual Wearing in urban life"),
  Shoe(name: "AirForce 1", image: "assets/shoes2.png", price: "28000", desc: "The signature airforce 1 "),
    Shoe(name: "Dynamic Fit", image: "assets/shoes1.png", price: "30000", desc: "the dyno sports"),
    Shoe(name: "AirMax training", image: "assets/shoes5.png", price: "45000", desc: "Training version of Airmax"),
    Shoe(name: "Air Jordans", image: "assets/shoes4.png", price: "65000", desc: "The Air Jordan 1 Retro High remakes the classic sneaker.")
  ];
  List<Shoe> userCart=[

  ];

  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}