import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({Key? key}) : super(key: key);

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Settings"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: const TextStyle(
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30),
      ),
      body: Stack(children: [
        Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Divider(
              endIndent: 10,
              indent: 10,
              height: 0,
            ),

            ///Notifications
            ListTile(
              style: ListTileStyle.list,
              title: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Notifications"),
              ),
              trailing: CupertinoSwitch(
                value: isOn,
                onChanged: (bool value) {
                  setState(() {
                    isOn = value;
                  });
                },
              ),
            ),

            ///Divider
            const Divider(
              height: 0,
              indent: 10,
              endIndent: 10,
            ),

            ///About the App
            ListTile(
                style: ListTileStyle.list,
                title: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("About the app"),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios),
                )),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [

              ///Login Button
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                child: const Text("Login"),
              ),

              ///Divider
              const Divider(
                endIndent: 10,
                indent: 10,
                color: Colors.grey,
                height: 0,
              ),

              ///Signup Button
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                child: const Text("Sign Up"),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
