import 'package:flutter/material.dart';
import 'package:myapp/create_post_container.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/data/data.dart';
import './palette.dart';
import './circle_button.dart';
import 'package:myapp/widgets.dart';

import './gradient_app_bar.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(FacebookHome());

class FacebookHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FacebookHomeState();
  }
}

class _FacebookHomeState extends State<FacebookHome> {


  @override
  Widget build(BuildContext context) {
    var question = ['What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  brightness: Brightness.light,
                  backgroundColor: Colors.white,
                  title: Text('facebook',
                    style: const TextStyle(
                        color: Palette.facebookBlue,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1.2,
                    ),
                  ),
                  centerTitle: false,
                  floating: true,
                  actions: [
                    CircleButton(
                        icon: Icons.search,
                        iconSize: 30.0,
                        onPresed: ()=> print("Search")
                    ),
                    CircleButton(
                        icon: Icons.search,
                        iconSize: 30.0,
                        onPresed: ()=> print("Search")
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child:
                  CreatePostContainer(currentUser: currentUser,)
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                  sliver: SliverToBoxAdapter(
                    child:
                    Rooms(onlineUsers: onlineUsers),
                  ),
                ),
//                SliverPadding(
//                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 5.0),
//                    sliver: SliverToBoxAdapter(
//                      child: Container(
//                        padding: const EdgeInsets.all(10.0),
//                        decoration: BoxDecoration(
//                          color: Colors.blueAccent
//                        ),
//                        child: Container(
//                          height: 100,
//                          width: 70,
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(10),
//                            color: Colors.orange
//                          ),
//                        ),
//                      ),
//                    ),
//                ),
                SliverPadding(
                    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 5.0),
                  sliver: SliverToBoxAdapter(
                    child: Stories(
                      currentUser: currentUser,
                      stories: stories
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index){
                          final Post post = posts[index];
                          return Post_Container(post: post);
                        },
                      childCount: posts.length,
                ),
                ),
              ],
            ),
        ),
        debugShowCheckedModeBanner: false
    );
  }
}
