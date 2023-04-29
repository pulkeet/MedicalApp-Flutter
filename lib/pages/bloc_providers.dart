import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_consultation/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:medical_consultation/pages/welcome/bloc/welcome_blocs.dart';

class AppBlocProviders {
  static get allBlocProvider => [
        BlocProvider(
          lazy: false,
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => SignInBlocs(),
        ),
      ];
}
