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
                      children: [
                        Expanded(
                          child: BlurContainer(
                            color: AppColor.lightGrey,
                            child: Padding(
                              padding: AppConst.boxPadding,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Home\nTemparature',
                                    style: pulp(
                                      color: AppColor.black,
                                      fontSize: 18,
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
                                    onChanged: (v) {},
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
                          ),
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
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: BlurContainer(
                              color: AppColor.blurColor,
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
            )
          ],
        ),
      ),
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
        BlurContainer(
          height: 50,
          width: 50,
          color: AppColor.grey.withOpacity(.2),
          child: const Icon(
            Icons.add,
            color: AppColor.lightGrey,
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
