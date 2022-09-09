import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);
  static int breakPointMobile = 768;

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= breakPointMobile;
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                'logo.png',
                height: 50,
              ),
              isScreenWide
                  ? Row(
                      children: const [
                        Text(
                          'wake up',
                          style: TextStyle(
                              color: Color(0xff064072),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' your dreams',
                          style: TextStyle(
                              color: Color(0xff4be2b9),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  : const SizedBox()
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
              SizedBox(
                width: isScreenWide ? 250 : 150,
                height: 25,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                      color: Color(0xff8c8c8c), fontFamily: 'Ubuntu'),
                  decoration: InputDecoration(
                    fillColor: const Color(0xffF1F1F1),
                    filled: true,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
              SizedBox(
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: Image.asset(
                          'assets/message.png',
                          height: 20,
                          width: 20,
                        )),
                    const SizedBox(width: 5),
                    ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: Image.asset(
                          'assets/email.png',
                          height: 20,
                          width: 20,
                        )),
                    const SizedBox(width: 5),
                    ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: Image.asset(
                          'assets/notifications.png',
                          height: 20,
                          width: 20,
                        )),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              isScreenWide
                  ? Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
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
                    )
                  : const SizedBox(),
            ],
          )
        ],
      ),
    );
  }
}
