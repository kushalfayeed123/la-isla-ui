import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app-drawer.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'event_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabView = Container();

    return Scaffold(
      backgroundColor: AppColors.black,
      drawer: CustomAppDrawer(),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: CustomAppBar(
          showGradient: false,
          tabView: tabView,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(EVENT_PAGE_BG),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                AppColors.white.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(CAROUSEL_ITEM_1),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(CAROUSEL_ITEM_2),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(CAROUSEL_ITEM_3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(() => EventDetailsPage()),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: AppColors.black,
                    image: DecorationImage(
                      image: AssetImage(EVENT_BG_1),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.transparent.withOpacity(0.8),
                          BlendMode.dstATop),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.93,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 35.0, left: 15.0),
                            child: Text(
                              'New Year’s Eve tickets 21/22',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.9,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10.0, left: 10.0),
                            child: Text(
                              'NEON PARTY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.9,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 90,
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.07),
                        child: new CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 12.0,
                          percent: 0.19,
                          rotateLinearGradient: true,
                          backgroundColor: AppColors.white,
                          animation: true,
                          animationDuration: 1200,
                          startAngle: 0.5,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "19%",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Free",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          progressColor: AppColors.primaryPink,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0),
                decoration: BoxDecoration(
                  color: AppColors.black,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryPink,
                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                    )
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(EVENT_BG_2),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.transparent.withOpacity(0.8), BlendMode.dstATop),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.93,
                child: Container(),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.45,
                      color: AppColors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              'Capacity',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 0.9,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          new CircularPercentIndicator(
                            radius: 110.0,
                            lineWidth: 12.0,
                            percent: 0.49,
                            rotateLinearGradient: true,
                            backgroundColor: AppColors.white,
                            animation: true,
                            animationDuration: 1200,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "49%",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Free",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            progressColor: AppColors.primaryPink,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage(EVENT_BG_3),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'OFFERS',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: AppColors.white, fontSize: 26),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: AssetImage(EVENT_BG_4),
                    fit: BoxFit.cover,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 0.93,
                child: Center(
                  child: Text(
                    'NIGHT MODE',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white, fontSize: 26),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
