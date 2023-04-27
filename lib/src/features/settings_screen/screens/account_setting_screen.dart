import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/controllers/account_setting_controller.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/screens/community_guidleines.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/screens/privacy_policy.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/screens/safety_tips.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/screens/terms_and_conditions.dart';
import 'package:kolkata_machine_task/src/utils/logger.dart';

class AccountSettingScreen extends StatelessWidget {
  AccountSettingScreen({super.key});

  final controller = Get.put(AccountSettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const JText(
          text: 'Account Settings',
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),
        backgroundColor: AppColor.primary,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 40,
            ),
            onPressed: () {
              Get.back();
            }),
        toolbarHeight: 102.0,
      ),
      body: GetBuilder<AccountSettingController>(
        builder: (controller) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSpace.vertical(32),
                controller.heading('Account Activity'),
                JSpace.vertical(10),
                const Divider(),
                controller.contents(
                  'Subscription plan',
                ),
                const Divider(),
                controller.contents(
                  'Blocked List',
                ),
                const Divider(),
                controller.contents(
                  'Suggestions',
                ),
                const Divider(),
                controller.contents(
                  'Pause my account',
                ),
                const Divider(),
                controller.contents(
                  'delete my account',
                ),
                JSpace.vertical(52),
                controller.heading('Notifications'),
                JSpace.vertical(10),
                const Divider(),
                controller.contents(
                  'Message notifications',
                ),
                const Divider(),
                controller.contents(
                  'Match notifications',
                ),
                const Divider(),
                controller.contents(
                  'Other notifications',
                ),
                JSpace.vertical(52),
                controller.heading('Community'),
                JSpace.vertical(10),
                const Divider(),
                controller.contents(
                  'Community guidelines',
                  onTap: () {
                    Get.to(CommunityGuidelines(),
                        transition: Transition.cupertino);
                  },
                ),
                const Divider(),
                controller.contents(
                  'Safety tips',
                  onTap: () {
                    Get.to(SafetyTips(), transition: Transition.cupertino);
                  },
                ),
                JSpace.vertical(52),
                controller.heading('Help & Support'),
                JSpace.vertical(10),
                const Divider(),
                controller.contents(
                  'FAQ',
                ),
                const Divider(),
                controller.contents(
                  'Resources',
                ),
                const Divider(),
                controller.contents(
                  'Support centre',
                ),
                JSpace.vertical(52),
                controller.heading('Privacy'),
                JSpace.vertical(10),
                const Divider(),
                controller.contents(
                  'Privacy policy',
                  onTap: () {
                    Logger.success('data');
                    Get.to(PrivacyPolicy(), transition: Transition.cupertino);
                  },
                ),
                const Divider(),
                controller.contents(
                  'Terms and Conditions',
                  onTap: () {
                    Get.to(TermsAndConditions(),
                        transition: Transition.cupertino);
                  },
                ),
                const Divider(),
                controller.contents(
                  'Cookie policy',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
