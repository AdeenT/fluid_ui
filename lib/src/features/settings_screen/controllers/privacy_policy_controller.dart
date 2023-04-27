import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';

class PrivacyPolicyController extends GetxController {
  heading(String heading) {
    return JText(
      text: heading,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      textAlign: TextAlign.start,
    );
  }

  content(String content) {
    return JText(
      text: content,
      fontSize: 14,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w400,
    );
  }
}
