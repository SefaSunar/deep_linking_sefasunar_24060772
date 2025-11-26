import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Uygulama normal açıldı.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Deep Link Örnekleri:'),
            SizedBox(height: 10),
            Text('myapp://product/1'),
            Text('myapp://product/5'),
            Text('myapp://product/42'),
            SizedBox(height: 10),

          ],
        ),
      ),


    );
  }

}