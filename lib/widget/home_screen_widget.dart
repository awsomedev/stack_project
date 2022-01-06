import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/app_const.dart';
import 'package:stack/Constants/app_fonts.dart';
import 'package:stack/Constants/screen_size.dart';
import 'package:stack/Controller/switch_controller.dart';
import 'package:stack/Screens/bottom_sheet.dart';
import 'package:stack/widget/blur_container.dart';

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
              builder: (context) => AppBottomSheet(),
            );
          },
          child: BlurContainer(
            height: 50,
            width: 50,
            color: AppColor.blurColor,
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

class SmartTV extends StatelessWidget {
  SmartTV({
    Key? key,
  }) : super(key: key);
  final SwitchController switchController = Get.find<SwitchController>();

  @override
  Widget build(BuildContext context) {
    return BlurContainer(
      color: AppColor.blurColor,
      child: Padding(
        padding: AppConst.boxPadding(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Smart TV',
                      style: pulp(
                        color: AppColor.lightGrey,
                        fontSize: height(context) / 45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.lightGrey,
                      size: height(context) / 45,
                    )
                  ],
                ),
                Text(
                  'Samsung UA55 4AC',
                  style: pulp(
                    color: AppColor.lightGrey.withOpacity(.5),
                    fontWeight: FontWeight.w400,
                    fontSize: height(context) / 55,
                  ),
                ),
              ],
            ),
            Obx(
              () => CupertinoSwitch(
                value: switchController.smartSwitch.value,
                activeColor: AppColor.orange,
                trackColor: AppColor.lightGrey.withOpacity(.3),
                onChanged: (v) {
                  switchController.smartSwitch.value = v;
                },
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
