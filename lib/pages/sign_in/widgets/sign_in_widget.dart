import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

AppBar buildAppbar() {
  return AppBar(
    bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: AppColors.primarySecondaryBackground,
          height: 0.5,
        )),
    title: Center(
      child: Text(
        'Log in',
        style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal),
      ),
    ),
  );
}

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 40.h),
      padding: EdgeInsets.only(left: 25.w, right: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _reusableloginIcons("google"),
          _reusableloginIcons("apple"),
          _reusableloginIcons("facebook"),
        ],
      ));
}

// Login Icons widget
Widget _reusableloginIcons(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset("assets/icons/$iconName.png"),
    ),
  );
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.normal,
          color: AppColors.primaryFourthElementText,
          fontSize: 14.sp),
    ),
  );
}

Widget buildTextField(String text, String textType, String iconName,
    void Function(String value)? func) {
  return Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(color: AppColors.primaryFourthElementText)),
      child: Row(
        children: [
          Container(
            width: 16.w,
            height: 16.w,
            margin: EdgeInsets.only(left: 17.w),
            child: Image.asset("assets/icons/$iconName.png"),
          ),
          SizedBox(
            width: 260.w,
            height: 50.h,
            child: TextField(
              onChanged: (value) {
                func!(value);
              },
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  hintText: text,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
              style: TextStyle(
                  color: AppColors.primaryFourthElementText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp),
              autocorrect: false,
              obscureText: textType == "password" ? true : false,
            ),
          )
        ],
      ));
}

Widget forgotPassword() {
  return Container(
    margin: EdgeInsets.only(left: 25.w),
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () => {},
      child: Text(
        "Forgot Password ?",
        style: TextStyle(
          color: AppColors.primaryFourthElementText,
          fontSize: 12.sp,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
        ),
      ),
    ),
  );
}

Widget buildLoginAndRegisterButton(String buttonName, String buttonType,void Function()? func) {
  return GestureDetector(
    onTap: func,
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 15.h),
      decoration: BoxDecoration(
        color: buttonType == "logIn"
            ? AppColors.primaryElement
            : AppColors.primaryBackground,
        borderRadius: BorderRadius.circular(
          15.w,
        ),
        border: Border.all(
            color: buttonType == "logIn"
                ? Colors.transparent
                : AppColors.primaryFourthElementText),
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
              color: buttonType == "logIn"
                  ? AppColors.primaryBackground
                  : AppColors.primaryText),
        ),
      ),
    ),
  );
}
