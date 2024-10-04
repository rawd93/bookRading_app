import 'package:bookrading_app/Features/Splash/presentation/Views/Widgets/splash_View.dart';
import 'package:bookrading_app/Features/authentication/presentation/Views/widgets/LogIn.dart';
import 'package:bookrading_app/Features/authentication/presentation/Views/widgets/Singup.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  //const static  splashView= '/SplashView';
  static const kSingup = '/SignUp';
  static const kLogIn = '/LogIn';
  static const kHomeView = '/HomeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSingup,
        builder: (context, state) => const Singup(),
      ),
      GoRoute(path: kLogIn,
      builder: (context, state) =>  const Login(),
      ),
    ],
  );
}
