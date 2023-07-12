import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/homepage_categories/measurements/measurements.dart';
import 'package:ect/views/customer_home/nav_home/customer_profile/account_info.dart';
import 'package:ect/views/customer_home/nav_home/customer_profile/address_screen.dart';
import 'package:ect/views/customer_home/nav_home/customer_profile/customer_orders.dart';
import 'package:flutter/material.dart';

import '../../../../view_models/controllers/auth.dart';

class CustomerProfile extends StatefulWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: customPurple,
          leading: const Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/Graphics/tailor_image.png"),
            ),
          ),
          title: const Column(
            children: [
              Text(
                "Hifza kanwal",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "View and edit profile",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Auth.instance.logout(context);
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 5.0, right: 5.0),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.13,
                  width: double.infinity,
                  child: Card(
                    color: cardColor,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Icon(
                            Icons.person,
                            color: darkPink,
                            size: 30,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Account Information",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Manage your account",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AccountInfo(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: darkPink,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.13,
                  width: double.infinity,
                  child: Card(
                    color: cardColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Icon(
                            Icons.man,
                            color: darkPink,
                            size: 30,
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Measurements",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Take your automated \nmeasurement or insert manually",
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MeasurementScreen(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: darkPink,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.13,
                  width: double.infinity,
                  child: Card(
                    color: cardColor,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 5.0,
                            right: 10,
                          ),
                          child: Icon(
                            Icons.task,
                            color: darkPink,
                            size: 30,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Orders",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "See your order's details",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25.0,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const CustomerOrderScreen(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: darkPink,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.13,
                  width: double.infinity,
                  child: Card(
                    color: cardColor,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Icon(
                            Icons.location_pin,
                            color: darkPink,
                            size: 30,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Set your location, to see near tailors",
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AddressScreen(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: darkPink,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.13,
                  width: double.infinity,
                  child: Card(
                    color: cardColor,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Icon(
                            Icons.help,
                            color: darkPink,
                            size: 30,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Help Center",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "See FAQ and contact support",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const AIMeasurement(),
                                //   ),
                                // );
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: darkPink,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                InkWell(
                  onTap: () {
                    Auth.instance.logout(context);
                  },
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: customOrange,
                    ),
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 1,
                  endIndent: 100,
                  indent: 100,
                  color: customBlack,
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
