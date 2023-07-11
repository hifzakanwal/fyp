import 'package:ect/Constants/colors.dart';
import 'package:ect/widgets/feedback_card.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TailorDetails extends StatefulWidget {
  const TailorDetails({super.key});

  @override
  State<TailorDetails> createState() => _TailorDetailsState();
}

class _TailorDetailsState extends State<TailorDetails> {
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
          "Tailor's Name",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.15,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: customPurple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Delivery: ',
                          style: TextStyle(
                            fontSize: 12,
                            color: customWhite,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 5.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Rs. 80',
                          style: TextStyle(
                            fontSize: 12,
                            color: red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Gent Simple: ',
                          style: TextStyle(
                            fontSize: 12,
                            color: customWhite,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 5.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Rs. 800',
                          style: TextStyle(
                            fontSize: 12,
                            color: red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Total: ',
                          style: TextStyle(
                            fontSize: 14,
                            color: customWhite,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 5.0,
                          ),
                        ),
                        TextSpan(
                          text: 'Rs. 880',
                          style: TextStyle(
                            fontSize: 14,
                            color: red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(red)),
                child: const Text(
                  "Place Order",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
                  "assets/Graphics/tailor_details.png",
                  width: 360,
                  height: 283,
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
                        Row(
                          children: [
                            Image.asset("assets/Graphics/tailor_card1.png"),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Al Jannat Tailors",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Jadoon plaza, phase 2",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.star,
                                  color: starColor,
                                ),
                              ),
                            ),
                            const Text(
                              "4.9/5",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: darkPink),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [
                                Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi)
                                    ..rotateZ(-math.pi / 3),
                                  child: Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationX(math.pi),
                                    child: const Icon(
                                      Icons.history,
                                      size: 24,
                                      color: darkPink,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2 days",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
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
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 10.0, right: 10.0),
                    height: size.height * 0.12,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          height: size.height * 0.04,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: red,
                          ),
                          child: const Center(
                            child: Text(
                              "Gents Simple",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: customWhite),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, bottom: 10.0),
                          height: size.height * 0.04,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: customOrange,
                          ),
                          child: const Center(
                            child: Text(
                              "Gents Fashion",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: customWhite),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, bottom: 10.0),
                          height: size.height * 0.04,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: customOrange,
                          ),
                          child: const Center(
                            child: Text(
                              "Ladies Simple",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: customWhite),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          height: size.height * 0.04,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: customOrange,
                          ),
                          child: const Center(
                            child: Text(
                              "Ladies Stylish",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: customWhite),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.04,
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: customOrange,
                          ),
                          child: const Center(
                            child: Text(
                              "Kid",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: customWhite),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                  child: Container(
                    height: size.height * 0.18,
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
                                "30 mins",
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
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                          color: customBlack,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, left: 20.0, right: 20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Services",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 65.0,
                              ),
                              Expanded(
                                child: Text(
                                  "Stiching Ladies & Gents suits",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
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
                  itemBuilder: (BuildContext context, int index) {
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
