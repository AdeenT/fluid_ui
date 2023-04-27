import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';

class TermsAndConditionsController extends GetxController {
  contents(String heading, details) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JText(
            text: heading,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          JSpace.vertical(20),
          JText(
            text: details,
            letterSpacing: 0.25,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
