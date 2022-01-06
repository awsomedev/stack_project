import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/app_const.dart';
import 'package:stack/Constants/app_fonts.dart';
import 'package:stack/Constants/screen_size.dart';
import 'package:stack/widget/blur_container.dart';
import 'package:stack/widget/celcius.dart';
import 'package:stack/widget/home_screen_widget.dart';

class ExlictricityTile extends StatelessWidget {
  const ExlictricityTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurContainer(
      height: height(context) / 5,
      width: double.infinity,
      color: AppColor.blurColor,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
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
                  const Bar(top: 70, bottom: 20, color: AppColor.lightGrey),
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
        padding: AppConst.boxPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plug Wall',
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
        padding: AppConst.boxPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Home\nTemparature',
              style: pulp(
                color: AppColor.black,
                fontSize: height(context) / 45,
                fontWeight: FontWeight.w600,
              ),
            ),
            CelciusWidget(
              size: height(context) / 15,
              temp: '23',
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
        CircleAvatar(
          backgroundColor: !isActive
              ? AppColor.lightGrey.withOpacity(.3)
              : AppColor.lightGrey,
          radius: 3,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          content,
          style: pulp(
            color: AppColor.lightGrey.withOpacity(.7),
            fontSize: height(context) / 50,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
