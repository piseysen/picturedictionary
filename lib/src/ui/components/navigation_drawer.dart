import 'package:flutter/material.dart';
import 'logo.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
          body: ListView(
            children: <Widget>[
              DrawerHeader(),
              // Drawer navigatio  items.
              DrawerItem(title: 'All / ទាំងអស់', route: '/home'),
              DrawerItem(title: 'Fruits / ផ្លែឈេី', route: '/business'),
              DrawerItem(title: 'Vegetables / បន្លែរ', route: '/entertainment'),
              DrawerItem(title: 'Animal / សត្វពាហនះ', route: '/health'),
              DrawerItem(title: 'Flowers / ផ្ការ', route: '/science'),
              DrawerItem(title: 'Bedroom / បន្ទប់គេង', route: '/sports'),
              DrawerItem(title: 'Bathroom / សម្ភារបន្ទប់ទឹក', route: '/technology'),
              DrawerItem(title: 'Household / សម្ភារផ្ទះបាយ', route: '/technology'),
              DrawerItem(title: 'Tools / ឪបករណ៏’', route: '/technology'),
              DrawerItem(title: 'Stationery / សម្ភារការិយាល័យ’', route: '/technology'),
              DrawerItem(title: 'Weather / ធាតុអាកាស’', route: '/technology'),
              DrawerItem(title: 'Shapes / សណ្ធាន', route: '/technology'),
              DrawerItem(title: 'Human Body / រាងកាយមនុស្ស', route: '/technology'),
              DrawerItem(title: 'Transportation / ការដឹកជញ្ជូន', route: '/technology'),
              DrawerItem(title: 'Road types / ប្រភេទផ្លូវ', route: '/technology'),
              DrawerItem(title: 'Jobs / ការងារ', route: '/technology'),
              DrawerItem(title: 'Foods /ម ្ហូបអាហារ', route: '/technology'),
              DrawerItem(title: 'Sports / កីឡា', route: '/technology'),
              DrawerItem(title: 'Clothing / សម្លៀកបំពាក់', route: '/technology'),
              DrawerItem(title: 'Electronic / អេឡិចត្រូនិក', route: '/technology'),
            ],
          ),

      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(bottom: 20.0, left: 16.0),
      title: Logo.large(),
      leading: IconButton(
        color: Colors.black87,
        icon: Icon(Icons.close, semanticLabel: 'Close'),
        onPressed: () => Navigator.pop(context),
        tooltip: 'Close',
      ),
    );
  }
}


class DrawerItem extends StatelessWidget {

  DrawerItem({
    @required this.title,
    @required this.route,

  })
      : assert(title != null),
        assert(route != null);

  final String title;
  final String route;


  @override
  Widget build(BuildContext context) {
    bool currentRoute = _isCurrentRoute(context, route);
    return ListTile(
      enabled: !currentRoute,
      contentPadding: EdgeInsets.only(left: 34.0, right: 34.0),
      title: Text(
        title,
        style: Theme
            .of(context)
            .textTheme
            .subtitle
            .copyWith(
            color: currentRoute
                ? Colors.black54
                : Colors.black87,
            fontSize: 16.0,
            fontWeight: FontWeight.w700
        ),
      ),
      trailing: currentRoute
          ? Icon(
        Icons.fiber_manual_record,
        color: Colors.black38,
        size: 12.0,
      )
          : null,
      onTap: () => Navigator.of(context).pushReplacementNamed(route),
    );
  }

  bool _isCurrentRoute

  (

  BuildContext context

  String routeName

  ){
  bool isCurrentRoute;
  Navigator.popUntil(context, (route){
  isCurrentRoute=route.settings.name==routeName;
  return true;
  });
  return isCurrentRoute;
  }


}