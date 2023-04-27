import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/buttons/button.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/controllers/reset_password_controller.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  final controller = Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const JText(
          text: "Reset Password",
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: AppColor.primary,
        ),
      ),
      body: GetBuilder<ResetPasswordController>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JSpace.vertical(40),
              controller.buildTextField('Current password',
                  controller.currentController, 'current-password'),
              JSpace.vertical(25),
              controller.buildTextField('Current password',
                  controller.newPasswordController, 'current-password'),
              JSpace.vertical(25),
              controller.buildTextField('Current password',
                  controller.confirmPasswordController, 'current-password'),
              JSpace.vertical(80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: JButton(
                  onPress: () {},
                  text: 'UPDATE',
                  borderRadius: 15,
                  height: 52.0,
                  width: 318.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
