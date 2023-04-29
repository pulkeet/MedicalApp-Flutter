import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_consultation/pages/chat/chat_view.dart';

import '../../common/values/colors.dart';
import '../../utils/app_info_list.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 5),
              width: 325.w,
              height: 200.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Chat", style: AppColors.headlineStyle1),
                  GestureDetector(
                    child: const Icon(
                      Icons.more_horiz_outlined,
                      size: 25,
                      color: Color(0xFF5F6368),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                //Search Box
                Container(
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 1,
                            spreadRadius: 2)
                      ]),
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
                SizedBox(width: 5.w,),
                GestureDetector(
                  child: const Icon(
                    FluentSystemIcons.ic_fluent_edit_regular,
                    size: 25,
                    color: Color(0xFF5F6368),
                  ),
                )
              ],
            ),
          ),
         SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: chatList
                        .map((singleChatItem) =>
                            ChatView(chat: singleChatItem))
                        .toList(),
                  ),
                )
         ]   ),
         
        
      
    );
  }
}
