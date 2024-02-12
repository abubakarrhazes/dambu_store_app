

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppUtils{



  static successShowToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          side: BorderSide(color: Colors.white),
        ),
        action: SnackBarAction(
          label: 'CLOSE',
          textColor: Colors.white,
          onPressed: () {
            scaffold.hideCurrentSnackBar();
          },
        ),
      ),
    );
  }


  static showToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
        backgroundColor: Colors.red,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          side: BorderSide(color: Colors.white),
        ),
        action: SnackBarAction(
          label: 'CLOSE',
          textColor: Colors.white,
          onPressed: () {
            scaffold.hideCurrentSnackBar();
          },
        ),
      ),
    );
  }






}