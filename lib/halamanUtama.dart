import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tabKontak.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 55, 84, 99),
            bottom: const TabBar(
              unselectedLabelColor: Color.fromARGB(255, 213, 213, 213),
              indicatorColor: Color.fromARGB(255, 213, 213, 213),
              tabs: [
                Tab(icon: Icon(Icons.contacts)),
                Tab(icon: Icon(Icons.phone)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Jargon\'s Phonebook'),
          ),
          body: const TabBarView(
            children: [
              TabKontak(),
              Center(
                child: Text("2"),
              ),
              Center(
                child: Text("3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
