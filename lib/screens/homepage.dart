import 'package:flutter/material.dart';
import 'package:uifirst/screens/popular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 60.0,
            ),
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Color.fromARGB(0, 197, 39, 39),
              color: Color(0xff414141),

              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        height: 54,
                        width: 120,
                        child: const Text(
                          "Just do it with nike",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white60),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: const [
                          Text(
                            'Explore Now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Image(
                    width: 229,
                    image: AssetImage('assets/navicon/pngwing 1.png'))
              ],
            ),
          ),

          //popular

          Container(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    Text(
                      'See more',
                      style:
                          TextStyle(color: Color.fromARGB(179, 138, 138, 138)),
                    )
                  ]),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          //popular container
          Container(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    width: 303,
                    decoration: BoxDecoration(
                      color: Color(0xffEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 30),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Popular()));
                            },
                            child: Container(
                              width: 123,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    " Nike",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'Free Metcon',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "\$120.00",
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Image(
                            // width: 300,
                            image: AssetImage('assets/navicon/pngwing 1.png'))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Newest shoes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Color.fromARGB(179, 138, 138, 138)),
                  )
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 18),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:
                      ((MediaQuery.of(context).size.width - 46) / 2) / 216,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      // margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Color(0xffCFCFCF),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.asset(
                              'assets/navicon/Green Shoe.png',
                              height: 135,
                              width: 130,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 15),
                    const Text(
                      "NIKE Metaton X",
                    ),
                    Text("\$120.99"),
                  ],
                );
              }),
        ]),
      ),
    );
  }
}

// class SilverGridDelegateWithFixedCrossAxisCount {}
