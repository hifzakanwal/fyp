import 'package:ect/Constants/colors.dart';
import 'package:flutter/material.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({super.key});

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      height: size.height * 0.17,
      width: double.infinity,
      child: Card(
        color: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 3.0,
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Row(
                children: [
                  Text(
                    "Rating & Reviews (1)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.star,
                        color: starColor,
                        size: 20.0,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: starColor,
                    size: 20.0,
                  ),
                  Icon(
                    Icons.star,
                    color: starColor,
                    size: 20.0,
                  ),
                  Icon(
                    Icons.star,
                    color: starColor,
                    size: 20.0,
                  ),
                  Icon(
                    Icons.star,
                    color: starColor,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/Graphics/tailor_image.png"),
                    radius: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hifza Kanwal",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Apki salie bhot saf hoti, or within in time",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
