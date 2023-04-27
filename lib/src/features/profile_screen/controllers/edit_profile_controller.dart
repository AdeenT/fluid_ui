import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/container/container.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';

class EditProfileScreenController extends GetxController {

  final RangeValues ageValues = const RangeValues(18, 75);

  final RangeValues distanceValues = const RangeValues(1, 100);
  photos() {
    return DottedBorder(
      strokeWidth: 2,
      color: AppColor.secondary,
      dashPattern: const [9],
      radius: const Radius.circular(15),
      borderType: BorderType.RRect,
      child: JContainer(
        width: 98.23,
        borderRadius: BorderRadius.circular(15),
        height: 150,
        color: const Color.fromARGB(255, 246, 239, 255),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_rounded,
              size: 35,
              color: AppColor.secondary,
            ),
          ),
        ),
      ),
    );
  }

  filters(
    text,
  ) {
    return ChoiceChip(
      label: text,
      selectedColor: Colors.white,
      selected: true,
      side: const BorderSide(color: AppColor.primary),
    );
  }

  dropDownMenu() {
    return DropdownButtonFormField(
      hint: const Text('Please select...'),
      items: const [],
      onChanged: (value) {},
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      iconSize: 30,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColor.primary),
        ),
      ),
    );
  }

  ageSlider() {
    return RangeSlider(
      values: ageValues,
      min: 18,
      max: 75,
      divisions: 3,
      inactiveColor: AppColor.slider1,
      activeColor: AppColor.primary,
      labels: const RangeLabels('0', '75'),
      onChanged: (RangeValues values) {
        update();
      },
    );
  }

  distanceSlider() {
    return RangeSlider(
      values: distanceValues,
      min: 1,
      max: 100,
      divisions: 10,
      inactiveColor: AppColor.slider2,
      activeColor: AppColor.slider2Highlight,
      labels: const RangeLabels('0', '100'),
      onChanged: (RangeValues values) {
        update();
      },
    );
  }
}
