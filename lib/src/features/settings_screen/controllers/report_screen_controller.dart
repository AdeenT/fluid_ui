import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';

class ReportScreenController extends GetxController {
  reportIntro(String heading, String details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JText(
          text: heading,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        JSpace.vertical(15),
        JText(
          text: details,
          letterSpacing: 0.25,
          fontSize: 14,
          fontWeight: FontWeight.w300,
        )
      ],
    );
  }

  reportingProbs(String problem){
    return  JText(
          text: problem,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        );
  }
}
