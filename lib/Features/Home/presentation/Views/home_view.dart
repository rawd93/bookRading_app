

import 'package:bookrading_app/Features/Home/presentation/Views/widgets/Home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold  (
      body: HomeViewBody(),
    );
  }
}