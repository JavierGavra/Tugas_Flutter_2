import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas_flutter_2/PremierLeagueModel.dart';
import 'package:tugas_flutter_2/detailScreenFootball.dart';

class TabListFootball extends StatefulWidget {
  const TabListFootball({Key? key}) : super(key: key);

  @override
  State<TabListFootball> createState() => _TabListFootballState();
}

class _TabListFootballState extends State<TabListFootball> {
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
          ? ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Color.fromARGB(255, 51, 143, 189),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailScreenFootball(detailIndex: index)));
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                    child: Card(
                      color: Color.fromARGB(255, 21, 83, 32),
                      elevation: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 7, left: 12),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(64),
                                    bottomLeft: Radius.circular(64),
                                  ),
                                  child: Container(
                                    height: 80,
                                    padding: EdgeInsets.all(8),
                                    color: Colors.white,
                                    child: Hero(
                                      tag: premierLeagueModel!
                                          .teams![index].strTeamShort
                                          .toString(),
                                      child: Image.network(premierLeagueModel!
                                          .teams![index].strTeamBadge
                                          .toString()),
                                    ),
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        premierLeagueModel!
                                            .teams![index].strTeam
                                            .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 9),
                                        child: Text(
                                          premierLeagueModel!
                                              .teams![index].strTeamShort
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Text(
                                    premierLeagueModel!.teams![index].strStadium
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 202, 202, 202)),
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
              itemCount: premierLeagueModel!.teams!.length,
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
