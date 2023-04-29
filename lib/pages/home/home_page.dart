import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_consultation/common/widgets/see_all.dart';
import 'package:medical_consultation/pages/home/widgets/home_page_widgets.dart';

import '../../common/values/colors.dart';
import '../../common/widgets/doctor_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FD),
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                SizedBox(
                  width: 10.w,
                  height: 25.h,
                ),

                //Search Box
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
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
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    roundItemWithText(
                        title: "Hospital",
                        iconName: Icons.local_hospital,
                        colorName: Colors.red,
                        backgroundColor: Colors.white),
                    roundItemWithText(
                        title: "Consultant",
                        iconName: Icons.medical_services,
                        colorName: Colors.blue,
                        backgroundColor: Colors.white),
                    roundItemWithText(
                        title: "Recipe",
                        iconName: Icons.food_bank,
                        colorName: Colors.yellow,
                        backgroundColor: Colors.white),
                    roundItemWithText(
                        title: "Appointment",
                        iconName: Icons.note_alt_outlined,
                        colorName: Colors.green,
                        backgroundColor: Colors.white),
                  ],
                ),

                SizedBox(
                  width: 10.w,
                  height: 25.h,
                ),
                // See all appointments
                const SeeAll(text1: 'Appointment Today', text2: 'See all',type: "Appointment"),
                SizedBox(
                  width: 10.w,
                  height: 25.h,
                ),
                appointmentCardWidget(
                    imagePath: "assets/icons/01.png",
                    doctorName: "Dr. Ino Yamanaka",
                    doctorSpecialization: "Dental Surgeon",
                    iconName: Icons.chat_rounded,
                    appointmentTime: "10:30 AM",
                    appointmentDate: "01/10/2023",
                    context: context),
                    SizedBox(
                  width: 10.w,
                  height: 25.h,
                ),
                // See all appointments
                const SeeAll(text1: 'Top Doctor\'s for you', text2: 'See all',type: "Doctor"),
                SizedBox(
                  width: 10.w,
                  height: 25.h,
                ),
                doctorCardWidget(
                  doctorName: "Dr. Ino Yamanaka",
                  doctorSpecialization: "Dental Surgeon",
                  ratings: 4.3,
                  reviewCount:123,
                  context: context
                  
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
