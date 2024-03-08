import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     // theme: ThemeData(primarySwatch: Colors.green),
     //   darkTheme: ThemeData(primarySwatch: Colors.black),
       color: Colors.blue,
       debugShowCheckedModeBanner: false,
       home:HomeActivity()
   );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IronMan"),
        centerTitle: true,
        elevation: 6,
        backgroundColor: Colors.blue,
      ),
      body: const Text("Hello"),
    );
  }
}

