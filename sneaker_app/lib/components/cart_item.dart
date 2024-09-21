import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/cart_model.dart';
import '../Models/shoeModel.dart';
class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key,required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from Cart
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen:false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.network(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon:Icon(Icons.delete,),
          onPressed:removeItemFromCart,
        ),
      ),
    );
  }
}
