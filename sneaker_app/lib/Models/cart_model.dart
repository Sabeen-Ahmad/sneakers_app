import 'package:flutter/material.dart';
import 'package:sneaker_app/Models/shoeModel.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        imagePath: 'images/zoom-freak.jpeg',
        price: ' 50\$',
        description: 'The forward looking designs of latest signature shoe'),
  Shoe(
  name: 'Air Jordan',
  imagePath: 'images/air-jordan.jpeg',
  price: ' 20\$',
  description: 'You\'ve got the hops and the speed-lace up in shoes that enhance your energy'),

  Shoe(
  name: 'KD Treys',
  imagePath: 'images/kd-treys.jpeg',
  price: ' 60\$',
  description: 'A secure midfoot strap for scoring binges and defensive '),

  Shoe(
  name: 'Kyrie 6',
  imagePath: 'images/kyrie-6.jpeg',
  price: ' 70\$',
  description: 'Bouncy cushioning is paired with soft supportive form for rest'),
  ];
  //list of shoes in user cart
List<Shoe> userCart=[

];
  //get list of items for sale
  List<Shoe> getShoeList(){
  return shoeShop;
  }
  //get cart
List<Shoe>getUserCart(){
    return userCart;
}
  //add items to cart
void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
}
  //remove items from cart
void removeItemFromCart(Shoe shoe ){
    userCart.remove(shoe);
    notifyListeners();
}
}
