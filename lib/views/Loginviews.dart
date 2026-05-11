import 'package:chatapp/views/Regesterviews.dart';
import 'package:chatapp/widgets/Textfiledwid.dart';
import 'package:chatapp/widgets/constents.dart';
import 'package:chatapp/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class Loginviews extends StatelessWidget {
  const Loginviews({super.key});
static String id ='Loginviews';
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
            
            Textfiledwid(text: 'Email'),
            SizedBox(height: 8),
            Textfiledwid(text: 'Pssword', hidden: true),
            SizedBox(height: 12),
            custom_buttom(name: 'Login',)
            ,Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('don\'t have an account ',style: TextStyle(fontSize: 13,color: Colors.white,)),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RegisterViews.id);
                  },
                  child: Text('Sing Up',style: TextStyle(fontSize: 13,color: Color(0xffB4DCD3),)))
              ],
            )  
          ],
        ),
      ),
    );
  }
}

