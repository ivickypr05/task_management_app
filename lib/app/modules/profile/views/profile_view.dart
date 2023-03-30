import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myTask.dart';
import 'package:task_management_app/app/utils/widget/profileW.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(children: [
        !context.isPhone
            ? const Expanded(
                flex: 2,
                child: SideBar(),
              )
            : const SizedBox(),
        Expanded(
          flex: 15,
          child: Column(children: [
            !context.isPhone
                ? const header()
                : Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _drawerKey.currentState!.openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: AppColors.primaryText,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Task Management',
                              style: TextStyle(
                                  fontSize: 25, color: AppColors.primaryText),
                            ),
                            Text(
                              'Manage task made easy with Friends',
                              style: TextStyle(
                                  fontSize: 12, color: AppColors.primaryText),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                                title: 'Sign Out',
                                content: const Text(
                                    'Are you sure wont to sign out?'),
                                cancel: ElevatedButton(
                                  onPressed: () => Get.back(),
                                  child: const Text('Cancel'),
                                ),
                                confirm: ElevatedButton(
                                    onPressed: () => Get.toNamed(Routes.LOGIN),
                                    child: const Text('Sign Out')));
                          },
                          child: Row(children: const [
                            Text(
                              'Sign Out',
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ]),
                        ),
                        const Icon(
                          Ionicons.log_out_outline,
                          color: AppColors.primaryText,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
            // isi page / content Page
            Expanded(
              child: Container(
                padding: !context.isPhone
                    ? const EdgeInsets.all(50)
                    : const EdgeInsets.all(20),
                margin: !context.isPhone
                    ? const EdgeInsets.all(10)
                    : const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: !context.isPhone
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ProfileW(),
                      Text(
                        'My Task',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height:5,
                      ),
                      SizedBox(
                        height: 200,
                        child: MyTask(),
                      ),
                    ]),
              ),
            ),
          ]),
        )
      ]),
    ),
    );
  }
}
