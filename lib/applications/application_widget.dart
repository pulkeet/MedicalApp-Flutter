import 'package:flutter/material.dart';
import 'package:medical_consultation/pages/chat/chat_screen.dart';
import 'package:medical_consultation/pages/home/home_page.dart';

import '../pages/doctor_list/doctors_list_page.dart';

Widget buildPage(int index){
  List<Widget> widget = [
    const HomePage(),
    const Center(child: Text("Appointment")),
    const DoctorsListScreen(),
    const ChatScreen(),
    const Center(child: Text("Settings")),
  ];

  return widget[index];
}
