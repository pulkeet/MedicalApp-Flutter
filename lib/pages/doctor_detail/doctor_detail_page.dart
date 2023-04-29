// ignore_for_file: public_member_api_docs, sort_constructors_first, no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:medical_consultation/common/values/colors.dart';
import 'package:medical_consultation/pages/doctor_detail/widgets/doctor_details_page_widget.dart';

import '../home/widgets/home_page_widgets.dart';

class DoctorDetail extends StatefulWidget {
  final String doctorName;
  final String doctorSpecialization;
  final String rating;
  final String doctorExp;
  final String doctorImagePath;
  final String aboutDoctor;
  final String patients;
  const DoctorDetail(this.doctorName, this.doctorSpecialization, this.rating,
      this.doctorExp, this.doctorImagePath, this.aboutDoctor,this.patients,
      {super.key});

  @override
  State<DoctorDetail> createState() {
    return _DoctorDetailState(doctorName,doctorSpecialization,rating,doctorExp,doctorImagePath,aboutDoctor,patients);
  }
}

class _DoctorDetailState extends State<DoctorDetail> {
  String doctorName;
  String doctorSpecialization;
  String rating;
  String doctorExp;
  String doctorImagePath;
  String aboutDoctor;
  String patients;
  _DoctorDetailState(this.doctorName,this.doctorSpecialization, this.rating,
      this.doctorExp, this.doctorImagePath, this.aboutDoctor,this.patients);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Doctor Details"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,

        clipBehavior: Clip.none,
        //  overflow: Overflow.visible,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 180.0,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryElement,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              )
            ],
          ),
          Positioned(
            top: 130.0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryBackground,
                      image: DecorationImage(
                          image: AssetImage(doctorImagePath)),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(doctorSpecialization, style: AppColors.headlineStyle3),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(doctorName, style: AppColors.headlineStyle2),
                  SizedBox(
                    height: 25.h,
                  ),
                  doctorExperienceWidget(
                      patientCount: patients, expereince: doctorExp, ratings: double.parse(rating)),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "About Doctor",
                    style: AppColors.headlineStyle2,
                  ),

                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 325.w,
                    child: Text(
                      aboutDoctor,
                      style: AppColors.headlineStyle3.copyWith(fontSize: 15.sp),
                      textAlign: TextAlign.start,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Text(
                  //   textAlign: TextAlign.start,
                  //   "Select Schedule",
                  //   style: AppColors.headlineStyle2,
                  // ),
                  SizedBox(
                    height: 15.h,
                  ),

                  bookAppointmentButton("Book Apointment",context),
                  //Adding Hotel view
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: dateList
                  //         .map((singleDateItem) =>
                  //             DateView(dateItem: singleDateItem))
                  //         .toList(),
                  //   ),
                  // )

                  // readmoreWidget()
                ],
              ),
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
      ),
    );
  }
}
