import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/values/colors.dart';
import '../doctor_detail/doctor_detail_page.dart';

class DoctorView extends StatelessWidget {
    final Map<String, dynamic> doctor;
  const DoctorView({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String doctorName = doctor['doctorName'];
    String doctorSpecialization = doctor['doctorSpecialization'];
    String rating = doctor['ratings'].toString();
    String doctorExp = doctor['experience'];
    String doctorImagePath = doctor['doctorImagePath'];
    String aboutDoctor = doctor['aboutDoctor'];
    String patients = doctor['patients'];

    return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DoctorDetail(doctorName,doctorSpecialization,rating,doctorExp,doctorImagePath,aboutDoctor,patients)),
        );
    },
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
                margin: EdgeInsets.only(top: 5.h,right: 10.w,left: 10.w,bottom: 5.h),

      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 150.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              image:
                  DecorationImage(image: AssetImage(doctorImagePath)),
                  
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctor['doctorSpecialization'], style: AppColors.headlineStyle3),
                SizedBox(
                  height: 5.h,
                ),
                Text(doctor['doctorName'], style: AppColors.headlineStyle2),
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
                    Text(doctor['ratings'].toString(),
                        style: AppColors.headlineStyle2.copyWith(fontSize: 15)),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("${doctor['reviews']} Reviews",
                        style: AppColors.headlineStyle2.copyWith(fontSize: 15)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
  }
}
