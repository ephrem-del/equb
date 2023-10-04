import 'package:equb/widget/progress_hud.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isBusy = false;
  login() {
    setState(() {
      isBusy = true;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(child: Container(
      child: Text("login screen"),
    ), isBusy: isBusy);
  }
}
