import 'package:easycharge/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

ChargeCard(String card_number, String code, var dirPath, var context) async {
  if (card_number.length == 16) {
    FlutterPhoneDirectCaller.callNumber('*' + code + '*' + card_number + '#');
    ImageDatabase images = ImageDatabase();
    await images.getDataBase();
    await images.openDataBase();
    await images.dataGet();

    await images.dataUpdate('$dirPath/${images.no_paths + 1}.jpg');
  } else {
    return showAlertDialog(context);
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Error"),
    content: Text("The card number is wrong"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
