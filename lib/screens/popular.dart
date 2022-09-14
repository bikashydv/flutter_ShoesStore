import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> products = [
      {
        "image": "assets/navicon/Yellow Shoe.png",
        "name": "NIKE Metcon X",
        "price": "\$278.99",
      },
      {
        "image": "assets/navicon/Green Shoe.png",
        "name": "Nike Air Presto",
        "price": "\$132.99",
      },
      {
        "image": "assets/navicon/shoe_yeezy boost.png",
        "name": "Adidas Yeezy Boost 700",
        "price": "\$320.40",
      },
      {
        "image": "assets/navicon/Red Shoe.png",
        "name": "Adidas Yung-1",
        "price": "\$128.99",
      },
      {
        "image": "assets/navicon/Pink Shoe.png",
        "name": "Adidas Yung-1",
        "price": "\$132.99",
      },
      {
        "image": "assets/navicon/Green Shoe.png",
        "name": "Nike Air Presto",
        "price": "\$132.99",
      },
      {
        "image": "assets/navicon/Green Shoe.png",
        "name": "Nike Air Presto",
        "price": "\$132.99",
      },
      {
        "image": "assets/navicon/Red Shoe.png",
        "name": "NIKE Metcon X",
        "price": "\$120.99",
      },
      {
        "image": "assets/navicon/Red Shoe.png",
        "name": "Nike Air Presto",
        "price": "\$132.99",
      },
      {
        "image": "assets/navicon/Green Shoe.png",
        "name": "NIKE Metcon X",
        "price": "\$120.99",
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Color(0xffCFCFCF),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // Container(
                //   alignment: Alignment.topRight,
                //   child: Icon(
                //     Icons.arrow_back_ios,
                //     color: Colors.black,
                //     size: 30.0,
                //   ),
                // ),
                Text(
                  "Popular",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 30.0,
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: GridView.builder(
                itemCount: products.length,
                // itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio:
                      ((MediaQuery.of(context).size.width - 56) / 2) / 216,
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 28,
                ),
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
                                products[index]["image"]!,
                                // "assets/navicon/Yellow Shoe.png",
                                height: 135,
                                width: 130,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "NIKE Metaton X",
                      ),
                      Text("\$120.99"),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
