import 'package:flutter/material.dart';
import 'package:picturedictionary/src/ui/components/my_app_bar.dart';
import '../components/navigation_drawer.dart';

class Browse extends StatefulWidget{

  Browse({
    this.title,
  });

  final String title;

  @override
  BrowseState createState() => BrowseState();

}

class BrowseState extends State<Browse> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  int _pageSize = 20;

  @override
  void initState() {
    super.initState();

    _controller=AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    )
    ..addListener((){
      setState(() {

      });
    })
    ..addStatusListener((status){
       if(status==AnimationStatus.dismissed){
         _controller.reset();
       }
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: NavigationDrawer(),
      body: Stack(
        children: <Widget>[

           Center(
             child:   Text ('Welcome home'),
           ),

           /// Custom app bar
           ///
           /// Appears when MediaQuery is availabe (doesn't return 0.0).
           Align(
             alignment: Alignment.topCenter,
             child: MediaQuery.of(context).size.width == 0.0
                 ? SafeArea(child: Container(width: double.infinity, height: 56.0))
                 : MyAppBar(
               title: widget.title,
               context: context,
               controller: _controller,
             ),
           ),

        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

}