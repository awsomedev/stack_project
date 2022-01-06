import 'package:flutter/material.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/app_fonts.dart';

class CelciusWidget extends StatelessWidget {
  const CelciusWidget({
    Key? key,
    required this.size,
    required this.temp,
  }) : super(key: key);
  final double size;
  final String temp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          temp,
          style: pulp(
            color: AppColor.black,
            fontSize: size,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: size / 5,
        ),
        Column(
          children: [
            SizedBox(
              height: size / 6,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'o',
                  style: pulp(
                    color: AppColor.black,
                    fontSize: size / 4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'C',
                  style: pulp(
                    color: AppColor.black,
                    fontSize: size / 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
