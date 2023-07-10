import 'package:ect/Constants/colors.dart';
import 'package:ect/views/customer_home/homepage_categories/measurements/measurements.dart';
import 'package:flutter/material.dart';

class YourMeasurements extends StatefulWidget {
  const YourMeasurements({super.key});

  @override
  State<YourMeasurements> createState() => _YourMeasurementsState();
}

class _YourMeasurementsState extends State<YourMeasurements> {
  final sleeveController = TextEditingController();
  final armController = TextEditingController();
  final chestController = TextEditingController();
  final shoulderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            "Your Measurements",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: customPurple,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 70.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Sleeve length",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.15,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: sleeveController,
                      cursorColor: customPurple,
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: "27.72",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: customBlack),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: customPurple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: customPurple,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Arm length",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.15,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: armController,
                      cursorColor: customPurple,
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: "23.69",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: customBlack),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: customPurple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: customPurple,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Chest",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.15,
                    child: TextFormField(
                      readOnly: true,
                      textAlign: TextAlign.center,
                      controller: chestController,
                      cursorColor: customPurple,
                      decoration: const InputDecoration(
                        hintText: "49.8",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: customBlack),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: customPurple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: customPurple,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Shoulder",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.15,
                    child: TextFormField(
                      cursorColor: customPurple,
                      readOnly: true,
                      textAlign: TextAlign.center,
                      controller: shoulderController,
                      decoration: const InputDecoration(
                        hintText: "19.92",
                        hintStyle: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: customBlack),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: customPurple),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: customPurple,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70.0,
              ),
              SizedBox(
                width: size.width * 0.3,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sleeveController.text = "0";
                      armController.text = "0";
                      chestController.text = "0";
                      shoulderController.text = "0";
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MeasurementScreen(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(customOrange),
                  ),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
