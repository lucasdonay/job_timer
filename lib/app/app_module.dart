import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/home/home_module.dart';
import 'package:job_timer/app/modules/login/login_module.dart';
import 'package:job_timer/app/services/auth/auth_service.dart';
import 'package:job_timer/app/services/auth/auth_service_impl.dart';

import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton<AuthService>(AuthServiceImpl.new, key: 'AuthService');
  }

  @override
  void routes(RouteManager r) {
    r
      ..module(Modular.initialRoute, module: SplashModule())
      ..module('/login/', module: LoginModule())
      ..module('/home', module: HomeModule());
  }
}
