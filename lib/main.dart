// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
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
                            color: Color(0xff18318F),
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        ' your dreams',
                        style: TextStyle(
                            color: Color(0xff2DEABC),
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
                                  color: Color(0xff2DEABC),
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
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              color: const Color(0xffF1F1F1),
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
                                      children: [
                                        ClipRRect(
                                            child: Image.asset(
                                          'assets/actions.png',
                                          height: 35,
                                        )),
                                        const Text(
                                          'ActionPower',
                                          style: TextStyle(
                                              color: Color(0xff2DEABC),
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
                                        ClipRRect(
                                            child: Image.asset(
                                          'assets/plant.png',
                                          height: 30,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                            child: Image.asset(
                                          'assets/users.png',
                                          height: 20,
                                        )),
                                        const Text(
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
                                      children: [
                                        ClipRRect(
                                            child: Image.asset(
                                          'assets/chat.png',
                                          height: 25,
                                        )),
                                        const Text(
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
                            )
                          ],
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: Column(
                      children: [],
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
