import 'package:b_swam/widgets/Button.dart';
import 'package:b_swam/widgets/Card.dart';
import 'package:b_swam/widgets/list%20view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'models.dart';

class Home extends StatefulWidget {
 // const Home({required Key key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>  with TickerProviderStateMixin {
  @override
  late TabController _tabController;

  late TabController _tabController2;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    _tabController2 = new TabController(length: 5, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("SWAN",style: (TextStyle(color: Colors.grey)),)),
            bottom:  TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              tabs:const [
                Tab(child:Text("In theater",)),
                Tab(child:Text("Coming soon",))
              ],
            ),
            backgroundColor: Colors.white,
          ),
          body: Column(
            children: [


              Expanded(
                child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(

                          //mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Btn("Action"),
                                SizedBox(width: 5,),
                                Btn("Crime"),
                                SizedBox(width: 5,),
                                Btn("Comedy"),
                                SizedBox(width: 5,),
                                Btn("Drama"),
                                SizedBox(width: 5,),
                                Btn("Horror"),
                              ],
                            ),
                            SizedBox(height: 40,),
                            Container(
                                height: 500,
                                child:  SizedBox(
                                  height: 500,
                                  child: ScrollSnapList(
                                    itemBuilder: buildListItem,
                                    itemCount: Movies.length,
                                    itemSize: 150,
                                    onItemFocus: (index) {},
                                    dynamicItemSize: true,
                                  ),
                                ))
                          ]),
                  Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),

                          Container(
                            height: 550,

                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Card1("Smile"),
                                SizedBox(width: 15,),
                                Card1("Smile"),
                                SizedBox(width: 15,),
                                Card1("Smile"),
                                SizedBox(width: 15,),
                                Card1("Smile"),
                                SizedBox(width: 15,),
                                Card1("Smile"),
                                SizedBox(width: 15,),
                                Card1("Smile"),
                              ],
                            ),
                          )
                          /* TabBar(controller: _tabController2,
                              indicatorColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.black,
                              tabs: const [
                                Tab(child: Text("Action"),),
                                Tab(child: Text("Action"),),
                                Tab(child: Text("Action"),),
                                Tab(child: Text("Action"),),
                                Tab(child: Text("Action"),)
                              ]
                          ),*/


                      ]),


                ]),
              ),
            /*  Expanded(child: TabBarView(
                controller: _tabController2,
                children: const[
                  Center(
                    child: Text("It's cloudy here"),
                  ),
                  Center(
                    child: Text("It's rainy here"),
                  ),
                  Center(
                    child: Text("It's sunny here"),
                  ),Center(
                    child: Text("It's cloudy here"),
                  ),
                  Center(
                    child: Text("It's rainy here"),
                  ),

                ],

              )),*/
            ],
          ),
        ));
  }
}