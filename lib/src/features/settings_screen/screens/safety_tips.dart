import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/controllers/safety_tips_controller.dart';

class SafetyTips extends StatelessWidget {
  SafetyTips({super.key});
  final controller = Get.put(SafetyTipsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const JText(
          text: "Safety tips",
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
      body: GetBuilder<SafetyTipsController>(
        builder: (controller) => SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  JSpace.vertical(40),
                  controller.tips('1. Be cautious with personal information:',
                      ' Avoid sharing personal information like your full name, address, phone number, or other identifying details until you feel comfortable and have built trust with the other person.'),
                  JSpace.vertical(40),
                  controller.tips('2. Meet in public places:',
                      ' When meeting someone for the first time, choose a public location that is well-lit and has other people around. This can help ensure your safety and make you feel more comfortable.'),
                  JSpace.vertical(40),
                  controller.tips('3. Trust your instincts:',
                      ' If you feel uncomfortable or unsafe with someone, trust your gut and end the conversation or meeting. Your safety should always come first.'),
                  JSpace.vertical(40),
                  controller.tips('4. Use video chat before meeting in person:',
                      ' Consider using video chat to talk with someone before meeting in person. This can help you get a better sense of who they are and build trust before meeting face-to-face.'),
                  JSpace.vertical(40),
                  controller.tips("5. Don't feel pressured:",
                      " You should never feel pressured to do anything you're not comfortable with. If someone is pressuring you to do something you don't want to do, end the conversation or meeting."),
                  JSpace.vertical(40),
                  controller.tips('6. Report any suspicious behavior:',
                      " If you encounter any suspicious behavior on the app, report it to the app's support team. This can help keep the community safe and prevent others from being victimized."),
                  JSpace.vertical(40),
                  controller.tips('7. Be mindful of your surroundings:',
                      " Always be aware of your surroundings and take steps to ensure your safety, such as carrying a phone with you and letting a friend know where you're going and when you'll be back."),
                ],
              )),
        ),
      ),
    );
  }
}
