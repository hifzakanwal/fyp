import 'package:ect/views/customer_home/homepage_categories/tailors/tailor_details.dart';
import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';

class TailorListCard extends StatefulWidget {
  final Color cardColor;
  const TailorListCard({super.key, required this.cardColor});

  @override
  State<TailorListCard> createState() => _TailorListCardState();
}

class _TailorListCardState extends State<TailorListCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TailorDetails(),
          ),
        );
      },
      child: SizedBox(
        width: size.width * 0.47,
        child: Card(
          color: widget.cardColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/Graphics/tailor_details.png",
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  "Al Sharaz Tailor",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      height: size.height * 0.035,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                        color: customBlack,
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
