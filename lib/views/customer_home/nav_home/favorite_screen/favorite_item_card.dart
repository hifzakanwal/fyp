import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';

class FavouriteItemCard extends StatefulWidget {
  const FavouriteItemCard({super.key});

  @override
  State<FavouriteItemCard> createState() => FavouriteItemCardState();
}

class FavouriteItemCardState extends State<FavouriteItemCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: size.height * 0.2,
        width: double.infinity,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Colors.white.withOpacity(0.55),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Chiffon Fabrics",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                      child: Image.asset(
                        "assets/Graphics/favorites_chiffon.png",
                        width: 83,
                        height: 83,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Chiffon Fabrics - Baby pink Chiffon\nDupatta for Girls/Ladies (1.5 Yards)",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Rs, 350",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: darkPink),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Icon(
                                Icons.star,
                                color: starColor,
                                size: 20.0,
                              ),
                              const Icon(
                                Icons.star,
                                color: starColor,
                                size: 20.0,
                              ),
                              const Icon(
                                Icons.star,
                                color: starColor,
                                size: 20.0,
                              ),
                              const Icon(
                                Icons.star,
                                color: starColor,
                                size: 20.0,
                              ),
                              const Icon(
                                Icons.star,
                                color: starColor,
                                size: 20.0,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: red,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
