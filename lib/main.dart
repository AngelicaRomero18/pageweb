// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pageweb/common/icons_pageweb_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 30, right: 30),
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x8c8c8c8c),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'logo.png',
                        height: 50,
                      ),
                      const Text(
                        'wake up',
                        style: TextStyle(
                            color: Color(0xff064072),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ' your dreams',
                        style: TextStyle(
                            color: Color(0xff4be2b9),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                              child: Image.asset(
                                'assets/españa.png',
                                height: 20,
                                width: 20,
                              )),
                          const SizedBox(width: 5),
                          const Text(
                            'ES',
                            style: TextStyle(
                              color: Color(0xff8c8c8c),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 15),
                      Container(
                        width: 250,
                        height: 25,
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                              color: Color(0xff8c8c8c), fontFamily: 'Ubuntu'),
                          decoration: InputDecoration(
                            fillColor: const Color(0xffF1F1F1),
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            labelText: 'Search...',
                            labelStyle: const TextStyle(
                                color: Color(0xff8c8c8c),
                                fontSize: 14.61,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xffc5c5c5),
                                  width: 1,
                                )),
                            // add padding to adjust text
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xffc5c5c5),
                                width: 1,
                              ),
                            ),
                            suffixIcon: const SizedBox(
                              height: 4,
                              child: Icon(Icons.search,
                                  color: Color(0xff4be2b9),
                                  size: 20,
                                  textDirection: TextDirection.rtl),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                child: Image.asset(
                                  'assets/message.png',
                                  height: 20,
                                  width: 20,
                                )),
                            const SizedBox(width: 5),
                            ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                child: Image.asset(
                                  'assets/email.png',
                                  height: 20,
                                  width: 20,
                                )),
                            const SizedBox(width: 5),
                            ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                child: Image.asset(
                                  'assets/notifications.png',
                                  height: 20,
                                  width: 20,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60))),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                child: Image.asset(
                                  'assets/photo_profile.png',
                                  height: 40,
                                  width: 40,
                                )),
                            const SizedBox(width: 5),
                            const Text('Jhon Doe'),
                            const SizedBox(width: 5),
                            const Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 40, right: 40),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x8c8c8c8c),
                              offset: Offset(0.0, 0.0),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              color: const Color(0xffe8e8e8),
                              height: 70,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons_pageweb.actions,
                                          size: 35,
                                          color: Color(0xff4be2b9),
                                        ),
                                        Text(
                                          'ActionPower',
                                          style: TextStyle(
                                              color: Color(0xff4be2b9),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 30,
                                            width: 30,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      const Color(0xff545a6a),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(50))),
                                            child: const Icon(
                                              Icons_pageweb.plant,
                                              color: Color(0xff545a6a),
                                            )),
                                        const Text(
                                          'SeedCoins',
                                          style: TextStyle(
                                              color: Color(0xff8c8c8c),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(
                                          Icons_pageweb.users,
                                          color: Color(0xff545a6a),
                                          size: 30,
                                        ),
                                        Text(
                                          'WeSocial',
                                          style: TextStyle(
                                              color: Color(0xff8c8c8c),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons_pageweb.chat,
                                          color: Color(0xff545a6a),
                                          size: 30,
                                        ),
                                        Text(
                                          'WeChat',
                                          style: TextStyle(
                                              color: Color(0xff8c8c8c),
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.73,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                          child: Image.asset(
                                        'assets/profile.png',
                                        height: 150,
                                      )),
                                      const Text(
                                        'John Doe',
                                        style: TextStyle(
                                            color: Color(0xff636466),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        'Entrepreneur - PowerLevel 8',
                                        style: TextStyle(
                                            color: Color(0xff8c8c8c),
                                            fontSize: 12),
                                      ),
                                    ],
                                  )),
                                  Container(
                                    height: 120,
                                    width: 250,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Color(0xffdddddd),
                                            width: 1.0),
                                        top: BorderSide(
                                            color: Color(0xffdddddd),
                                            width: 1.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 50,
                                                      width: 50,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xff4be2b9),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                      child: const Icon(
                                                        Icons_pageweb.plant,
                                                        size: 40,
                                                        color:
                                                            Color(0xff4be2b9),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 30),
                                                      child: const Icon(
                                                          Icons_pageweb.plus,
                                                          size: 20,
                                                          color: Color(
                                                              0xffdddddd)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      'Current Balance',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff8c8c8c),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      '200 SeedCoins',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4be2b9),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                                alignment: Alignment.center,
                                                height: 25,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xff697999),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(50)),
                                                ),
                                                child: const Text(
                                                  'Add 50 SeedCoins',
                                                  style: TextStyle(
                                                      color: Color(0xff697999),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      width: 220,
                                      height: 80,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Your next PowerLevel',
                                                  style: TextStyle(
                                                      color: Color(0xff8c8c8c),
                                                      fontSize: 12),
                                                ),
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: 20,
                                                        width: 200,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color(
                                                              0xffF1F1F1),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xffc5c5c5),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          50)),
                                                        ),
                                                        child: Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 10),
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 90),
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xff4be2b9),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50)),
                                                          ),
                                                          child: const Text(
                                                            '250 points',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 8),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 20,
                                                          width: 20,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xff4be2b9),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                        .all(
                                                                    Radius
                                                                        .circular(
                                                                            50)),
                                                          ),
                                                          child: const Text(
                                                            '9',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff4be2b9),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Next Reward',
                                                  style: TextStyle(
                                                      color: Color(0xff8c8c8c),
                                                      fontSize: 12),
                                                ),
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: 20,
                                                        width: 200,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color(
                                                              0xffF1F1F1),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xffc5c5c5),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          50)),
                                                        ),
                                                        child: Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 10),
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 130),
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xff064072),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50)),
                                                          ),
                                                          child: const Text(
                                                            '150 points',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 8),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 20,
                                                        width: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xff064072),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                      .all(
                                                                  Radius
                                                                      .circular(
                                                                          50)),
                                                        ),
                                                        child: const Text(
                                                          '2',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff064072),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF1F1F1),
                                        border: Border.all(
                                          color: const Color(0xffc5c5c5),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(50)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: const Icon(
                                              Icons_pageweb.user,
                                              size: 20,
                                              color: Color(0xff5d6a7b),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: const Icon(
                                              Icons_pageweb.calendar,
                                              size: 20,
                                              color: Color(0xff5d6a7b),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              child: const Icon(
                                                Icons_pageweb.settings,
                                                size: 20,
                                                color: Color(0xff5d6a7b),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.9,
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, right: 40),
                    child: Column(
                      children: [
                        Container(
                          child: const Text(
                            'Explore your Personal Interests',
                            style: TextStyle(
                                color: Color(0xff2DEABC),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 140,
                                  height: 50,
                                  color: const Color(0xfff5f5f5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffa4dfcd),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: const Icon(
                                          Icons_pageweb.arrow,
                                          size: 20,
                                          color: Color(0xff595c63),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 80,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              alignment: Alignment.centerLeft,
                                              child: const Text('Growth',
                                                  style: TextStyle(
                                                      color: Color(0xff595c63),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)),
                                            ),
                                            Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 15,
                                                  color: Color(0xff4be2b9),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  width: 140,
                                  height: 50,
                                  color: const Color(0xfff5f5f5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffa4dfcd),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: const Icon(
                                          Icons_pageweb.archery,
                                          size: 25,
                                          color: Color(0xff595c63),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 80,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              alignment: Alignment.centerLeft,
                                              child: const Text('Instant',
                                                  style: TextStyle(
                                                      color: Color(0xff595c63),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)),
                                            ),
                                            Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 15,
                                                  color: Color(0xff4be2b9),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  width: 140,
                                  height: 50,
                                  color: const Color(0xfff5f5f5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffa4dfcd),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: const Icon(
                                          Icons_pageweb.hat,
                                          size: 30,
                                          color: Color(0xff595c63),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 80,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              alignment: Alignment.centerLeft,
                                              child: const Text('Lifestyle',
                                                  style: TextStyle(
                                                      color: Color(0xff595c63),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)),
                                            ),
                                            Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 15,
                                                  color: Color(0xff4be2b9),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  width: 140,
                                  height: 50,
                                  color: const Color(0xfff5f5f5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffa4dfcd),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: const Icon(
                                          Icons_pageweb.lightbulb,
                                          size: 25,
                                          color: Color(0xff595c63),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 80,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              alignment: Alignment.centerLeft,
                                              child: const Text('Inspirational',
                                                  style: TextStyle(
                                                      color: Color(0xff595c63),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)),
                                            ),
                                            Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 15,
                                                  color: Color(0xff4be2b9),
                                                ))
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  width: 140,
                                  height: 50,
                                  color: const Color(0xfff5f5f5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffa4dfcd),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: const Icon(
                                          Icons_pageweb.world,
                                          size: 25,
                                          color: Color(0xff595c63),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 80,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              alignment: Alignment.centerLeft,
                                              child: const Text('Experience',
                                                  style: TextStyle(
                                                      color: Color(0xff595c63),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)),
                                            ),
                                            Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 15,
                                                  color: Color(0xff4be2b9),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                width: 140,
                                height: 50,
                                color: const Color(0xfff5f5f5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffa4dfcd),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Icon(
                                        Icons_pageweb.hands,
                                        size: 30,
                                        color: Color(0xff595c63),
                                      ),
                                    ),
                                    Container(
                                        height: 50,
                                        width: 80,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 5),
                                              alignment: Alignment.centerLeft,
                                              child: const Text('Together',
                                                  style: TextStyle(
                                                      color: Color(0xff595c63),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12)),
                                            ),
                                            Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: const Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 15,
                                                  color: Color(0xff4be2b9),
                                                ))
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 50,
                          color: const Color(0xff4be2b9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 250),
                                child: Container(
                                  width: 300,
                                  height: 25,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.text,
                                    style: const TextStyle(
                                        color: Color(0xff8c8c8c),
                                        fontFamily: 'Ubuntu'),
                                    decoration: InputDecoration(
                                      fillColor: const Color(0xffF1F1F1),
                                      filled: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 15),
                                      labelText: 'Search...',
                                      labelStyle: const TextStyle(
                                          color: Color(0xff8c8c8c),
                                          fontSize: 14.61,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: Color(0xffc5c5c5),
                                            width: 1,
                                          )),
                                      // add padding to adjust text
                                      isDense: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Color(0xffc5c5c5),
                                          width: 1,
                                        ),
                                      ),
                                      suffixIcon: const SizedBox(
                                        height: 4,
                                        child: Icon(Icons.search,
                                            color: Color(0xff4be2b9),
                                            size: 20,
                                            textDirection: TextDirection.rtl),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: ClipRRect(
                                    child: Image.asset(
                                  'assets/icon_banner.png',
                                  height: 150,
                                )),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.61,
                          child: SingleChildScrollView(
                            child: Column(children: [
                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height: 150,
                                      color: const Color(0xff064072),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: ClipRRect(
                                                child: Image.asset(
                                              'assets/logo_design.png',
                                            )),
                                          ),
                                          Container(
                                              child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                  width: 200,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 25),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text('Logo',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        Text('Design',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ])),
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 40,
                                                      width: 40,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                      child: const Icon(
                                                        Icons
                                                            .arrow_right_rounded,
                                                        size: 40,
                                                        color:
                                                            Color(0xff064072),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                      child: const Icon(
                                                        Icons_pageweb.cube,
                                                        color:
                                                            Color(0xff064072),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons_pageweb.gift,
                                                          color:
                                                              Color(0xff064072),
                                                        ))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ))
                                        ],
                                      )),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height: 150,
                                      color: const Color(0xff4be2b9),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: ClipRRect(
                                                child: Image.asset(
                                              'assets/corporate.png',
                                            )),
                                          ),
                                          Container(
                                              child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                  width: 200,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 25),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text('Corporate',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff064072),
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        Text('Identity',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff064072),
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ])),
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 40,
                                                      width: 40,
                                                      decoration: const BoxDecoration(
                                                          color:
                                                              Color(0xff064072),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                      child: const Icon(
                                                        Icons
                                                            .arrow_right_rounded,
                                                        size: 40,
                                                        color:
                                                            Color(0xff4be2b9),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: const BoxDecoration(
                                                          color:
                                                              Color(0xff064072),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                      child: const Icon(
                                                        Icons_pageweb.cube,
                                                        color:
                                                            Color(0xff4be2b9),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xff064072),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons_pageweb.gift,
                                                          color:
                                                              Color(0xff4be2b9),
                                                        ))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ))
                                        ],
                                      ))
                                ],
                              )),
                              const SizedBox(height: 15),
                              Container(
                                  child: Column(children: [
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.33,
                                        height: 150,
                                        color: const Color(0xff4be2b9),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                  child: Image.asset(
                                                'assets/influencer.png',
                                              )),
                                            ),
                                            Container(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                    width: 200,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text('Influencer',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff064072),
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          Text('Guide',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff064072),
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ])),
                                                Container(
                                                  width: 200,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xff064072),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons
                                                              .arrow_right_rounded,
                                                          size: 40,
                                                          color:
                                                              Color(0xff4be2b9),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xff064072),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons_pageweb.cube,
                                                          color:
                                                              Color(0xff4be2b9),
                                                        ),
                                                      ),
                                                      Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: const BoxDecoration(
                                                              color: Color(
                                                                  0xff064072),
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50))),
                                                          child: const Icon(
                                                            Icons_pageweb.gift,
                                                            color: Color(
                                                                0xff4be2b9),
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ))
                                          ],
                                        )),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.33,
                                        height: 150,
                                        color: const Color(0xff064072),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                  child: Image.asset(
                                                'assets/project.png',
                                              )),
                                            ),
                                            Container(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                    width: 200,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text('Project',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          Text('Management',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ])),
                                                Container(
                                                  width: 200,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons
                                                              .arrow_right_rounded,
                                                          size: 40,
                                                          color:
                                                              Color(0xff064072),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons_pageweb.cube,
                                                          color:
                                                              Color(0xff064072),
                                                        ),
                                                      ),
                                                      Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: const BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50))),
                                                          child: const Icon(
                                                            Icons_pageweb.gift,
                                                            color: Color(
                                                                0xff064072),
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ))
                                          ],
                                        )),
                                  ],
                                ))
                              ])),
                              const SizedBox(height: 15),
                              Container(
                                  child: Column(children: [
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.33,
                                        height: 150,
                                        color: const Color(0xff414c5e),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                  child: Image.asset(
                                                'assets/corporate.png',
                                              )),
                                            ),
                                            Container(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                    width: 200,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text('Project',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          Text('Management',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ])),
                                                Container(
                                                  width: 200,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons
                                                              .arrow_right_rounded,
                                                          size: 40,
                                                          color:
                                                              Color(0xff064072),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons_pageweb.cube,
                                                          color:
                                                              Color(0xff064072),
                                                        ),
                                                      ),
                                                      Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: const BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50))),
                                                          child: const Icon(
                                                            Icons_pageweb.gift,
                                                            color: Color(
                                                                0xff064072),
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ))
                                          ],
                                        )),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.33,
                                        height: 150,
                                        color: const Color(0xff4be2b9),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                  child: Image.asset(
                                                'assets/logo_design.png',
                                              )),
                                            ),
                                            Container(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                    width: 200,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text('Influencer',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff064072),
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          Text('Guide',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff064072),
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ])),
                                                Container(
                                                  width: 200,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xff064072),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons
                                                              .arrow_right_rounded,
                                                          size: 40,
                                                          color:
                                                              Color(0xff4be2b9),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xff064072),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            50))),
                                                        child: const Icon(
                                                          Icons_pageweb.cube,
                                                          color:
                                                              Color(0xff4be2b9),
                                                        ),
                                                      ),
                                                      Container(
                                                          height: 40,
                                                          width: 40,
                                                          decoration: const BoxDecoration(
                                                              color: Color(
                                                                  0xff064072),
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          50))),
                                                          child: const Icon(
                                                            Icons_pageweb.gift,
                                                            color: Color(
                                                                0xff4be2b9),
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ))
                                          ],
                                        )),
                                  ],
                                ))
                              ])),
                            ]),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
