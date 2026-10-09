import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'widgets/app_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Profile Card',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // -------------------------------------------------------------
    // UBAH NILAI 'd' DI BAWAH INI SESUAI DIGIT TERAKHIR NIM KAMU!
    // Contoh: Jika NIM kamu berakhiran 6, ganti 'int d = 6;'
    // -------------------------------------------------------------
    const int d = 7;

    // Perhitungan ukuran berdasarkan NIM
    final double paddingCard = 16.0 + d;
    final double roundedCard = 8.0 + d;
    final double tinggiTombol = 40.0 + d;
    final double roundedTombol = 4.0 + d;
    final double ukuranAvatar = 40.0 + (2 * d);
    final double jarakNamaNim = 8.0 + d;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(roundedCard),
            ),
            child: Padding(
              padding: EdgeInsets.all(paddingCard),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 1. Foto Profil / Avatar
                  CircleAvatar(
                    radius: ukuranAvatar / 2,
                    child: const Icon(Icons.person, size: 30),
                  ),
                  const SizedBox(height: 16),

                  // 2. Nama Lengkap (Ganti dengan nama kamu jika perlu)
                  const Text('Andika Ferdianto'),

                  // Jarak Nama dan NIM sesuai formula NIM
                  SizedBox(height: jarakNamaNim),

                  // 3. NIM (Ganti dengan NIM kamu)
                  const Text('NIM KAMU'),
                  const SizedBox(height: 8),

                  // 4. Program Studi
                  const Text('Teknik Informatika'),
                  const SizedBox(height: 12),

                  // 5. Deskripsi Singkat
                  const Text(
                    'Saya adalah mahasiswa yang tertarik pada pengembangan aplikasi mobile menggunakan Flutter.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  // 6. Tombol GitHub
                  AppButton(
                    label: 'Kunjungi GitHub Saya',
                    icon: Icons.code,
                    url: 'https://github.com/andikaferdianto',
                    height: tinggiTombol,
                    borderRadius: roundedTombol,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}