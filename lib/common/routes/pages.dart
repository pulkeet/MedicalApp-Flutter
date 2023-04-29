import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_consultation/common/routes/names.dart';
import 'package:medical_consultation/pages/application/application_page.dart';
import 'package:medical_consultation/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:medical_consultation/pages/sign_in/sign_in.dart';
import 'package:medical_consultation/pages/welcome/bloc/welcome_blocs.dart';
import 'package:medical_consultation/pages/welcome/welcome.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
          route: AppRoutes.initial,
          page: const Welcome(),
          bloc: BlocProvider(
            create: (_) => WelcomeBloc(),
          )),
      PageEntity(
          route: AppRoutes.signin,
          page: const SignIn(),
          bloc: BlocProvider(
            create: (_) => SignInBlocs(),
          )),
      PageEntity(
        route: AppRoutes.application,
        page: const ApplicationPage(),
        // bloc: BlocProvider(
        //   create: (_) => WelcomeBloc(),
        // )
      )
    ];
  }

  static List<dynamic> allBlocProvider(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    for (var bloc in routes()) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }
}

//unify bloc provider , routes and pages
class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({required this.route, required this.page, this.bloc});
}
