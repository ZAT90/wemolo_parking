import 'package:flutter/material.dart';
import 'package:wemolo_parking/core/constants/ui_constants.dart';

void showSpinnerDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevents dialog dismissal on tap outside
    builder: (BuildContext context) {
      return PopScope(
        onPopInvoked: (val) async =>
            false, // Prevents dialog dismissal on back button press
        child: const AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    },
  );
}

SizedBox noItemFound(BuildContext context) {
  return const SizedBox(child: Center(child: Text('No Items Available')));
}
