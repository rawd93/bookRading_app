import 'package:bookrading_app/core/Utiles/Styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const  CustomBottom(
      {super.key,
      this.text,
      this.colors,
      this.image  ='assets/images/googleIcon.png',
      this.colorBorder,
      this.textColor, this.onPreesed});
  final String? text;
  final Color? colors;
  final String? image;
  final Color? colorBorder;
  final Color? textColor;
  final void Function()? onPreesed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      onPressed: () {},
      child: SizedBox(
        height: 50,
        child: Container(
          width: double.infinity,
          height: 52,
          decoration: BoxDecoration(
            color: colors,
            border: Border.all(
                // color: colorBorder,
                // color: colorBorder,
                ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(child: Image.asset(image!)),
            const SizedBox(
                width: 8,
              ),
              Center(
                child: Text(
                  text!,
                  style: Styles.textStyle14.copyWith(color: textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
