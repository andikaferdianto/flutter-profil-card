import 'package:flutter/material.dart';

import 'profile_card.dart';

const String nama = 'Andika Ferdianto';
const String nim = '20240801194';
const String hobi = 'renang';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final int digitTerakhir = int.parse(nim[nim.length - 1]);

    // Digit terakhir ganjil -> pastel toska, genap -> pastel kuning.
    final Color warnaLatar =
    digitTerakhir.isOdd ? Colors.tealAccent[100]! : Colors.amber[100]!;

    return MaterialApp(
      title: 'Tugas Layout Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: warnaLatar),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Skor aktivitas = 2 digit terakhir NIM + 50.
    final int skorAktivitas = int.parse(nim.substring(nim.length - 2)) + 50;

    return Scaffold(
      body: Center(
        child: ProfileCard(
          nama: nama,
          nim: nim,
          hobi: hobi,
          skorAktivitas: skorAktivitas,
        ),
      ),
    );
  }
}