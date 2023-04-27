import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';

class ProfileScreenController extends GetxController {
  bool isSwitched = false;
  bool isDarkModeOn = false;
  profileListTile(Icon leadingIcon, String title, IconButton trailingIcon) {
    return ListTile(
      leading: leadingIcon,
      title: JText(
        text: title,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade600,
      ),
      trailing: trailingIcon,
    );
  }

  profileToggleOption(title, trailing) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: ListTile(
        title: JText(
          text: title,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade600,
        ),
        trailing: trailing,
      ),
    );
  }

  pushNotification(activated) {
    return CupertinoSwitch(
      value: isSwitched,
      onChanged: (value) {
        isSwitched = value;
        update();
        activated;
      },
      activeColor :AppColor.primary, 
    );
  }

  darkMode(activated) {
    return CupertinoSwitch(
      value: isDarkModeOn,
      onChanged: (value) {
        isDarkModeOn = value;
        update();
        activated;
      },
      activeColor: AppColor.primary,
    );
  }
}
