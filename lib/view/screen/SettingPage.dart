// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xstore/controller/settingController.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/imageApp.dart';
import 'package:xstore/data/model/feildInSettingPage.dart';
import 'package:xstore/view/widget/Setting/containerFeild.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingControllerImp controller = Get.put(SettingControllerImp());
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: secondColors,
            ),
            height: 300,
            width: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: Image.asset(
                      ImageApp.profile,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          controller.userName!,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          controller.userEmail!,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // Text(data)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ContainerFeild(
            titleFeild: "Account",
            items: [
              FeildItem(icon: ImageApp.squareEdit, title: "Edit Profile"),
              FeildItem(
                  icon: ImageApp.notification,
                  title: "Notification",
                  widget: Switch(
                    value: false,
                    onChanged: (val) {},
                    activeTrackColor: Colors.green,
                    inactiveTrackColor: Colors.grey,
                  )),
            ],
          ),
          ContainerFeild(
            titleFeild: "About and Action",
            items: [
              FeildItem(icon: ImageApp.circleInfo, title: "About application"),
              FeildItem(icon: ImageApp.circleHelp, title: "Help"),
              FeildItem(
                icon: ImageApp.logOut,
                title: "Log out",
                onTap: () {
                  controller.logout();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
