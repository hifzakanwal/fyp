import 'package:ect/views/customer_home/nav_home/customer_cart/cart_item_card.dart';
import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';

class CustomerCart extends StatefulWidget {
  const CustomerCart({Key? key}) : super(key: key);

  @override
  State<CustomerCart> createState() => _CustomerCartState();
}

class _CustomerCartState extends State<CustomerCart> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customPurple,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(
          left: 10.0,
        ),
        height: size.height * 0.1,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
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
                width: 15.0,
                height: 15.0,
                child: isChecked
                    ? const Icon(
                        Icons.circle,
                        color: customPurple,
                        size: 10,
                      )
                    : null,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              "All  ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              width: 50.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Delivery: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: customBlack,
                        ),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 5.0,
                        ),
                      ),
                      TextSpan(
                        text: 'Rs. 0',
                        style: TextStyle(
                          fontSize: 14,
                          color: customOrange,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Total: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: customBlack,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 5.0,
                        ),
                      ),
                      TextSpan(
                        text: 'Rs. 0',
                        style: TextStyle(
                          fontSize: 14,
                          color: customOrange,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Cart",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: customBlack.withOpacity(0.6),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Delete",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: customBlack.withOpacity(0.6),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 12, // Number of cards
                      itemBuilder: (
                        BuildContext context,
                        int index,
                      ) {
                        return const CartItemCard();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(darkPink),
                    ),
                    child: const Text(
                      "CONTINUE SHOPPING",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
