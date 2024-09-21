import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/Models/shoeModel.dart';
import 'package:sneaker_app/components/shoe_tile.dart';

import '../Models/cart_model.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({
    super.key,
  });

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoetoCart(Shoe shoe){
Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
//alert the user that item is successfuly added to cart
  showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('successfully added!'),
    content: Text('Check your Cart'),
  ));
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context,value,child){
      return Column(
        children: [
//search bar
          Container(
            padding: EdgeInsets.all(12.0),
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child:const  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search', style: TextStyle(color: Colors.grey)),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
//message
          const  Text(
            'Everyone flies ,but some fly longer than other',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
//hot picks
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot picks',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'see all',
                  style:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection:Axis.horizontal ,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap: ()=>addShoetoCart(shoe),
                    );
                  }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0,left: 25.0,right: 25.0),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      );
    });
  }
}
