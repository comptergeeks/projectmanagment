import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Managment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'The Easy Way To Project Manage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Log In or Sign Up'),
    ),
    body: Center (
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text('Welcome', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,),
          ),
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Enter your email',
              prefixIcon: Icon(Icons.email),
            ),
            controller: emailController,
          ),
            ),
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Enter your password',
                prefixIcon: Icon(Icons.lock),
            ),
            controller: passwordController,
          ),
          ),
          Text('Dont have an account?'),
          TextButton(
              onPressed: onPressed,
              child: child
          ),
          ElevatedButton(
              onPressed: onPressed,
              child: Text('Log In'),
          ),
        ],
      ),
    ),
    );
  }
}
