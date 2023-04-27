import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';

class ResetPasswordController extends GetxController {
  final currentController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  buildTextField(
    String heading,
    TextEditingController controller,
    hint,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JText(
            text: heading,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          JSpace.vertical(18),
          TextFormField(
            obscureText: true,
            controller: controller,
            decoration: InputDecoration(hintText: hint),
          ),
        ],
      ),
    );
  }
}
