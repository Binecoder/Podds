// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:poods/homepods.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Container(
            height: 460,
            width: 420,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "images/young-woman-with-afro-haircut-yellow-headphones.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 436,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Center(
                    child: Text(
                      'Poddd.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  'Our Passion, your',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
                Text(
                  ' entertainment',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Now Listen to thousands of best',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Text(
                  ' podcasts for free.',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePods()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, top: 29),
                          child: Text(
                            'Get',
                            style: TextStyle(fontSize: 20, color: Colors.amber),
                          ),
                        ),
                      ),
                      Text(
                        'Started',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
