
import 'package:flutter/material.dart';

class HalamanStateless extends StatelessWidget {
  const HalamanStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Stateless'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          // BAGIAN PROFIL DI ATAS
          HalamanProfil(),

          SizedBox(height: 20),

          // JUDUL KARTU MAHASISWA
          Text(
            'Kartu Mahasiswa',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 8),

          // KARTU MAHASISWA
          KartuMahasiswa(
            nama: 'Ahmad Nazar Khoirul Amin',
            nim: '3012410061',
            prodi: 'Informatika',
          ),

          KartuMahasiswa(
            nama: 'Ahmad',
            nim: '3012410040',
            prodi: 'Informatika',
          ),

          KartuMahasiswa(
            nama: 'Capankaa',
            nim: '3012410011',
            prodi: 'Informatika',
          ),
        ],
      ),
    );
  }
}

// KARTU MAHASISWA
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $nama'),
            Text('NIM: $nim'),
            Text('Prodi: $prodi'),
          ],
        ),
      ),
    );
  }
}

// PROFIL DI BAGIAN ATAS
class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.person,
            size: 60,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          'Ahmad Nazar Khoirul Amin',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5),

        const Text(
          'Mahasiswa Informatika',
          style: TextStyle(fontSize: 16),
        ),

        const SizedBox(height: 15),

        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.email,
                color: Colors.blue,
                size: 28,
              ),

              SizedBox(width: 25),

              Icon(
                Icons.phone,
                color: Colors.green,
                size: 28,
              ),

              SizedBox(width: 25),

              Icon(
                Icons.location_on,
                color: Colors.red,
                size: 28,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
