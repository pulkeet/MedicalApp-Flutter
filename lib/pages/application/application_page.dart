import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../applications/application_widget.dart';
import '../../common/values/colors.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
              body: buildPage(_index),
              bottomNavigationBar: Container(
                width: 375.w,
                height: 58.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.h),
                        topRight: Radius.circular(20.h)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1)
                    ]),
                child: BottomNavigationBar(
                    currentIndex: _index,
                    onTap: (value) {
                      setState(() {
                        _index = value;
                      });
                    },
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    selectedItemColor: AppColors.primaryElement,
                    unselectedItemColor: Colors.grey,
                    items: [
                      BottomNavigationBarItem(
                          label: "Home",
                          tooltip: "Home",
                          icon: SizedBox(
                            width: 15.w,
                            height: 15.h,
                            child: const Icon(
                                FluentSystemIcons.ic_fluent_home_filled),
                          )),
                      BottomNavigationBarItem(
                          label: "Appointment",
                          icon: SizedBox(
                            width: 15.w,
                            height: 15.h,
                            child: const Icon(
                                FluentSystemIcons.ic_fluent_notepad_filled),
                          )),
                      BottomNavigationBarItem(
                          label: "Add",
                          icon: SizedBox(
                            width: 15.w,
                            height: 15.h,
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_add_circle_filled,
                            ),
                          )),
                      BottomNavigationBarItem(
                          label: "Chat",
                          tooltip: "Chat",
                          icon: SizedBox(
                            width: 15.w,
                            height: 15.h,
                            child: const Icon(Icons.chat_rounded),
                          )),
                      BottomNavigationBarItem(
                          label: "Settings",
                          tooltip: "Settings",
                          icon: SizedBox(
                            width: 15.w,
                            height: 15.h,
                            child: const Icon(
                                FluentSystemIcons.ic_fluent_settings_filled),
                          ))
                    ]),
              ))),
    );
  }
}
