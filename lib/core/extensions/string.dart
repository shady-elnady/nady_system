import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension Strings on String {
  Widget translation({TextStyle? style}) => Text(tr, style: style);
}
