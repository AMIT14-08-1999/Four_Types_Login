import 'package:flutter/material.dart';

void showOtpDialogBox(
    {required BuildContext context,
    required VoidCallback onPressed,
    required TextEditingController codeController}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text("Enter OTP"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: codeController,
          )
        ],
      ),
      actions: [
        TextButton(
          onPressed: onPressed,
          child: const Text("Done"),
        )
      ],
    ),
  );
}
