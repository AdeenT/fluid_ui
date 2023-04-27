import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/controllers/privacy_policy_controller.dart';

class PrivacyPolicy extends StatelessWidget {
  PrivacyPolicy({super.key});
  final controller = Get.put(PrivacyPolicyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const JText(
          text: "Privacy Policy",
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: AppColor.primary,
            ),
            onPressed: () {
              Get.back();
            },
          ),
      ),
      body: GetBuilder<PrivacyPolicyController>(
        builder: (controller) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSpace.vertical(40),
                controller.heading('1. Types of data we collect'),
                JSpace.vertical(20),
                controller.content(
                    'We may collect personal information from you, such as your name, email address, location, and other details you provide when you create an account or use our app. We may also collect data on your preferences, interests, and behaviors as you use our app.'),
                JSpace.vertical(40),
                controller.heading('2. Types of data we collect'),
                JSpace.vertical(20),
                controller.content(
                    'We use the information we collect to improve our app and provide you with a better user experience. We may also use your information to personalize your experience, to send you marketing communications, and to communicate with you about your account.'),
                JSpace.vertical(40),
                controller.heading('3. Types of data we collect'),
                JSpace.vertical(20),
                controller.content(
                    'We do not sell or rent your personal information to third parties. However, we may share your information with third-party service providers who help us provide our services, such as payment processors or analytics providers.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
