import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lontara/view/lontara/bugis.dart';
import 'package:lontara/view/lontara/makassar.dart';

class LontaraPage extends StatefulWidget {
  const LontaraPage({Key? key}) : super(key: key);
  @override
  _LontaraPage createState() => new _LontaraPage();
}

class _LontaraPage extends State<LontaraPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.only(
            left: 20,
            top: 35,
            right: 20,
            bottom: 20,
          ),
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFF4A9670),
          ),
          child: Text("Lontara Bugis Makassar",
              style: TextStyle(
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w600,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.left,
              maxLines: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Color(0xFF4A9670),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: <Widget>[
                  Tab(
                    text: 'Lontara Bugis',
                  ),
                  Tab(
                    text: 'Lontara Makassar',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Bugis(),
                  Makassar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
