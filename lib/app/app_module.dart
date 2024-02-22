import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/home/home_module.dart';
import 'package:job_timer/app/modules/login/login_module.dart';
import 'package:job_timer/app/modules/splash/splash_page.dart';
import 'package:job_timer/app/services/auth/auth_service.dart';
import 'package:job_timer/app/services/auth/auth_service_impl.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton<AuthService>(AuthServiceImpl.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => const SplashPage());
    r.module('/login', module: LoginModule());
    r.module('/home', module: HomeModule());
  }
}
