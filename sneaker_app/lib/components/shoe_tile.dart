import 'package:flutter/material.dart';
import 'package:sneaker_app/Models/shoeModel.dart';


class ShoeTile extends StatefulWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe,required this.onTap});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //shoe pic
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(widget.shoe.imagePath,
                fit: BoxFit.cover, width: 200, height: 200,),
            ),
            //description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                widget.shoe.description,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            //price+ details
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.shoe.name,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height:5),
                      Text(
                        widget.shoe.price,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),]),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12))
                            ),
                            child: Center(
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  )
              ),
            //bottom to add o cart
          ]),
    );
  }
  }

