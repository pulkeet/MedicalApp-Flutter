import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/colors.dart';

class ChatView extends StatelessWidget {
  final Map<String, dynamic> chat;
  const ChatView({Key? key, required this.chat}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 1)
          ]),
      height: 100.h,
      padding:
          EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h, bottom: 10.h),
                margin: EdgeInsets.only(top: 5.h,right: 7.w,left: 10.w,bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80.w,
            height: 150.w,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage(chat['doctorImagePath'])),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(chat['doctorName'], style: AppColors.headlineStyle2),
                SizedBox(
                  height: 10.w,
                ),
                Text(chat['lastMessage'],
                    style: AppColors.headlineStyle2.copyWith(fontSize: 13.sp)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(chat['lastMessageTime'],
                    style: AppColors.headlineStyle2.copyWith(fontSize: 10.sp)),
                SizedBox(
                  height: 10.w,
                ),
                 if (chat['hasUnreadMessage']) Center(
        child: Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
            color: Colors.blueAccent,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(chat['unreadMessageCount'].toString(),
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ), 

                  
              ],
            ),
          )
        ],
      ),
    );
    
  }
}
