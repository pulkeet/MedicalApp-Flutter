import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateView extends StatelessWidget {
  final Map<String, dynamic> dateItem;
  const DateView({Key? key, required this.dateItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 80.h,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 17, top: 5),
            decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 20,
                      spreadRadius: 1)
                ]),
           child: Column(
            children: [
              Text(dateItem['day']),
              Text(dateItem['date'].toString())
            ],
           ),
          )
        ],
      ),
    );
  }
}
