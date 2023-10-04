import 'package:equb/widget/progress_hud.dart';
import 'package:flutter/material.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  bool isBusy = false;
  login() {
    setState(() {
      isBusy = true;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(child: Container(
      child: Text("admin login screen"),
    ), isBusy: isBusy);
  }
}
