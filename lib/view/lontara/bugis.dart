import 'package:flutter/material.dart';
import 'package:lontara/model/model_bugis.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;

class Bugis extends StatefulWidget {
  const Bugis({Key? key}) : super(key: key);

  @override
  _BugisState createState() => _BugisState();
}

class _BugisState extends State<Bugis> {
  Future<List<ModelBugis>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('assets/data/lontara_bugis.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => ModelBugis.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: FutureBuilder(
            future: ReadJsonData(),
            builder: (context, data) {
              if (data.hasError) {
                return Center(child: Text("${data.error}"));
              } else if (data.hasData) {
                var items = data.data as List<ModelBugis>;
                return ListView.builder(
                    itemCount: items == null ? 0 : items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        margin: EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                items[index].bugis.toString(),
                                style: TextStyle(fontSize: 45.0),
                              ),
                              Text(
                                items[index].latin.toString(),
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
