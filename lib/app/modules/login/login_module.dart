import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/login/controller/login_controller.dart';
import 'package:job_timer/app/modules/login/login_page.dart';

import '../../services/auth/auth_service.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton((i) => LoginController(authService: i()));
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => LoginPage(
        controller: LoginController(authService: Modular.get<AuthService>()),
      ),
    );
  }
}
