import 'package:bookrading_app/Features/authentication/presentation/Views/widgets/Custom_bottom.dart';
import 'package:bookrading_app/Features/authentication/presentation/Views/widgets/Custom_text_filed.dart';
import 'package:bookrading_app/core/Funection/App_routes.dart';
import 'package:bookrading_app/core/Utiles/Styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String email;
  late String password;
  GlobalKey<FormState> formKey = GlobalKey();
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: ListView(
          children: [
            const SizedBox(
              height: 76,
            ),
            const Text(
              'Log in',
              style: Styles.textStyle24,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Welcome back! Log in to resume your reading journey.',
              style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email address',
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            CustomTextFiled(
              hintText: 'uiuxcreative2021@gmail.com',
              onChange: (data) {
                email = data;
              },
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Passowrd',
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFiled(
                    obsecuretext: true,
                    hintText: '********',
                    icon: Icons.visibility,
                    colorIcon: const Color(0xff838589),
                    size: 28,
                    onChange: (data) {
                      password = data;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomBottom(
              text: 'Log in',
              textColor: Colors.white,
              colors: const Color(0xff34A853),
              onPreesed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: email,
                    password: password,
                  );
                  Navigator.of(context).pushNamed(AppRoutes.kHomeView);
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('The password provided is too weak.'),
                      ),
                    );
                  } else if (e.code == 'email-already-in-use') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                            Text('The account already exists for that email.'),
                      ),
                    );
                  }
                } catch (e) {
                  print(e);
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Succses'),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              'Don’t have an acount? Sign up',
              style: Styles.textStyle14.copyWith(
                  color: const Color(
                0xff838589,
              )),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              textAlign: TextAlign.center,
              'or',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomBottom(
              text: 'Login with Google',
              textColor: Colors.green,
              colorBorder: const Color(0xff81D479),
              image: 'assets/images/googleIcon.png',
              onPreesed: () {
                signInWithGoogle();
              },
            ),
            // Container(
            //   height: 50,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.green),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(10),
            //     ),
            //   ),
            //   child: Center(
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Image.asset('assets/images/googleIcon.png'),
            //         SizedBox(
            //           width: 16,
            //         ),
            //         Text(
            //           'Sign up with Google',
            //           style: Styles.textStyle14.copyWith(color: Colors.green),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
