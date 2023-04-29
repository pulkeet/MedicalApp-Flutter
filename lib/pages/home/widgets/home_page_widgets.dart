import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_consultation/common/values/colors.dart';
import 'package:medical_consultation/pages/chat/chat_screen.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 50.h),
          padding: const EdgeInsets.only(top: 5),
          width: 200.w,
          height: 100.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Luke,", style: AppColors.headlineStyle1),
              Text("How do you feel today ?",
                  style: AppColors.headlineStyle4)
            ],
          ),
        ),
        roundedPersonWidget("assets/icons/02.png")
      ],
    ),
  );
}

Widget roundedPersonWidget(String imagePath) {
  return GestureDetector(
      child: Container(
    width: 40.w,
    height: 40.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.grey,
      image: DecorationImage(image: AssetImage(imagePath)),
    ),
  ));
}

Widget roundWidget(String imagePath) {
  return GestureDetector(
      child: Container(
          margin: const EdgeInsets.only(top: 10, left: 10),
          padding: EdgeInsets.all(30.h),
          width: 60.w,
          height: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blue.shade100,
            image: DecorationImage(
              scale: 1.5,
              image: AssetImage(imagePath),
            ),
          )));
}

Widget roundWidgetWithNavigation(String imagePath, BuildContext context) {
  return GestureDetector(
    child: Container(
        margin: const EdgeInsets.only(top: 10, left: 10),
        padding: EdgeInsets.all(30.h),
        width: 60.w,
        height: 60.w,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue.shade100,
          image: DecorationImage(
            scale: 1,
            image: AssetImage(imagePath),
          ),
        )),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChatScreen()),
      );
    },
  );
}

Widget roundItemWithText(
    {required String title,
    required IconData iconName,
    required Color colorName,
    required Color backgroundColor}) {
  return SizedBox(
    child: Column(
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              backgroundColor: backgroundColor, 
              foregroundColor: AppColors.primaryElement, 
            ),
            child: Icon(iconName, color: colorName)),
        SizedBox(
          width: 0,
          height: 15.h,
        ),
        Text(title, style: AppColors.headlineStyle4)
      ],
    ),
  );
}

Widget circleGraphicWidget(
    {String? rightAngle,
    String? leftAngle,
    String? topAngle,
    String? bottomAngle}) {
  return Positioned(
      right: double.parse(rightAngle!).toDouble(),
      top: double.parse(topAngle!).toDouble(),
      left: double.parse(leftAngle!).toDouble(),
      bottom: double.parse(bottomAngle!).toDouble(),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 18, color: Colors.white.withOpacity(0.05)),
          color: Colors.transparent,
        ),
      ));
}

Widget appointmentCardWidget(
    {required String imagePath,
    required String doctorName,
    required String doctorSpecialization,
    required IconData iconName,
    required String appointmentTime,
    required String appointmentDate,
    required BuildContext context}) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: AppColors.primaryElement,
          borderRadius: BorderRadius.circular(22),
        ),
        height: 150.h,
        padding:
            EdgeInsets.only(left: 10.h, right: 10.h, top: 5.h, bottom: 5.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                roundWidget(imagePath),
                roundWidgetWithNavigation("assets/icons/message-circle.png", context),
              ],
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(doctorName,
                    style:
                        AppColors.headlineStyle2.copyWith(color: Colors.white)),
                Text(appointmentTime,
                    style:
                        AppColors.headlineStyle2.copyWith(color: Colors.white))
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(doctorSpecialization,
                    style: AppColors.headlineStyle3
                        .copyWith(color: Colors.white70)),
                Text(appointmentDate,
                    style: AppColors.headlineStyle4
                        .copyWith(color: Colors.white70))
              ],
            )
          ],
        ),
      ),
      circleGraphicWidget(
          rightAngle: "-15",
          leftAngle: "250",
          bottomAngle: "25",
          topAngle: "-70"),
      circleGraphicWidget(
          rightAngle: "55",
          leftAngle: "-10",
          bottomAngle: "95",
          topAngle: "-30"),
      circleGraphicWidget(
          rightAngle: "-15",
          leftAngle: "10",
          bottomAngle: "-45",
          topAngle: "80"),
      circleGraphicWidget(
          rightAngle: "-375",
          leftAngle: "20",
          bottomAngle: "-65",
          topAngle: "30"),
      circleGraphicWidget(
          rightAngle: "75",
          leftAngle: "-320",
          bottomAngle: "-15",
          topAngle: "30"),
    ],
  );
}
