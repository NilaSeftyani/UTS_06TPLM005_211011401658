import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NIKE',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Shoes'),
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
            const Spacer(), 
            CircleAvatar(
              radius: 20, 
              backgroundColor: Colors.grey[300], 
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
                "https://img.id.my-best.com/content_section/choice_component/contents/930f409a468c1d30f5ebfb1a5302ead6.png",
             shoeName: 'Air Max 95 dan Air Max 270',
            shoePrice: 'Rp. 2.000.000,-',
            backgroundColor:
                Colors.purple.withOpacity(0.2)
          ),
          ShoeCard(
            imageUrl:
                'https://img.id.my-best.com/content_section/choice_component/contents/19b2eec488c72deacc4c43f39b27fe8f.png?ixlib=rails-4.3.1&amp;q=70&amp;lossless=0&amp;w=690&amp;fit=max&amp;s=20fdc28ccc861223bd22d989be8cf432',
            shoeName: 'Air Max SC atau Air Max 1',
            shoePrice: 'Rp. 3.200.900,-',
            backgroundColor: Color.fromARGB(255, 7, 0, 212)
                .withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'https://img.id.my-best.com/content_section/choice_component/contents/19b2eec488c72deacc4c43f39b27fe8f.png?ixlib=rails-4.3.1&amp;q=70&amp;lossless=0&amp;w=690&amp;fit=max&amp;s=20fdc28ccc861223bd22d989be8cf432',
            shoeName: 'Air Max 2090',
            shoePrice: 'Rp. 1.650.900,-',
            backgroundColor: const Color.fromARGB(255, 173, 0, 212).withOpacity(0.2)
                .withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'https://img.id.my-best.com/content_section/choice_component/contents/2f59f2c3f5215f9ce99274780bd0bde5.png?ixlib=rails-4.3.1&amp;q=70&amp;lossless=0&amp;w=690&amp;fit=max&amp;s=63dbc2db89df981bd4c11b8c83b6152a',
            shoeName: 'nike LA',
            shoePrice: 'Rp. 5.000.000,-',
             backgroundColor: Colors.white.withOpacity(0.2)
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
        ),
      ),
    );
  }
}