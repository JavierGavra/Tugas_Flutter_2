import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/daftarSiswa.dart';

class TabKontak extends StatefulWidget {
  const TabKontak({Key? key}) : super(key: key);

  @override
  State<TabKontak> createState() => _TabKontakState();
}

class _TabKontakState extends State<TabKontak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DaftarSiswa list = dataDaftarSiswa[index];
          return InkWell(
            splashColor: Color.fromARGB(255, 51, 143, 189),
            onTap: () {},
            onLongPress: () {
              showAlertDialog(context, index);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
              child: Card(
                color: Color.fromARGB(255, 213, 213, 213),
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

  // AlertDialog
  showAlertDialog(BuildContext context, int idx) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel", style: TextStyle(color: Colors.lightBlue)),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes", style: TextStyle(color: Colors.red)),
      onPressed: () {
        setState(() {
          dataDaftarSiswa.removeAt(idx);
          Navigator.of(context, rootNavigator: true).pop();
        });
      },
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Delete data",
            style: TextStyle(fontSize: 20),
          ),
          content: Text(
            "Yakin ingin menghapus data in?",
            style: TextStyle(fontSize: 14),
          ),
          actions: [
            cancelButton,
            continueButton,
          ],
        );
      },
    );
  }
}
