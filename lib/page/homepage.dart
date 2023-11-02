import 'package:flutter/material.dart';
import 'package:smart_house/model/iot_model.dart';
import 'package:smart_house/utils/colors.dart';
import 'package:smart_house/widgets/basetext.dart';
import 'package:flutter_switch_dark_light/flutter_switch_dark_light.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isDarkMode = false;

  void _onThemeChanged(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  bool changeColor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: Appcolor.blue,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BaseText(
                                  text: "Welcome Home,",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolor.black),
                              // BaseText(
                              //   text: "Andrey Thomson",
                              //   fontSize: 16,
                              //   fontWeight: FontWeight.w700,
                              //   color: Appcolor.black,
                              // ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/notify.png"),
                          const SizedBox(width: 20),
                          Image.asset("assets/add.png")
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Appcolor.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BaseText(
                              text: "Energy Usage",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Appcolor.black),
                          BaseText(
                              text: "16, May, 2021",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Appcolor.black),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFF7DBDBD),
                              ),
                              child: Image.asset(
                                "assets/today.png",
                                height: 30,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BaseText(
                                  text: "Today",
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Appcolor.grey),
                              BaseText(
                                  text: "28.6KMh",
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Appcolor.black)
                            ],
                          ),
                          Center(
                            child: Container(
                              height: 40,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: Appcolor.grey,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Container(
                            height: 35,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFFFF6897),
                            ),
                            child: Image.asset("assets/month.png"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BaseText(
                                  text: "This Month",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Appcolor.grey),
                              BaseText(
                                  text: "345.56kWh",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Appcolor.black)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        !changeColor;
                      },
                      child: BaseText(
                          text: "All Room",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: changeColor ? Appcolor.grey : Appcolor.black),
                    ),
                    TextButton(
                      onPressed: () {
                        !changeColor;
                      },
                      child: BaseText(
                          text: "Living Room",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: changeColor ? Appcolor.grey : Appcolor.black),
                    ),
                    TextButton(
                      onPressed: () {
                        !changeColor;
                      },
                      child: BaseText(
                          text: "Bedroom",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: changeColor ? Appcolor.grey : Appcolor.black),
                    ),
                    TextButton(
                      onPressed: () {
                        !changeColor;
                      },
                      child: BaseText(
                          text: "Bathroom",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: changeColor ? Appcolor.grey : Appcolor.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: homeData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _isDarkMode = homeData[index].isSwitched;
                          setState(() {
                            _isDarkMode = !_isDarkMode;
                            // homeData[index].isSwitched =
                            //     !homeData[index].isSwitched;
                          });
                        },
                        child: Container(
                          height: 180,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _isDarkMode ? Appcolor.blue : Appcolor.grey,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Appcolor.grey,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Image.asset(
                                      "assets/${homeData[index].imagePaths}.png"),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                BaseText(
                                  text: homeData[index].name,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Appcolor.white,
                                ),
                                BaseText(
                                  text: homeData[index].devices,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Appcolor.white,
                                ),
                                SwitchListTileTheme(
                                  onChanged: _onThemeChanged,

                                  // onColor: Colors.black,
                                  // offColor: Colors.white,
                                  // activeColor: Colors.blueAccent,
                                  // value: homeData[index].isSwitched,

                                  isDarkMode: _isDarkMode,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
