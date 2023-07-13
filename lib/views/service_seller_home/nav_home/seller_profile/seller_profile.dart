import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/nav_home/search_screen/search_fabrics_screen.dart';
import 'package:ect/views/service_seller_home/nav_home/seller_profile/seller_profile_tab.dart';
import 'package:ect/views/service_seller_home/nav_home/seller_profile/seller_tailo.dart';
import 'package:flutter/material.dart';

import '../../../../view_models/controllers/auth.dart';

class SellerProfile extends StatelessWidget {
  const SellerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: customPurple,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Profile",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Auth.instance.logout(context);
              },
              icon: const Icon(
                Icons.logout,
              ),
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Container(
                  height: size.height * 0.35,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: cardColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundColor: customPurple,
                        child: Icon(
                          Icons.account_circle,
                          size: 50.0,
                          color: customWhite,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: Text(
                          "Alkaram Studio",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Text(
                        "Mandian, Abbottabd",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: customBlack,
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20.0,
                                ),
                              ),
                              backgroundColor: darkPink.withOpacity(0.7)),
                          label: const Text(
                            "Edit ",
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                color: customBlack),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Your Services",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SellerTabBar(),
            ];
          },
          body: const TabBarView(
            children: [
              SellerTailor(),
              SearchFabric(),
            ],
          ),
        ),
      ),
    );
  }
}
