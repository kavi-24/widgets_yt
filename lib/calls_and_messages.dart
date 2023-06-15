/*
Requires url_launcher package

For IOS, Add any URL schemes passed to canLaunch as LSApplicationQueriesSchemes entries in your ios/runner/Info.plist file. 

<key>LSApplicationQueriesSchemes</key>
<array>
  <string>https</string>
  <string>http</string>
</array>

For Android, Starting from API 30 Android requires package visibility configuration in your android/app/src/AndroidManifest.xml otherwise canLaunch will return false. A <queries> element must be added to your manifest as a child of the root element.

The snippet below shows an example for an application that uses https, tel, and mailto URLs with url_launcher. See the Android documentation for examples of other queries.

<queries>
  <!-- If your app opens https URLs -->
  <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="https" />
  </intent>
  <!-- If your app makes calls -->
  <intent>
    <action android:name="android.intent.action.DIAL" />
    <data android:scheme="tel" />
  </intent>
  <!-- If your sends SMS messages -->
  <intent>
    <action android:name="android.intent.action.SENDTO" />
    <data android:scheme="smsto" />
  </intent>
  <!-- If your app sends emails -->
  <intent>
    <action android:name="android.intent.action.SEND" />
    <data android:mimeType="* / *" />  // this line must have the * / * joined.
  </intent>
</queries>

*/

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallsAndMessages extends StatefulWidget {

  CallsAndMessages({Key? key}) : super(key: key);

  @override
  State<CallsAndMessages> createState() => _CallsAndMessagesState();
}

class _CallsAndMessagesState extends State<CallsAndMessages> {

  final String _url = "https://youtube.com";
  final String _phoneNumber = "+916363628542";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () async {
                // if (await canLaunch(_url)) {
                //   await launch(_url);
                // }
                final _call = "tel:$_phoneNumber";
                if (await canLaunch(_call)) {
                  await launch(_call);
                }
              },
              color: Colors.blue,
              child: Text(
                "Call Me",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: () async {
                // if (await canLaunch(_url)) {
                //   await launch(_url);
                // }
                final _text = "sms:$_phoneNumber";
                if (await canLaunch(_text)) {
                  await launch(_text);
                }
              },
              color: Colors.blue,
              child: Text(
                "Text Me",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: () async {
                if (await canLaunch(_url)) {
                  await launch(_url);
                }
              },
              color: Colors.blue,
              child: Text(
                "Watch YT",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}