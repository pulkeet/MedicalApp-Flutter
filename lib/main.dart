import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_consultation/pages/application/application_page.dart';
import 'package:medical_consultation/pages/bloc_providers.dart';
import 'package:medical_consultation/pages/home/home_page.dart';
import 'package:medical_consultation/pages/register/register.dart';
import 'package:medical_consultation/pages/sign_in/sign_in.dart';
import 'package:medical_consultation/pages/welcome/welcome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: AppBlocProviders.allBlocProvider,
        child: ScreenUtilInit(
          builder: (context, child) {
            return MaterialApp(
              title: 'Book Doctor',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                appBarTheme: const AppBarTheme(
                    elevation: 0, backgroundColor: Colors.white),
                primarySwatch: Colors.blue,
              ),
              home: const Welcome(),
              routes: {
                "ApplicationPage":(context) => const ApplicationPage(),
                "HomePage": (context) => const HomePage(),
                "SignIn": (context) => const SignIn(),
                "Register":(context) => const Register(),
              },
            );
          },
        ));
  }
}
