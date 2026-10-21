import 'package:flutter/material.dart';

// Titik masuk program: Dart selalu memulai dari fungsi main().
void main() {
  runApp(const HelloApp());
}

// Widget akar aplikasi. StatelessWidget = widget tanpa state yang berubah.
class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemrograman Mobile'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(size: 96),
            const SizedBox(height: 24),
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Nama  : Muhammad Tsabat Muhyiyuddin'),
            const Text('NIM   : 4243250002'),
            const Text('Kelas : PSIK24D'),
            const SizedBox(height: 16),
            // Widget tambahan 1: deretan Icon.
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.phone_android, color: Colors.green),
                SizedBox(width: 8),
                Icon(Icons.school, color: Colors.green),
                SizedBox(width: 8),
                Icon(Icons.code, color: Colors.green),
              ],
            ),
            const SizedBox(height: 16),
            // Widget tambahan 2: tombol yang menampilkan SnackBar saat ditekan.
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Halo dari UNIMED!')),
                );
              },
              icon: const Icon(Icons.waving_hand),
              label: const Text('Sapa Saya'),
            ),
          ],
        ),
      ),
    );
  }
}
