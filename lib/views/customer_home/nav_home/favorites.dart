import 'package:ect/Constants/colors.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: customPurple,
        title: const Text(
          "Favourites",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Favourites",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.withOpacity(1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                height: size.height * 0.2,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
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
                              padding:
                                  const EdgeInsets.only(top: 10.0, right: 10.0),
                              child: Image.asset(
                                "assets/Graphics/favorites_chiffon.png",
                                width: 83,
                                height: 83,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, right: 10.0),
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
            ),
            const SizedBox(
              height: 30.0,
            ),
            Center(
              child: Text(
                "There are no more Favourites items ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.withOpacity(1),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(darkPink)
                  ),
                  onPressed: () {},
                  child: const Text(
                    "CONTINUE SHOPPING",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
