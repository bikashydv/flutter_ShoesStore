import 'package:flutter/material.dart';
import 'package:uifirst/screens/button_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List size = [39, 40, 41, 42, 43, 44, 45];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffCFCFCF),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          "Adidas Yung -1",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Container(
                  height: 433,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Align(
                        child: Image.asset("assets/navicon/adidas_logo.png"),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          "assets/navicon/image 99.png",
                          width: MediaQuery.of(context).size.width - 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Size",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          for (int i = 0; i < size.length; i++)
                            Container(
                              margin: EdgeInsets.only(bottom: 8),
                              alignment: Alignment.center,
                              height: 38,
                              width: 38,
                              decoration: const BoxDecoration(
                                color: Color(0xffEFEFEF),
                              ),
                              child: Text(
                                size[i].toString(),
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$120.99",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 92,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Color(0xff72D48E),
                        border: Border.all(color: Colors.green),
                      ),
                      child: Text("In Stock"),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Sneaker made from premium leather and the suede Waterproof inner liner to keep moisture out...",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                )
              ],
            )),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff363636)),
                minimumSize: MaterialStateProperty.all(
                  const Size(double.infinity, 66),
                ),
              ),
              child: const Text("Add to Cart"),
            )
          ],
        ),
      ),
    );
  }
}
