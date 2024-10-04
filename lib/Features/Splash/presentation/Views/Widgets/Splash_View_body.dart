import 'package:bookrading_app/Features/authentication/presentation/Views/widgets/Singup.dart';
import 'package:bookrading_app/core/Funection/App_routes.dart';
import 'package:bookrading_app/core/Utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    initRotationTransationAnimation();

    navigationToSignUp();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RotationTransition(
        turns: _animation,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(AssetsData.logo),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'ReadEase',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff34A853),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void initRotationTransationAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animationController.repeat();
  }

  void navigationToSignUp() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRoutes.kSingup);
    });
  }
}
