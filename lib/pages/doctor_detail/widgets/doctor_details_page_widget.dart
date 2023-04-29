import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_consultation/common/values/colors.dart';
import 'package:medical_consultation/pages/book_apointment/book_apointment.dart';
import 'package:readmore/readmore.dart';

Widget doctorExperienceWidget(
    {required String patientCount,
    required String expereince,
    required double ratings}) {
  return Container(
      width: 325.w,
      height: 70.h,
      decoration: BoxDecoration(
          color: Colors.blue.shade100.withOpacity(0.3),
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
                color: Colors.blue.shade100.withOpacity(0.1),
                blurRadius: 9,
                spreadRadius: 3)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Patients",
                style: AppColors.headlineStyle3.copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(patientCount.toString(),
                  style: AppColors.headlineStyle2
                      .copyWith(color: AppColors.primaryElement))
            ],
          ),
          const VerticalDivider(
            color: Colors.black,
            indent: 25,
            endIndent: 25,
            thickness: 0.5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Experience",
                style: AppColors.headlineStyle3.copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(expereince,
                  style: AppColors.headlineStyle2
                      .copyWith(color: AppColors.primaryElement))
            ],
          ),
          const VerticalDivider(
            color: Colors.grey,
            indent: 25,
            endIndent: 25,
            thickness: 0.5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rating",
                style: AppColors.headlineStyle3.copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(ratings.toString(),
                  style: AppColors.headlineStyle2
                      .copyWith(color: AppColors.primaryElement))
            ],
          )
        ],
      ));
}

Widget readmoreWidget() {
  return const ReadMoreText(
    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    trimLines: 2,
    colorClickableText: Colors.pink,
    trimMode: TrimMode.Line,
    trimCollapsedText: 'Show more',
    trimExpandedText: 'Show less',
    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
  );
}

Widget bookAppointmentButton(String buttonName, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BookApointmentScreen(),
      ));
    },
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 15.h),
      decoration: BoxDecoration(
        color: AppColors.primaryElement,
        borderRadius: BorderRadius.circular(
          15.w,
        ),
        border: Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
              color: Colors.grey.withOpacity(0.1))
        ],
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
              color: AppColors.primaryBackground),
        ),
      ),
    ),
  );
}


