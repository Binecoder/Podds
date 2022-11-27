// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:poods/database.dart';

class HomePods extends StatefulWidget {
  const HomePods({super.key});

  @override
  State<HomePods> createState() => _HomePodsState();
}

class _HomePodsState extends State<HomePods> {
  //Music List
  List podcasts = [
    {
      'title': "Tell me",
      'singer': "Ellen pompeo.",
      'image': "images/tell-me-1634142970.jpeg",
    },
    {
      'title': "Yeah no, im not ok",
      'singer': "Demi lovato",
      'image': "images/image.jpg",
    },
    {
      'title': "Under The Skin",
      'singer': "Russell Brand.",
      'image': "images/under-the-skin-with-russell-brand-1634142968.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'images/ABDC5C17-3C9B-4D2E-AAE2-A8BA3C6B3832.jpeg',
                    ),
                  ),
                  Text(
                    'Hi Rogan 👋',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 126, 124, 124)),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/menu.png'))),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Good Morning',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              'Train your',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              'Brain',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              'Robert Fox.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 174, 174, 174),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Icon(
                              Icons.play_circle,
                              color: Colors.white,
                              size: 38,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Container(
                          height: 210,
                          width: 200,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/istockphoto-1213252024-170667a.png'),
                                  fit: BoxFit.cover)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Trending Podcasts',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: podcasts.length,
                  itemBuilder: ((context, index) => customListTile(
                        onTap: () {},
                        title: podcasts[index]['title'],
                        singer: podcasts[index]['singer'],
                        image: podcasts[index]['image'],
                      )),
                ),
              ),
              Center(
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/tell-me-1634142970.jpeg",
                                  ),
                                )),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Stress free',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Jordan Kal.s',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(
                        Icons.skip_next_rounded,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.skip_previous,
                        color: Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
