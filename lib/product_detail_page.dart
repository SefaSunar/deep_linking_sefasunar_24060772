import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productId;

  const ProductDetailPage({required this.productId, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ürün Detay Sayfası'),
        backgroundColor: Colors.teal,
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Deep Link ile Yönlendirildi',
              style: TextStyle(fontSize: 18, color: Colors.green),


            ),
            const SizedBox(height: 20),
            Text(

              'Seçilen Ürün ID: $productId',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

            ),

          ],



        ),
      ),


    );

  }

}