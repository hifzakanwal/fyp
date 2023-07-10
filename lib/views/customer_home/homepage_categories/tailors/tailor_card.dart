import 'package:ect/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;

  const CustomCard({Key? key, required this.cardColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 10.0,
      ),
      child: SizedBox(
        height: size.height * 0.23,
        child: Card(
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/Graphics/tailor_card1.png"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Sharaz Tailor",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Icon(
                      Icons.favorite,
                      color: customWhite,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.chat_rounded,
                      color: customWhite,
                      size: 30,
                    ),
                  ],
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: customWhite,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "2 days",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: customWhite),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/Graphics/scooter.svg',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Text(
                        "35 min",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: customWhite),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: size.height * 0.035,
                            width: size.width * 0.35,
                            decoration: BoxDecoration(
                                color: customBlack,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                                Icon(
                                  Icons.star,
                                  color: starColor,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
