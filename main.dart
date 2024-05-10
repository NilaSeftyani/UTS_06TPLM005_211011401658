import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Adidas Shoes New 2024'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(title),
            const Spacer(), // Spacer untuk menjaga jarak
            CircleAvatar(
              radius: 20, // Ukuran radius avatar
              backgroundColor: Colors.grey[300], // Warna latar belakang avatar
              child: const Icon(
                Icons.person,
                color: Colors.black, // Warna ikon avatar
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ShoeCard(
            imageUrl:
                "data:image/jpeg;base64,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",
            shoeName: 'Adidas Galaxy 6',
            shoePrice: 'Rp. 1.000.000,-',
            backgroundColor:
                Colors.purple.withOpacity(0.2), // Background ungu lembut
          ),
          ShoeCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmuODujOEv6XTK-uv_1uqHSLS3B2uzdWIwjB42gVGjKjg33sZhd8xCCRImS850k3XIcdM&usqp=CAU',
            shoeName: 'Adidas Runfalcon 3.1',
            shoePrice: 'Rp. 1.999.900,-',
            backgroundColor: const Color.fromARGB(255, 170, 212, 0)
                .withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'data:image/jpeg;base64,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',
            shoeName: 'Adidas Runfalcon 3.0',
            shoePrice: 'Rp. 2.750.000,-',
            backgroundColor: const Color.fromARGB(255, 0, 212, 64)
                .withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOVQ3ZfPl4rSX_D9vhI_frP9gjQ5HDgDtmADDtHY87t1jFGgIAV_iqCYIP5xfHtpXzlmI&usqp=CAU',
            shoeName: 'Adidas Galaxy 6',
            shoePrice: 'Rp. 3.950.900,-',
            backgroundColor: Colors.cyan.withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvTTJg9YewTi63xsKF1NV312IZbWRSNMMowRx1gCAnL-7VJXiH4emG5J9aeViHZ7rd12c&usqp=CAU',
            shoeName: 'Adidas Galaxy 7',
            shoePrice: 'Rp. 1.399.900,-',
            backgroundColor: Colors.white.withOpacity(0.2), // Background cyan
          ),
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoePrice;
  final Color backgroundColor;

  const ShoeCard({
    super.key,
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Column 1: Name and price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    shoePrice,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0), // Spacer
            // Column 2: Image
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],