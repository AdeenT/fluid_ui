import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/controllers/community_guidelines_controller.dart';

class CommunityGuidelines extends StatelessWidget {
  CommunityGuidelines({super.key});
  final communitycontroller = Get.put(CommunityGuidelinesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const JText(
            text: "Community Guidelines",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
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
        body: GetBuilder<CommunityGuidelinesController>(
          builder: (controller) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSpace.vertical(43),
                communitycontroller.content(
                    'Welcome to Fluid, a community designed to connect and empower people of all genders, sexual orientations, and identities. Our community is founded on the principles of respect, inclusivity, and safety, and we expect all members to uphold these values at all times. By using Fluid, you agree to abide by the following community guidelines:'),
                JSpace.vertical(40),
                communitycontroller.heading('1.  Be Respectful'),
                JSpace.vertical(20),
                communitycontroller.content(
                    'Treat all members with kindness and respect, regardless of their gender, sexual orientation, or identity. Harassment, hate speech, and discrimination will not be tolerated. This includes sending unsolicited sexual content to your matches.  '),
                JSpace.vertical(40),
                communitycontroller.heading('2.  Be Inclusive'),
                JSpace.vertical(20),
                communitycontroller.content(
                    'Fluid is a space for everyone, regardless of their background or identity. We celebrate diversity and welcome people from all walks of life.'),
                JSpace.vertical(40),
                communitycontroller.heading('3.  Keep it safe'),
                JSpace.vertical(20),
                communitycontroller.content(
                    'We take safety seriously at Fluid, and we expect all members to do the same. Please report any suspicious or inappropriate behavior to our team immediately.'),
                JSpace.vertical(40),
                communitycontroller.heading('4.  Protect your privacy'),
                JSpace.vertical(20),
                communitycontroller.content(
                    "Be mindful of the personal information you share with others on Fluid. We recommend that you avoid sharing sensitive information like your full name, home address, or phone number."),
                JSpace.vertical(40),
                communitycontroller.heading('5.  Follow the law'),
                JSpace.vertical(20),
                communitycontroller.content(
                    'Fluid is committed to upholding the law and expects all members to do the same. Please do not engage in any illegal activity on our platform. Promoting or advocating for commercial sexual services, human trafficking or other non-consensual sexual acts is strictly prohibited. Any fraudulent or illegal activities will result in being reported to authorities and banning of the account.'),
                JSpace.vertical(40),
                communitycontroller.heading('6.  Use common sense'),
                JSpace.vertical(20),
                communitycontroller.content(
                    'Ultimately, we want Fluid to be a positive and enjoyable experience for everyone. Please use common sense and good judgment when interacting with others.'),
                JSpace.vertical(60),
                communitycontroller.content(
                    'We reserve the right to remove any content or suspend any member who violates these guidelines or engages in any behavior that we deem inappropriate or harmful to our community. By using Fluid, you agree to abide by these guidelines and help us maintain a safe and welcoming community for all.'),
                JSpace.vertical(20),
              ],
            ),
          ),
        ));
  }
}
