import 'package:b_swam/widgets/Button.dart';
import 'package:b_swam/widgets/Card.dart';
import 'package:b_swam/widgets/list%20view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'models.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  late TabController _tabController;

  // late TabController _tabController2;
  int categoryIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    // _tabController2 = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text(
              "SWAM",
              style: (TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w500,
              )),
            )),
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.indigo,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.indigo,
              tabs: const [
                Tab(
                    child: Text(
                  "In theater",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )),
                Tab(
                    child: Text(
                  "Coming soon",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ))
              ],
            ),
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  Column(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: Movies.length,
                          itemBuilder: (context, index) => Row(
                            children: [
                              Btn(
                                  "${index == 0 ? 'Action' : index == 1 ? 'Drama' : index == 2 ? 'Crime' : index == 3 ? 'Horror' : 'Comedy'}",
                                  () {
                                setState(() {
                                  categoryIndex = index;
                                });
                              }),
                            ],
                          ),
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(
                            width: 5,
                          ),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 200,
                          child: ScrollSnapList(
                            itemBuilder: (context, index) =>
                                buildListItem(context, index, categoryIndex),
                            itemCount: Movies[categoryIndex].length,
                            itemSize: 300,
                            onItemFocus: (index) {},
                            dynamicItemSize: true,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 20,
                      ),
                      flex: 1,
                    )
                  ]),
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 25,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 200,
                        child: ScrollSnapList(
                          itemBuilder: buildListItem1,
                          itemCount: comingSoon.length,
                          itemSize: 300,
                          onItemFocus: (index) {},
                          dynamicItemSize: true,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 25,
                      ),
                    ),
                  ]),
                ]),
              ),
            ],
          ),
        ));
  }
}
