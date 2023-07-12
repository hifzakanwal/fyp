// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({Key? key}) : super(key: key);

  @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        color: cardColor,
        elevation: 3.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ederobe",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isChecked ? customPurple : Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          width: 20.0,
                          height: 20.0,
                          child: isChecked
                              ? const Icon(
                                  Icons.circle,
                                  color: customPurple,
                                  size: 10,
                                )
                              : null,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 10.0),
                        height: double.infinity,
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/Graphics/cart_image.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Stylish Women’s colorful Kurti T...",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              "Brand_Name, Specifications",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Rs. 999",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: darkPink,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.remove,
                                          color: customBlack,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Container(
                                        color: Colors.grey,
                                        height: 20,
                                        width: size.width*0.1,
                                        child: Text(
                                          "20",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: customBlack.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.add,
                                          color: customBlack,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
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
