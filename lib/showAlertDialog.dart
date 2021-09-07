import 'package:flutter/material.dart';

showAlertDialog(
  BuildContext context,
  String title,
  String description,
  String cancelBtnText,
  String confirmBtnText,
  Function onConfirmClicked,
){

  Widget cancelButton = TextButton(
    child: Text(cancelBtnText),
    onPressed: (){
      Navigator.of(context).pop();
    },
  );

  Widget confirmButton = TextButton(
    child: Text(confirmBtnText),
    onPressed: (){
      onConfirmClicked.call();
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(description),
    actions: [
      cancelButton, confirmButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context){
      return alert;
    }
  );

}

showInfoDialog(BuildContext context, String title, String description, String confirmBtnText){
  Widget confirmButton = TextButton(
    child: Text(confirmBtnText),
    onPressed: () {
      Navigator.of(context).pop(); // dismiss dialog
    },
  );
  
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(description),
    actions: [
      confirmButton,
    ],
  );
  
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}