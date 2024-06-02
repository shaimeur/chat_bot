import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blueAccent, indicatorColor: Colors.black),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Login Page",
            style: TextStyle(color: Theme.of(context).indicatorColor),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            color: Colors.tealAccent,
            alignment: Alignment.center,
            child: Card(
                child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(12),
                        )))
              ],
            )),
          ),
        ));
  }
}
