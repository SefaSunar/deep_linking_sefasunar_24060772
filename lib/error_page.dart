  import 'package:flutter/material.dart';

  class ErrorPage extends StatelessWidget {
    const ErrorPage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Hata'),
          backgroundColor: Colors.red,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '404 - Sayfa Bulunamadı',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Geçersiz veya hatalı link.'),
            ],

          ),


        ),

      );

    }
  }