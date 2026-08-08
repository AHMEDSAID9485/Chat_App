import 'package:chatapp/views/Regesterviews.dart';
import 'package:chatapp/widgets/Textfiledwid.dart';
import 'package:chatapp/widgets/constents.dart';
import 'package:chatapp/widgets/custom_buttom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loginviews extends StatelessWidget {
  Loginviews({super.key});
  static String id = 'Loginviews';
  TextEditingController controller_email_log = TextEditingController();
  TextEditingController controller_pass_log = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(height: 150),
            Center(child: Image.asset('assets/images/scholar.png')),
            Center(
              child: Text(
                'Scholar Chat',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 8),

            Textfiledwid(text: 'Email', controller: controller_email_log),
            SizedBox(height: 8),
            Textfiledwid(
              text: 'Pssword',
              hidden: true,
              controller: controller_pass_log,
            ),
            SizedBox(height: 12),
            custom_buttom(
              name: 'Login',
              on_Tap: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                        email: controller_email_log.text,
                        password: controller_pass_log.text,
                      );
                      
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    print('Wrong password provided for that user.');
                  }
                }
                print('done');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have an account ',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterViews.id);
                  },
                  child: Text(
                    'Sing Up',
                    style: TextStyle(fontSize: 13, color: Color(0xffB4DCD3)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
