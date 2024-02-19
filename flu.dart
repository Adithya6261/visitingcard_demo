// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/adi.jpg'),
              ),
              Text(
                'Adithya',
                style: TextStyle(
                  fontFamily: 'bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Mona-Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10, 
              width: 150.0, child: Divider(color: Colors.teal.shade100),),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+918885416261',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontFamily: 'Mona-Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Adithyavardhanreddy1@gmail.com',
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontFamily: 'Mona-Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
