import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_consultation/pages/sign_in/bloc/sign_in_blocs.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  void handleSignIn(String type) async {
    try {
      if (type == "email") {
        final state = context.read<SignInBlocs>().state;
        String emailAddress = state.email;
        String password = state.password;
        try {
          final credentials = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credentials.user == null) {
            // ignore: use_build_context_synchronously
            Navigator.of(context)
                  .pushNamedAndRemoveUntil("ApplicationPage", (route) => false);
          }
          if (!credentials.user!.emailVerified) {
              // ignore: use_build_context_synchronously
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("ApplicationPage", (route) => false);
          }

          var user = credentials.user;
          if (user != null) {
              // ignore: use_build_context_synchronously
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("ApplicationPage", (route) => false);
          } else {
              // ignore: use_build_context_synchronously
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("ApplicationPage", (route) => false);
          }
        } on FirebaseAuthException catch (e) {
            // ignore: avoid_print
            print(e);
            Navigator.of(context)
                  .pushNamedAndRemoveUntil("ApplicationPage", (route) => false);
        }
      }
    } catch (e) {
       //
    }
  }
}
