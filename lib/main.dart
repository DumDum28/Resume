// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Hello World'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Resume',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://scontent.fbkk3-2.fna.fbcdn.net/v/t39.30808-6/286396336_131567072841954_2721576573592124381_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEiOR27F1x0Cg88s6pcxyl6uDmNBkvIRIS4OY0GS8hEhA9MMsvVxXFf9ZwYZwKdmBGIh_37fzUrvSXdhJh-vuq-&_nc_ohc=tGEBIpzokQgQ7kNvgGjbqnD&_nc_zt=23&_nc_ht=scontent.fbkk3-2.fna&oh=00_AYBiK9C0YIdF24WtENCQnOriLdZBJoUmyDeOfKmUH85YNw&oe=66B27AA0'),
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'First Name: Nattawut',
              style: TextStyle(fontSize: 15),
            ),
            Text('Last Name: Tepkam', style: TextStyle(fontSize: 15)),
            SizedBox(height: 10),
            Text('Hobby: Reading', style: TextStyle(fontSize: 15)),
            SizedBox(height: 10),
            Text('Education:', style: TextStyle(fontSize: 15)),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Primary: Sanwilai School',
                          style: TextStyle(fontSize: 15)),
                      Spacer(),
                      Text('GPA: X.XX', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Secondary: Chaimongkol Pittaya School',
                          style: TextStyle(fontSize: 15)),
                      Spacer(),
                      Text('GPA: Y.YY', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('UnderGrad: Naresuan University',
                          style: TextStyle(fontSize: 15)),
                      Spacer(),
                      Text('GPA: Z.ZZ', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text("Work :", style: TextStyle(fontSize: 15)),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Application Resume", style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
