import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/Models/cart_model.dart';

import '../Models/shoeModel.dart';
import '../components/cart_item.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>  Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          //heading
          children: [
            Text('My Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          const SizedBox(height: 10,),
            Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context,index){
              //get individual shoes
              Shoe individualShoe = value.getUserCart()[index];
              return CartItem(
                shoe: individualShoe,);
            },
            ),
            )
          ],
        ),
      ),
    );

  }
}
