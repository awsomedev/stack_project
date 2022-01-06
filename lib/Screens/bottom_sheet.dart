import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/app_const.dart';
import 'package:stack/Constants/app_fonts.dart';
import 'package:stack/Constants/app_images.dart';
import 'package:stack/Constants/screen_size.dart';
import 'package:stack/Screens/temperature_widget.dart';
import 'package:stack/widget/blur_container.dart';
import 'package:stack/widget/celcius.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: AppConst.screenPadding,
            height: height(context) * .85,
            decoration: const BoxDecoration(
              color: AppColor.lightGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height(context) / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Living Room',
                          style: pulp(
                            color: AppColor.black,
                            fontWeight: FontWeight.w900,
                            fontSize: height(context) / 35,
                          ),
                        ),
                        Text(
                          'Home Temperature',
                          style: pulp(
                            color: AppColor.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: height(context) / 45,
                          ),
                        ),
                      ],
                    ),
                    CupertinoSwitch(
                      value: true,
                      activeColor: AppColor.orange,
                      trackColor: AppColor.lightGrey.withOpacity(.3),
                      onChanged: (v) {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                const TemperatureWidget(),
                SizedBox(
                  height: height(context) / 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current temp',
                          style: pulp(
                            color: AppColor.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: height(context) / 45,
                          ),
                        ),
                        SizedBox(
                          height: height(context) / 75,
                        ),
                        CelciusWidget(size: height(context) / 30, temp: '24'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Current humidity',
                          style: pulp(
                            color: AppColor.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: height(context) / 45,
                          ),
                        ),
                        SizedBox(
                          height: height(context) / 75,
                        ),
                        Text(
                          '54%',
                          style: pulp(
                            color: AppColor.black,
                            fontWeight: FontWeight.w600,
                            fontSize: height(context) / 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height(context) / 45,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                child: BlurContainer(
                                  color: AppColor.grey.withOpacity(.15),
                                  child: Padding(
                                    padding: AppConst.boxPadding(context),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SmallBoxHeading(
                                          title: 'Heating',
                                          color: AppColor.orange,
                                        ),
                                        CelciusWidget(
                                            size: height(context) / 30,
                                            temp: '24'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: BlurContainer(
                                  color: AppColor.grey.withOpacity(.15),
                                  child: Padding(
                                    padding: AppConst.boxPadding(context),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SmallBoxHeading(
                                          title: 'Cooling',
                                          color: Colors.blue,
                                        ),
                                        CelciusWidget(
                                            size: height(context) / 30,
                                            temp: '18'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: BlurContainer(
                                  color: AppColor.grey.withOpacity(.15),
                                  child: Padding(
                                    padding: AppConst.boxPadding(context),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SmallBoxHeading(
                                          title: 'Airwave',
                                          color: Colors.transparent,
                                        ),
                                        CelciusWidget(
                                          size: height(context) / 30,
                                          temp: '20',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                child: BlurContainer(
                                  color: AppColor.grey.withOpacity(.15),
                                  child: Padding(
                                    padding: AppConst.smallBoxPadding(context),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Fan',
                                              style: pulp(
                                                color: AppColor.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: height(context) / 45,
                                              ),
                                            ),
                                            Text(
                                              'Off',
                                              style: pulp(
                                                  fontSize:
                                                      height(context) / 40,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Opacity(
                                          opacity: .3,
                                          child: Image.asset(
                                            AppImages.fan,
                                            height: height(context) * .03,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: BlurContainer(
                                  color: AppColor.grey.withOpacity(.15),
                                  child: Padding(
                                    padding: AppConst.smallBoxPadding(context),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Cooler',
                                              style: pulp(
                                                color: AppColor.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: height(context) / 45,
                                              ),
                                            ),
                                            Text(
                                              'Off',
                                              style: pulp(
                                                  fontSize:
                                                      height(context) / 40,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Opacity(
                                          opacity: .3,
                                          child: Image.asset(
                                            AppImages.snow,
                                            height: height(context) * .04,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SmallBoxHeading extends StatelessWidget {
  const SmallBoxHeading({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: pulp(
            color: AppColor.black,
            fontWeight: FontWeight.w600,
            fontSize: height(context) / 45,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 3,
          backgroundColor: color,
        )
      ],
    );
  }
}
