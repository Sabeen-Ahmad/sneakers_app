import 'package:flutter/material.dart';
import 'package:sneaker_app/View/display_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.network(
              'images/a.jpg',
              height: 240,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Just Do It',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          const Text(
            'Brand new sneakers and custom made loafers with premium quality',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                )
              ),
              child: const Padding(
                padding:   EdgeInsets.all(25.0),
                child:  Center(
                    child:  Text(
                  'Shop Now',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,

                  ),
                ),
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
