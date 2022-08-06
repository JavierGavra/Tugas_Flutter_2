import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/daftarSiswa.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Text("Daftar Murid")),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DaftarSiswa list = dataDaftarSiswa[index];
          return InkWell(
            splashColor: Colors.blue,
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
              child: Card(
                elevation: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Hero(
                          tag: list.nama,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(34),
                                topRight: Radius.circular(34),
                              ),
                              child: Image.asset(list.fotoProfil))),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list.nama,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 18),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  list.kelas,
                                  style: TextStyle(fontSize: 12),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 9),
                                  child: Text(
                                    list.absen.toString(),
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: dataDaftarSiswa.length,
      ),
    );
  }
}
