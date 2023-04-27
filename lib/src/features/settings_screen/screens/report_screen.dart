import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/controllers/report_screen_controller.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({super.key});
  final controller = Get.put(ReportScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const JText(
          text: "Report",
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: AppColor.primary,
        ),
      ),
      body: GetBuilder<ReportScreenController>(
        builder: (controller) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSpace.vertical(40),
                controller.reportIntro('Select a problem to report',
                    "You can report this profile to Verve if you think it goes against our Community Guidelines. We take matters of security very seriously. We won’t notify the account that you submitted this report."),
                JSpace.vertical(40),
                controller.reportingProbs('Nudity or sexual activity'),
                JSpace.vertical(27),
                controller.reportingProbs('Hate speech or Symbols'),
                JSpace.vertical(27),
                controller.reportingProbs('Scam or fraud'),
                JSpace.vertical(27),
                controller.reportingProbs('Violence or dangerous influence'),
                JSpace.vertical(27),
                controller
                    .reportingProbs('Sale of Illegal or regulated products '),
                JSpace.vertical(27),
                controller.reportingProbs('Bullying or Harassment'),
                JSpace.vertical(27),
                controller.reportingProbs('Pretending to be someone else'),
                JSpace.vertical(27),
                controller.reportingProbs('Suicide or Self-injury'),
                JSpace.vertical(27),
                controller.reportingProbs('Spam or Bot'),
                JSpace.vertical(27),
                controller.reportingProbs('My problem isn’t listed'),
                JSpace.vertical(40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
