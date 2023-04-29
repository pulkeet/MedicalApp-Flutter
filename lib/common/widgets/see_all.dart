
import 'package:flutter/material.dart';
import '../../pages/doctor_list/doctors_list_page.dart';
import '../values/colors.dart';

class SeeAll extends StatelessWidget {
  final String text1;
  final String text2;
  final String type;
  const SeeAll(
      {Key? key, required this.text1, required this.text2, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: AppColors.headlineStyle2,
        ),
        GestureDetector(
            onTap: () {
              navigate(context);
            },
            child: Text(
              text2,
              style:
                  AppColors.textStyle.copyWith(color: AppColors.primaryElement),
            ))
      ],
    );
  }

  void navigate(BuildContext context) {
    switch (type) {
      case "Doctor":
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DoctorsListScreen()),
        );
        break;

      case "Appointment":
        break;

      default:
    }
  }
}


