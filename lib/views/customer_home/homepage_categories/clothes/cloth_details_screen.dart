import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/nav_home/customer_cart/customer_cart.dart';
import 'package:ect/widgets/feedback_card.dart';
import 'package:flutter/material.dart';

class ClothDetailsScreen extends StatefulWidget {
  const ClothDetailsScreen({super.key});

  @override
  State<ClothDetailsScreen> createState() => _ClothDetailsScreenState();
}

class _ClothDetailsScreenState extends State<ClothDetailsScreen> {
  int feedbackCardCount = 2; // Initial number of feedback cards to display
  int maxFeedbackCardCount = 4; // Maximum number of feedback cards
  bool showAllFeedbackCards =
      false; // Flag to determine if all feedback cards should be shown
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customPurple,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Cloth Details",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.11,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: customPurple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerCart(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    customOrange,
                  ),
                ),
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: customWhite),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerCart(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    red,
                  ),
                ),
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: customWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Graphics/clothes_image.png",
                  width: 360,
                  height: 283,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 10.0, right: 10.0, bottom: 5.0),
                    height: size.height * 0.15,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: [
                        const Text(
                          "Chiffon Fabrics - Chiffon Dupatta for Girls/Ladies (1.5 yards)",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rs. 350",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: darkPink),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: starColor,
                                        ),
                                        Text(
                                          "4.9/5",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: darkPink),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.chat_bubble_outline_outlined,
                                        color: darkPink,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: darkPink,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                  child: Container(
                    height: size.height * 0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: cardColor),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "1 days",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Rs. 80",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: showAllFeedbackCards
                      ? maxFeedbackCardCount // Show all feedback cards
                      : feedbackCardCount, // Show limited feedback cards
                  itemBuilder: (context, index) {
                    return const FeedbackCard();
                  },
                ),
                if (feedbackCardCount < maxFeedbackCardCount &&
                    !showAllFeedbackCards)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showAllFeedbackCards =
                            true; // Show all feedback cards when "Show More" button is clicked
                      });
                    },
                    child: const Text(
                      "Show More",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: customPurple,
                      ),
                    ),
                  ),
                if (showAllFeedbackCards)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showAllFeedbackCards =
                            false; // Show limited feedback cards when "Show Less" button is clicked
                      });
                    },
                    child: const Text(
                      "Show Less",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: customPurple,
                      ),
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
