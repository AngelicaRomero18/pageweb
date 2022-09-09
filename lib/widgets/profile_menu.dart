import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageweb/common/icons_pageweb_icons.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);
  static int breakPointMobile = 768;

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= breakPointMobile;
    return Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
        width: isScreenWide
            ? MediaQuery.of(context).size.width * 0.3
            : MediaQuery.of(context).size.width,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons_pageweb.actions,
                            size: 35,
                            color: Color(0xff4be2b9),
                          ),
                          Text(
                            'ActionPower',
                            style: TextStyle(
                                color: Color(0xff4be2b9), fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff545a6a),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                              child: const Icon(
                                Icons_pageweb.plant,
                                color: Color(0xff545a6a),
                              )),
                          const Text(
                            'SeedCoins',
                            style: TextStyle(
                                color: Color(0xff8c8c8c), fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons_pageweb.users,
                            color: Color(0xff545a6a),
                            size: 30,
                          ),
                          Text(
                            'WeSocial',
                            style: TextStyle(
                                color: Color(0xff8c8c8c), fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons_pageweb.chat,
                            color: Color(0xff545a6a),
                            size: 30,
                          ),
                          Text(
                            'WeChat',
                            style: TextStyle(
                                color: Color(0xff8c8c8c), fontSize: 12),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          style:
                              TextStyle(color: Color(0xff8c8c8c), fontSize: 12),
                        ),
                      ],
                    )),
                    Container(
                      height: 120,
                      width: 250,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Color(0xffdddddd), width: 1.0),
                          top: BorderSide(color: Color(0xffdddddd), width: 1.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0xff4be2b9),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50))),
                                        child: const Icon(
                                          Icons_pageweb.plant,
                                          size: 40,
                                          color: Color(0xff4be2b9),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 30),
                                        child: const Icon(Icons_pageweb.plus,
                                            size: 20, color: Color(0xffdddddd)),
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
                                          color: Color(0xff8c8c8c),
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '200 SeedCoins',
                                        style: TextStyle(
                                            color: Color(0xff4be2b9),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
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
                                      color: const Color(0xff697999),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                  ),
                                  child: const Text(
                                    'Add 50 SeedCoins',
                                    style: TextStyle(
                                        color: Color(0xff697999),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Your next PowerLevel',
                                    style: TextStyle(
                                        color: Color(0xff8c8c8c), fontSize: 12),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffF1F1F1),
                                            border: Border.all(
                                              color: const Color(0xffc5c5c5),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50)),
                                          ),
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            margin: const EdgeInsets.only(
                                                right: 90),
                                            decoration: const BoxDecoration(
                                              color: Color(0xff4be2b9),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                            ),
                                            child: const Text(
                                              '250 points',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            alignment: Alignment.center,
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff4be2b9),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(50)),
                                            ),
                                            child: const Text(
                                              '9',
                                              style: TextStyle(
                                                  color: Color(0xff4be2b9),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Next Reward',
                                    style: TextStyle(
                                        color: Color(0xff8c8c8c), fontSize: 12),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffF1F1F1),
                                            border: Border.all(
                                              color: const Color(0xffc5c5c5),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50)),
                                          ),
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            margin: const EdgeInsets.only(
                                                right: 130),
                                            decoration: const BoxDecoration(
                                              color: Color(0xff064072),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                            ),
                                            child: const Text(
                                              '150 points',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: const Color(0xff064072),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50)),
                                          ),
                                          child: const Text(
                                            '2',
                                            style: TextStyle(
                                                color: Color(0xff064072),
                                                fontWeight: FontWeight.bold,
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              child: const Icon(
                                Icons_pageweb.settings,
                                size: 20,
                                color: Color(0xff5d6a7b),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
