import 'package:ect/Constants/colors.dart';
import 'package:flutter/material.dart';

class FabricItemWidget extends StatelessWidget {
  const FabricItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/Graphics/fabrics1.png",
              width: 161,
              height: 161,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5.0 , top: 10.0),
            child: Text(
              "Chiffon Fabrics",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5.0 , top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rs. 1500",
                  style: TextStyle(
                    fontSize: 16,
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
                        size: 15.0,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 15.0,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 15.0,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 15.0,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                        size: 15.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
