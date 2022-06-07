import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'global.dart';

BoxDecoration boxImage({
  String? image,
}) =>
    BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image ?? ImagePath().one),
        fit: BoxFit.cover,
      ),
    );

//
SvgPicture logoSVG({
  String? svg,
  width = 150,
}) =>
    SvgPicture.asset(
      svg ?? ImagePath().logoLight,
      width: width,
      placeholderBuilder: (BuildContext context) =>
          const CircularProgressIndicator(),
    );
