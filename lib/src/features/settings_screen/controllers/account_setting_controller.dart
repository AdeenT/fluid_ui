import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';

class AccountSettingController extends GetxController {
  heading(String heading) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: JText(
        text: heading,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    );
  }

  contents(String content, {void Function()? onTap}) {
    return ListTile(
      title: JText(
        text: content,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      onTap: onTap,
    );
  }
}
