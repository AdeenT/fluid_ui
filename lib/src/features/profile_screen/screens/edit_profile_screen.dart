import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolkata_machine_task/src/common_widgets/container/container.dart';
import 'package:kolkata_machine_task/src/common_widgets/text/text.dart';
import 'package:kolkata_machine_task/src/constants/colors/app_color.dart';
import 'package:kolkata_machine_task/src/constants/size/spacing.dart';
import 'package:kolkata_machine_task/src/features/profile_screen/controllers/edit_profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final controller = Get.put(EditProfileScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const JText(
          text: 'Edit Profile',
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
      body: GetBuilder<EditProfileScreenController>(
        builder: (controllers) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JSpace.vertical(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    JContainer(
                      width: 100,
                      height: 150,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.mid-day.com/images/images/2021/jul/Michael-b-april-afp-a_d.jpg'),
                          fit: BoxFit.cover),
                    ),
                    controller.photos(),
                    controller.photos(),
                  ],
                ),
                JSpace.vertical(15.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    controller.photos(),
                    controller.photos(),
                    controller.photos(),
                  ],
                ),
                JSpace.vertical(15.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    controller.photos(),
                    controller.photos(),
                    controller.photos(),
                  ],
                ),
                JSpace.vertical(15.5),
                const JText(
                  text: "Hold & Drag to adjust the order",
                  color: Colors.black54,
                  fontSize: 12,
                ),
                JSpace.vertical(30),
                const JText(
                  text: "Add bio",
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
                JSpace.vertical(15.5),
                TextFormField(
                  cursorColor: AppColor.primary,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  maxLines: 5,
                  maxLength: 300,
                ),
                JSpace.vertical(30),
                const JText(
                  text: "Your interests",
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
                JSpace.vertical(7),
                const JText(
                  text: "You can select multiple",
                  color: Colors.black54,
                  fontSize: 14,
                ),
                JSpace.vertical(10),
                Wrap(
                  spacing: 12,
                  children: [
                    controller.filters(
                      const JText(
                        text: "Photography",
                      ),
                    ),
                    controller.filters(
                      const JText(
                        text: "Music",
                      ),
                    ),
                    controller.filters(
                      const JText(
                        text: "Book",
                      ),
                    ),
                    controller.filters(
                      const JText(
                        text: "Gaming",
                        color: Colors.black,
                      ),
                    ),
                    controller.filters(
                      const JText(
                        text: "Fashion",
                      ),
                    ),
                    controller.filters(
                      const JText(
                        text: "Architecture",
                      ),
                    ),
                  ],
                ),
                JSpace.vertical(30),
                const JText(
                  text: "Filter by:",
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
                JSpace.vertical(20),
                const JText(
                  text: "Relationship goal",
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                controller.dropDownMenu(),
                JSpace.vertical(20),
                const JText(
                  text: "Sexual identity preference",
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                controller.dropDownMenu(),
                JSpace.vertical(5),
                const JText(
                  text: "Multiple choice",
                  color: Colors.black54,
                  fontSize: 12,
                ),
                JSpace.vertical(20),
                const JText(
                  text: "Gender preference",
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                controller.dropDownMenu(),
                JSpace.vertical(5),
                const JText(
                  text: "Choose one",
                  color: Colors.black54,
                  fontSize: 12,
                ),
                JSpace.vertical(20),
                const JText(
                  text: "Age",
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                controller.ageSlider(),
                JSpace.vertical(48),
                const JText(
                  text: "Distance",
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                controller.distanceSlider(),
                JSpace.vertical(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
