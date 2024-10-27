import 'package:flutter/material.dart';

class LatihGambar extends StatelessWidget {
  const LatihGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gambar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gambar Internet
            Column(
              children: [
                // Gambar
                Image.network(
                  "https://images.unsplash.com/photo-1521939094609-93aba1af40d7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5kcm9pZHxlbnwwfHwwfHx8MA%3D%3D",
                  height: 150,
                ),
                // Text
                const Text("Internet")
              ],
            ),

            // Gambar Lokal
            Column(
              children: [
                // Gambar
                Image.asset(
                  "image/gpx.jpg",
                  height: 150,
                ),
                // Text
                const Text(
                  "Local",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
