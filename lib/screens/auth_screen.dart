import 'package:flutter/material.dart';
import 'package:test_finance/screens/profile_screen.dart';
import 'package:test_finance/widgets/sign_in_form.dart';
import 'package:test_finance/widgets/sign_up_form.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  List<Widget> forms = [SignUpForm(), SignInForm()];
  int selectForm = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IndexedStack(
              index: selectForm,
              children: forms,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.white,
                child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.black),
                  onPressed: () {
                    setState(() {
                      if (selectForm == 0) {
                        selectForm = 1;
                      } else {
                        selectForm = 0;
                      }
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      text: (selectForm == 0)
                          ? 'Already have an account? '
                          : "Don't have an account? ",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: (selectForm == 0) ? "  Sign In" : "  Sign up",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
