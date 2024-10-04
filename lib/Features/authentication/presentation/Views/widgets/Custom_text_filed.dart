import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {super.key,
      this.hintText,
      this.icon,
      this.colorIcon,
      this.size,
      this.onChange, this.obsecuretext= false});
  final String? hintText;
  final IconData? icon;
  final Color? colorIcon;
  final int? size;
    final  bool ? obsecuretext;


  void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      validator: (data) {//تحقق من صحة المدخلات
        if (data!.isEmpty) {
          return 'Filed  is Required';
        }
      },
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(icon),
          // Icons.visibility,
          // color: Color(0xff838589),
          // size: 28,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffFAFAFA),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
