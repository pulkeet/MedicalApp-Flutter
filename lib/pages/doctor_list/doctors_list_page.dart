import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_consultation/pages/doctor_list/doctor_view.dart';

import '../../common/values/colors.dart';
import '../../utils/app_info_list.dart';

class DoctorsListScreen extends StatefulWidget {
  const DoctorsListScreen({super.key});

  @override
  State<DoctorsListScreen> createState() => _DoctorsListScreenState();
}

class _DoctorsListScreenState extends State<DoctorsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.only(top: 5),
          child: Text("Add Appointment", style: AppColors.headlineStyle1),
        ),
      ),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          child: Row(
            children: [
              //Search Box
              Container(
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 1,
                          spreadRadius: 2)
                    ]),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: AppColors.primaryText,
                    ),
                    const SizedBox(width: 0, height: 10),
                    Text(
                      "Search here ...",
                      style: AppColors.headlineStyle4,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              GestureDetector(
                child: const Icon(
                  FluentSystemIcons.ic_fluent_filter_filled,
                  size: 20,
                  color: Color(0xFF5F6368),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: doctorsList
                .map((singleDoctorItem) => DoctorView(doctor: singleDoctorItem))
                .toList(),
          ),
        )
      ]),
    );
  }
}
