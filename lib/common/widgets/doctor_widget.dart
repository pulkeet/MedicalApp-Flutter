import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../pages/doctor_detail/doctor_detail_page.dart';
import '../values/colors.dart';

Widget doctorCardWidget({
  required String doctorName,
  required String doctorSpecialization,
  required double ratings,
  required int reviewCount,
  required BuildContext context
}) {
  return GestureDetector(
    
    child: Container(
      
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 1)
          ]),
      height: 100.h,
      padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h, bottom: 10.h),
      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 150.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.transparent,
              image:
                  DecorationImage(image: AssetImage("assets/icons/headpic.png")),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctorSpecialization, style: AppColors.headlineStyle3),
                SizedBox(
                  height: 5.h,
                ),
                Text(doctorName, style: AppColors.headlineStyle2),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/icons/star(1).png"),
                      color: Colors.amberAccent,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(ratings.toString(),
                        style: AppColors.headlineStyle2.copyWith(fontSize: 15)),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("$reviewCount Reviews",
                        style: AppColors.headlineStyle2.copyWith(fontSize: 15)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DoctorDetail(doctorName,doctorSpecialization,ratings.toString(),"5","assets/icons/headpic.png",'Dr. Ino is a well known and experienced doctor in the field of liver specialist. He comes from japan and is widely known for which experiance in surgery','4329')),
        );
    },
  );
}

Widget doctorChatWidget({
  required String doctorName,
  required String lastMessage,
  required double lastMessageTime,
  required Image imagePath,
}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 1)
        ]),
    height: 100.h,
    padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h, bottom: 10.h),
    child: Row(
      children: [
        Container(
          width: 80.w,
          height: 150.w,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.transparent,
            image:
                DecorationImage(image: AssetImage("assets/icons/headpic.png")),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(doctorName, style: AppColors.headlineStyle3),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(lastMessageTime.toString(),
                      style: AppColors.headlineStyle2),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(lastMessage,
                  style: AppColors.headlineStyle2.copyWith(fontSize: 15)),
            ],
          ),
        )
      ],
    ),
  );
}
