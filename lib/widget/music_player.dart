import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/app_const.dart';
import 'package:stack/Constants/app_fonts.dart';
import 'package:stack/Constants/app_images.dart';
import 'package:stack/Constants/screen_size.dart';
import 'package:stack/Controller/audio_controller.dart';
import 'package:stack/widget/blur_container.dart';

class MusicPlayer extends StatelessWidget {
  MusicPlayer({
    Key? key,
  }) : super(key: key);

  AudioPlayerController audioController = Get.put(AudioPlayerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BlurContainer(
        color: AppColor.blurColor,
        child: Padding(
          padding: AppConst.boxPadding(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: height(context) / 20,
                    width: height(context) / 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                audioController.selectedMusic.value.image))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          audioController.selectedMusic.value.title,
                          overflow: TextOverflow.ellipsis,
                          style: pulp(
                            color: AppColor.lightGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: height(context) / 60,
                          ),
                        ),
                        Text(
                          audioController.selectedMusic.value.subTitle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: pulp(
                            color: AppColor.lightGrey.withOpacity(.5),
                            fontWeight: FontWeight.w400,
                            fontSize: height(context) / 63,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: audioController.change,
                    child: Icon(
                      Icons.skip_previous,
                      color: AppColor.lightGrey,
                      size: height(context) / 25,
                    ),
                  ),
                  GestureDetector(
                    onTap: audioController.start,
                    child: Container(
                      height: height(context) / 16,
                      width: height(context) / 16,
                      child: Icon(
                        audioController.isPlaying.value
                            ? Icons.pause
                            : Icons.play_arrow,
                        color: AppColor.lightGrey,
                        size: height(context) / 25,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.lightGrey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: audioController.change,
                    child: Icon(
                      Icons.skip_next,
                      color: AppColor.lightGrey,
                      size: height(context) / 25,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
