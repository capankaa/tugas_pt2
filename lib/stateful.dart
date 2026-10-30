
import 'package:flutter/material.dart';

class HalamanStateful extends StatefulWidget {
  const HalamanStateful({super.key});

  @override
  State<HalamanStateful> createState() =>
      _HalamanStatefulState();
}

class _HalamanStatefulState extends State<HalamanStateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Stateful'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter',
              style: TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 15),

            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // TOMBOL KURANG DAN TAMBAH
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: const Text('Kurang -'),
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Text('Tambah +'),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // TOMBOL RESET
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
