import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SafetyTipsController extends GetxController {
  tips(String boldPart, String content) {
    return Row(
      children: [
        Expanded(
            child: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: boldPart,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: content),
            ],
          ),
        )),
      ],
    );
  }
}
