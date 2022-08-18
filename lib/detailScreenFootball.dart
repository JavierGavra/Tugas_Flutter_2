import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas_flutter_2/PremierLeagueModel.dart';

class DetailScreenFootball extends StatefulWidget {
  DetailScreenFootball({Key? key, required this.detailIndex}) : super(key: key);
  int detailIndex;

  int getdetailIndex() {
    return detailIndex;
  }

  @override
  State<DetailScreenFootball> createState() => _DetailScreenFootballState();
}

class _DetailScreenFootballState extends State<DetailScreenFootball> {
  PremierLeagueModel? premierLeagueModel;
  bool isLoaded = true;

  void getAllListPL() async {
    setState(() {
      isLoaded = false;
    });
    final res = await http.get(
      Uri.parse(
          "https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l=English%20Premier%20League"),
    );
    print("status code " + res.statusCode.toString());
    premierLeagueModel =
        PremierLeagueModel.fromJson(json.decode(res.body.toString()));
    setState(() {
      isLoaded = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllListPL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoaded
          ? SafeArea(
              child: Text(premierLeagueModel!.teams![widget.detailIndex].strTeam
                  .toString()))
          : Center(child: CircularProgressIndicator()),
    );
  }
}
