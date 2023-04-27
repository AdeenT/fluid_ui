import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/container/container.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/profile_screen/controllers/profile_screen_controller.dart';
import 'package:kolkata_machine_task/src/features/profile_screen/screens/edit_profile_screen.dart';
import 'package:kolkata_machine_task/src/features/settings_screen/screens/account_setting_screen.dart';
import 'package:line_icons/line_icons.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final controller = Get.put(ProfileScreenController());
  @override
  Widget build(BuildContext context) {
    bool pushNotificationOn = false;
    bool darkMode = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: GetBuilder<ProfileScreenController>(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JContainer(
                width: JSpace.width,
                color: AppColor.primary,
                height: 250.0,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15.0),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const JText(
                        text: 'My Profile',
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      JSpace.vertical(15),
                      const CircleAvatar(
                        radius: 70.5,
                        backgroundColor: AppColor.secondary,
                        backgroundImage: NetworkImage(
                            "https://images.mid-day.com/images/images/2021/jul/Michael-b-april-afp-a_d.jpg"),
                      )
                    ],
                  ),
                ),
              ),
              JSpace.vertical(25),
              controller.profileListTile(
                Icon(
                  LineIcons.edit,
                  color: Colors.grey.shade600,
                  size: 30,
                ),
                'Edit profile',
                IconButton(
                  onPressed: () {
                    Get.to(EditProfileScreen(),
                        transition: Transition.cupertino);
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.grey.shade700),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              controller.profileListTile(
                Icon(
                  Icons.settings,
                  color: Colors.grey.shade600,
                  size: 30,
                ),
                'Account Setting',
                IconButton(
                  onPressed: () {
                    Get.to(AccountSettingScreen(),
                        transition: Transition.cupertino);
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.grey.shade700),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              controller.profileListTile(
                Icon(
                  Icons.person_add_alt_1,
                  color: Colors.grey.shade600,
                  size: 30,
                ),
                'Invite',
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              controller.profileToggleOption('Push notifications',
                  controller.pushNotification(pushNotificationOn == true)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              controller.profileToggleOption(
                  'dark mode', controller.darkMode(darkMode == true)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.logout_rounded,
                  ),
                  title: JText(
                    text: 'Log-out',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              JSpace.vertical(30),
            ],
          ),
        );
      }),
    );
  }
}
