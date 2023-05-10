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
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Settings"),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30),
      ),
      body: Stack(children: [
        Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Divider(
              endIndent: 10,
              indent: 10,
              height: 0,
            ),
            ListTile(
              style: ListTileStyle.list,
              title: Padding(
                padding: const EdgeInsets.only(left: 8.0),
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
            const Divider(
              height: 0,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
                style: ListTileStyle.list,
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("About the app"),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                )),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Login"),
                style: TextButton.styleFrom(foregroundColor: Colors.black),
              ),
              Divider(
                endIndent: 10,
                indent: 10,
                color: Colors.black,
                height: 0,
              ),
              TextButton(
                onPressed: () {},
                child: Text("Sign Up"),
                style: TextButton.styleFrom(foregroundColor: Colors.black),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
