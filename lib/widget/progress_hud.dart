import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressHUD extends StatelessWidget {
  final Widget child;
  final bool isBusy;
  const ProgressHUD({
    super.key,
    required this.child,
    required this.isBusy,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          child,
          Visibility(
            visible: isBusy,
            child: _loadingHUD(context),
          )
        ],
      ),
    );
  }

  Widget _loadingHUD(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
      ),
      child: const Center(
        child: SizedBox(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(color: Colors.white)),
      ),
    );
  }
}
