import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/app_const.dart';
import 'package:stack/Constants/app_fonts.dart';
import 'package:stack/Constants/app_images.dart';
import 'package:stack/Constants/screen_size.dart';
import 'package:stack/Controller/switch_controller.dart';
import 'package:stack/Screens/bottom_sheet.dart';
import 'package:stack/widget/blur_container.dart';
import 'package:stack/widget/home_page_tiles.dart';
import 'package:stack/widget/home_screen_widget.dart';
import 'package:stack/widget/music_player.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  SwitchController switchController = Get.put(SwitchController());

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
            SizedBox(
              height: height(context) / 20,
            ),
            const TopSection(
              name: 'Chris Cooper',
            ),
            SizedBox(
              height: height(context) / 30,
            ),
            Text(
              'Living room',
              style: pulp(
                color: AppColor.lightGrey.withOpacity(.9),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: height(context) / 45,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          child: TemperatureTile(),
                        ),
                        const SizedBox(
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
                            child: MusicPlayer(),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: SmartTV(),
                          )
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: height(context) / 37,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Statistics',
                  style: pulp(
                    color: AppColor.lightGrey.withOpacity(.9),
                    fontWeight: FontWeight.w600,
                    fontSize: height(context) / 45,
                  ),
                ),
                Text(
                  'Months',
                  style: pulp(
                    color: AppColor.lightGrey.withOpacity(.6),
                    fontWeight: FontWeight.w600,
                    fontSize: height(context) / 45,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height(context) / 37,
            ),
            const ExlictricityTile()
          ],
        ),
      ),
    );
  }
}
