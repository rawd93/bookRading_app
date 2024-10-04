
import 'package:bookrading_app/core/Utiles/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Icon.png'),
        //Icon(FontAwesomeIcons.bell-exclamation),
        const Text(
          'Read Ease',
          style: Styles.textStyle18
        ),
        Image.asset('assets/IconAppar.png'),
      ],
    );
  }
}
