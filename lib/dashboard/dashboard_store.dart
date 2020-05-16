import 'package:flutter/material.dart';

class DashboardStore extends StatefulWidget {
  @override
  _DashboardStoreState createState() => _DashboardStoreState();
}

class _DashboardStoreState extends State<DashboardStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Store',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Text(
                        'Store Products ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                        ),
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: CustomScrollView(
                  primary: false,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: List.generate(6, (index) {
                          return Center(
                            child:
                                Container(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                  "He'd have you all unravel at the $index"),
                              color: Colors.teal[100],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
