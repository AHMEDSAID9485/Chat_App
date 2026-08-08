import 'package:chatapp/widgets/Textfiledwid.dart';
import 'package:chatapp/widgets/custom_buttom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterViews extends StatelessWidget {
  RegisterViews({super.key});
  static String id = 'Regesterviews';
  final TextEditingController controller_email_reg = TextEditingController();
  final TextEditingController controller_pass_reg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
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
                  'Regester',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 8),
            Textfiledwid(text: 'Email', controller: controller_email_reg),
            SizedBox(height: 8),
            Textfiledwid(
              text: 'Pssword',
              hidden: true,
              controller: controller_pass_reg,
            ),
            SizedBox(height: 12),
            custom_buttom(
              name: 'Regester',
              on_Tap: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                        email: controller_email_reg.text,
                        password: controller_pass_reg.text,
                      );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Sing in',
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
