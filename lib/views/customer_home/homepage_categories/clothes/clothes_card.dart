import 'package:ect/Constants/colors.dart';
import 'package:flutter/material.dart';

class ClothesCard extends StatelessWidget {
  const ClothesCard({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Card(
        elevation: 5.0,
        child: Column(
          children: [
            Image.asset(
              "assets/Graphics/clothes_image.png",
              width: 150,
              height: 155,
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: 5.0 , right: 10.0),
              child: Text(
                "BAROCCO SILK MIDI SHIRT DRESS",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rs. 1500",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: customPurple,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Row(
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
