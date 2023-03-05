import 'package:safe_walk/alertSent.dart';

import './extension.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/*import 'package:sms/sms.dart';

void sendEmergencyMessage(List<String> contacts, String message) {
  SmsSender sender = SmsSender();
  for (String contact in contacts) {
    SmsMessage smsMessage = SmsMessage(contact, message);
    sender.sendSms(smsMessage);
  }
}
*/
class panicButton extends StatelessWidget {
  const panicButton({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        null;
      },
      onLongPress: () {
        launch("tel:112");
      },
      child: Container(
        height: mediaQuery.size.height * 0.20,
        width: mediaQuery.size.height * 0.20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: '#750d45'.toColor(),
            border: Border.all(width: 5, color: Colors.white)),
        child: const Center(
          child: Text(
            "PANIC",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
