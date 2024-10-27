import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final textEditController = TextEditingController();
  String _nama = "";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Masukan Nama :'),
            TextField(
              style: const TextStyle(fontSize: 15, color: Colors.black),
              decoration: InputDecoration(
                  hintText: "Nama Calon Doi",
                  fillColor: Colors.blue,
                  filled: true,
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.alarm))),
              controller: textEditController, //controller
            ),
            //Menambahkan padding latihan 3
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _nama = textEditController.text; //akses text via controller
                  }); //refresh
                },
                child: const Text('Klik Ini'),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 30),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ),
            Text('Halo $_nama', //hasil disini
                // Menambahkan style latihan 4
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
          ],
        )), //column center
      ), //Scaffold
    ); //Material APP
  }
}
