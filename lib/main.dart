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
MySnackbar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IronMan"),
        centerTitle: true,
        elevation: 6,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){MySnackbar("settings",context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackbar("notification",context);}, icon: Icon(Icons.notifications))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackbar("I am Floating Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.photo_camera_front_outlined),label: "Prifile"),
          BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email")
        ],
        onTap: (int index){
          if(index==0){
            MySnackbar("Home Menu", context);
          }
          if(index==1){
            MySnackbar("Prifile Menu", context);
          }
          if(index==2){
            MySnackbar("Email Menu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Arif")),
            ListTile(
        leading: Icon(Icons.home),
    title: Text("Home"),
    onTap: (){MySnackbar("Home", context);}),
            ListTile(
                leading: Icon(Icons.admin_panel_settings),
                title: Text("Admin"),
    onTap: (){MySnackbar("Admin", context);}),
            ListTile(
    leading: Icon(Icons.person),
    title: Text("User"),
    onTap: (){MySnackbar("Admin", context);})
          ],
        ),
      ),
      body: const Text("Hello"),
    );
  }
}

