import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/app_const.dart';
import 'package:stack/Constants/app_fonts.dart';
import 'package:stack/Constants/app_images.dart';
import 'package:stack/Constants/screen_size.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height(context),
        width: width(context),
        padding: AppConst.screenPadding,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.bacgroundImage), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const TopSection(
              name: 'Chris Cooper',
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Living room',
              style: pulp(
                color: AppColor.lightGrey.withOpacity(.9),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: const [
                        Expanded(
                          child: TemperatureTile(),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: PlugTile(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: BlurContainer(
                              color: AppColor.blurColor,
                              child: Padding(
                                padding: AppConst.boxPadding,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: const DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      AppImages.musicImage1))),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Midnight Love',
                                              style: pulp(
                                                color: AppColor.lightGrey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              'Girl in red',
                                              style: pulp(
                                                color: AppColor.lightGrey
                                                    .withOpacity(.5),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          Icons.navigate_before,
                                          color: AppColor.lightGrey,
                                          size: 30,
                                        ),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: const Icon(
                                            Icons.pause,
                                            color: AppColor.lightGrey,
                                            size: 30,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColor.lightGrey
                                                .withOpacity(.3),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.navigate_next,
                                          color: AppColor.lightGrey,
                                          size: 30,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: BlurContainer(
                              color: AppColor.blurColor,
                              child: Padding(
                                padding: AppConst.boxPadding,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Smart TV',
                                              style: pulp(
                                                color: AppColor.lightGrey,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              color: AppColor.lightGrey,
                                              size: 18,
                                            )
                                          ],
                                        ),
                                        Text(
                                          'Samsung UA55 4AC',
                                          style: pulp(
                                            color: AppColor.lightGrey
                                                .withOpacity(.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    CupertinoSwitch(
                                      value: true,
                                      activeColor: AppColor.orange,
                                      trackColor:
                                          AppColor.lightGrey.withOpacity(.3),
                                      onChanged: (v) {},
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Statistics',
                  style: pulp(
                    color: AppColor.lightGrey.withOpacity(.9),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Months',
                  style: pulp(
                    color: AppColor.lightGrey.withOpacity(.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            BlurContainer(
              height: 170,
              width: double.infinity,
              color: AppColor.blurColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Elictricity Usage',
                          style: pulp(
                            color: AppColor.lightGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.lightGrey,
                          size: 18,
                        )
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Bar(
                            top: 70,
                            bottom: 10,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                          const Bar(
                            top: 30,
                            bottom: 30,
                            color: AppColor.lightGrey,
                          ),
                          Bar(
                            top: 60,
                            bottom: 0,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                          const Bar(
                              top: 70, bottom: 20, color: AppColor.lightGrey),
                          Bar(
                            top: 70,
                            bottom: 10,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                          const Bar(
                            top: 80,
                            bottom: 10,
                            color: AppColor.lightGrey,
                          ),
                          Bar(
                            top: 20,
                            bottom: 0,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                          const Bar(
                            top: 70,
                            bottom: 10,
                            color: AppColor.lightGrey,
                          ),
                          const Bar(
                            top: 25,
                            bottom: 5,
                            color: AppColor.lightGrey,
                          ),
                          Bar(
                            top: 70,
                            bottom: 30,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                          const Bar(
                            top: 60,
                            bottom: 20,
                            color: AppColor.lightGrey,
                          ),
                          Bar(
                            top: 60,
                            bottom: 20,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                          const Bar(
                            top: 50,
                            bottom: 10,
                            color: AppColor.lightGrey,
                          ),
                          Bar(
                            top: 20,
                            bottom: 0,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                          const Bar(
                            top: 50,
                            bottom: 30,
                            color: AppColor.lightGrey,
                          ),
                          Bar(
                            top: 60,
                            bottom: 30,
                            color: AppColor.lightGrey.withOpacity(.4),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bar extends StatelessWidget {
  const Bar(
      {Key? key, required this.bottom, required this.color, required this.top})
      : super(key: key);
  final double top;
  final double bottom;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: top,
        ),
        Expanded(
          child: Container(
            width: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: bottom == 0
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))
                  : BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
          height: bottom,
        ),
      ],
    );
  }
}

class PlugTile extends StatelessWidget {
  const PlugTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurContainer(
      color: AppColor.blurColor,
      child: Padding(
        padding: AppConst.boxPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plug Wall',
                  style: pulp(
                    color: AppColor.lightGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.lightGrey,
                  size: 18,
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BulletPoints(
                    content: 'Macbook Pro',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BulletPoints(
                    content: 'HomePod',
                    isActive: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BulletPoints(
                    content: 'PlayStation 5',
                    isActive: true,
                  ),
                ],
              ),
            ),
            CupertinoSwitch(
              value: false,
              activeColor: AppColor.orange,
              trackColor: AppColor.lightGrey.withOpacity(.3),
              onChanged: (v) {},
            )
          ],
        ),
      ),
    );
  }
}

class TemperatureTile extends StatelessWidget {
  const TemperatureTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurContainer(
      color: AppColor.lightGrey,
      child: Padding(
        padding: AppConst.boxPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home\nTemparature',
              style: pulp(
                color: AppColor.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '23',
              style: pulp(
                color: AppColor.black,
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
            ),
            CupertinoSwitch(
              value: true,
              activeColor: AppColor.orange,
              trackColor: AppColor.lightGrey.withOpacity(.3),
              onChanged: (v) {},
            )
          ],
        ),
      ),
    );
  }
}

class BulletPoints extends StatelessWidget {
  const BulletPoints({Key? key, required this.content, this.isActive = true})
      : super(key: key);

  final String content;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: AppColor.lightGrey,
          radius: 3,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          content,
          style: pulp(
            color: AppColor.lightGrey.withOpacity(.7),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: pulp(
                color: AppColor.lightGrey.withOpacity(.6),
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              name,
              style: pulp(
                color: AppColor.lightGrey,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            showBottomSheet(
              context: context,
              backgroundColor: Colors.black.withOpacity(.5),
              builder: (context) => SizedBox(
                height: height(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
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
                          Row(
                            children: [
                              Text(
                                'Living Room',
                                style: pulp(
                                  color: AppColor.lightGrey.withOpacity(.6),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          child: BlurContainer(
            height: 50,
            width: 50,
            color: AppColor.grey.withOpacity(.2),
            child: const Icon(
              Icons.add,
              color: AppColor.lightGrey,
            ),
          ),
        )
      ],
    );
  }
}

class BlurContainer extends StatelessWidget {
  const BlurContainer(
      {Key? key, this.color, this.height, this.width, this.child})
      : super(key: key);
  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: child,
        ),
      ),
    );
  }
}
