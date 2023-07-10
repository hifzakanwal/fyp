import 'package:ect/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomerProfile extends StatefulWidget {
  const CustomerProfile({super.key});

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  leading: const Icon(
                    Icons.person,
                    color: darkPink,
                  ),
                  tileColor: Colors.grey.withOpacity(0.3),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account Information",
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Manage your account",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: darkPink,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  leading: const Icon(
                    Icons.man,
                    size: 30,
                    color: darkPink,
                  ),
                  tileColor: Colors.grey.withOpacity(0.3),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Measurements",
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Take your automated measurement or insert manually",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: darkPink,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  leading: const Icon(
                    Icons.library_books,
                    color: darkPink,
                  ),
                  tileColor: Colors.grey.withOpacity(0.3),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Orders",
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "See your order's details",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: darkPink,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  leading: const Icon(
                    Icons.location_on,
                    color: darkPink,
                  ),
                  tileColor: Colors.grey.withOpacity(0.3),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Set your location, to see near tailors",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: darkPink,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  leading: const Icon(
                    Icons.help_rounded,
                    color: darkPink,
                  ),
                  tileColor: Colors.grey.withOpacity(0.3),
                  title: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account Information",
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Manage your account",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: customBlack,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: darkPink,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              InkWell(
                onTap: (){},
                child: const Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: customOrange),
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                endIndent: 100,
                indent: 100,
                color: customBlack,
              )
            ],
          ),
        ),
      ),
    );
  }
}
