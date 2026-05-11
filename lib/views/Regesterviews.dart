import 'package:chatapp/widgets/Textfiledwid.dart';
import 'package:chatapp/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class RegisterViews extends StatelessWidget {
  const RegisterViews({super.key});
static String id ='Regesterviews';
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
            Textfiledwid(text: 'Email'),
            SizedBox(height: 8),
            Textfiledwid(text: 'Pssword', hidden: true),
            SizedBox(height: 12),
            custom_buttom(name: 'Regester',)
            ,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('don\'t have an account ',style: TextStyle(fontSize: 13,color: Colors.white,)),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('Sing in',style: TextStyle(fontSize: 13,color: Color(0xffB4DCD3),)))
              ],
            )  
          ],
        ),
      ),
    );
  }
}