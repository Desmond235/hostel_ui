import 'package:flutter/material.dart';

class CustomDialog {
  static void show({required BuildContext context, required String image}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK",style: TextTheme.of(context).bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 19,
              color: Colors.black
            ),),
          ),
        ],
        content: Image.asset(
          image,
           fit: BoxFit.cover, 
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height * 0.48,
           ),
      ),
    );
  }
}
