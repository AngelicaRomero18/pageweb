import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageweb/common/icons_pageweb_icons.dart';
import 'package:pageweb/models/course.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class Coursers extends StatefulWidget {
  const Coursers({Key? key}) : super(key: key);

  @override
  _CoursersState createState() => _CoursersState();
}

class _CoursersState extends State<Coursers> {
  static int breakPointMobile = 768;
  List<Course> listCoursers = [
    Course.fromJson({
      "title": "Logo Design",
      "backgroundColor": const Color(0xff064072),
      "iconColor": const Color(0xff064072),
      "backgroundIconColor": Colors.white,
      "image": "assets/logo_design.png"
    }),
    Course.fromJson({
      "title": "Corporate Identity",
      "backgroundColor": const Color(0xff4be2b9),
      "iconColor": const Color(0xff4be2b9),
      "backgroundIconColor": const Color(0xff064072),
      "image": "assets/corporate.png"
    }),
    Course.fromJson({
      "title": "Influencer Guide",
      "backgroundColor": const Color(0xff4be2b9),
      "iconColor": const Color(0xff4be2b9),
      "backgroundIconColor": const Color(0xff064072),
      "image": "assets/influencer.png"
    }),
    Course.fromJson({
      "title": "Project Management",
      "backgroundColor": const Color(0xff064072),
      "iconColor": const Color(0xff064072),
      "backgroundIconColor": Colors.white,
      "image": "assets/corporate.png"
    }),
    Course.fromJson({
      "title": "Content Writer",
      "backgroundColor": const Color(0xff414C5E),
      "iconColor": const Color(0xff414C5E),
      "backgroundIconColor": Colors.white,
      "image": "assets/corporate.png"
    }),
    Course.fromJson({
      "title": "Experimental Illustration",
      "backgroundColor": const Color(0xff4be2b9),
      "iconColor": const Color(0xff4be2b9),
      "backgroundIconColor": const Color(0xff064072),
      "image": "assets/logo_design.png"
    }),
  ];

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= breakPointMobile;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Explore your Personal Interests',
            style: TextStyle(
                color: Color(0xff2DEABC),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 140,
                    height: 50,
                    color: const Color(0xfff5f5f5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              color: Color(0xffa4dfcd),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons_pageweb.arrow,
                            size: 20,
                            color: Color(0xff595c63),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                alignment: Alignment.centerLeft,
                                child: const Text('Growth',
                                    style: TextStyle(
                                        color: Color(0xff595c63),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              color: Color(0xffa4dfcd),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                alignment: Alignment.centerLeft,
                                child: const Text('Instant',
                                    style: TextStyle(
                                        color: Color(0xff595c63),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              color: Color(0xffa4dfcd),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons_pageweb.hat,
                            size: 30,
                            color: Color(0xff595c63),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                alignment: Alignment.centerLeft,
                                child: const Text('Lifestyle',
                                    style: TextStyle(
                                        color: Color(0xff595c63),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              color: Color(0xffa4dfcd),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons_pageweb.lightbulb,
                            size: 25,
                            color: Color(0xff595c63),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                alignment: Alignment.centerLeft,
                                child: const Text('Inspirational',
                                    style: TextStyle(
                                        color: Color(0xff595c63),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                              color: Color(0xffa4dfcd),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons_pageweb.world,
                            size: 25,
                            color: Color(0xff595c63),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                alignment: Alignment.centerLeft,
                                child: const Text('Experience',
                                    style: TextStyle(
                                        color: Color(0xff595c63),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                            color: Color(0xffa4dfcd),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Icon(
                          Icons_pageweb.hands,
                          size: 30,
                          color: Color(0xff595c63),
                        ),
                      ),
                      SizedBox(
                          height: 50,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                alignment: Alignment.centerLeft,
                                child: const Text('Together',
                                    style: TextStyle(
                                        color: Color(0xff595c63),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
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
          )),
          const SizedBox(height: 10),
          Container(
            height: 50,
            color: const Color(0xff4be2b9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: isScreenWide ? 300 : 200,
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
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                SizedBox(
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
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ResponsiveGridList(
                  minItemWidth:
                      400, // The minimum item width (can be smaller, if the layout constraints are smaller)
                  minItemsPerRow:
                      1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                  maxItemsPerRow: 2,
                  rowMainAxisAlignment: MainAxisAlignment
                      .center, // The maximum items to show in a single row. Can be useful on large screens
                  children: listCoursers
                      .map<Widget>((Course course) => Container(
                          height: 150,
                          color: course.backgroundColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  child: Image.asset(
                                course.image,
                              )),
                              Expanded(
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(course.title,
                                                style: TextStyle(
                                                  color: course
                                                      .backgroundIconColor,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  overflow: TextOverflow.clip,
                                                )),
                                            SizedBox(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color: course
                                                          .backgroundIconColor,
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  50))),
                                                  child: Icon(
                                                    Icons.arrow_right_rounded,
                                                    size: 40,
                                                    color: course.iconColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color: course
                                                          .backgroundIconColor,
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  50))),
                                                  child: Icon(
                                                    Icons_pageweb.cube,
                                                    color: course.iconColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color: course
                                                            .backgroundIconColor,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    50))),
                                                    child: Icon(
                                                      Icons_pageweb.gift,
                                                      color: course.iconColor,
                                                    ))
                                              ],
                                            ))
                                          ])))
                            ],
                          )))
                      .toList() // The list of widgets in the list
                  ),
            ),
          )
        ],
      ),
    );
  }
}
