import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:probabilidades_brasileirao/model/menu/menu.dart';
import 'package:probabilidades_brasileirao/services/fetch_data.service.dart';
import 'package:probabilidades_brasileirao/ui/result.ui.dart';

class MenuWidget extends StatelessWidget {
  final List<Menu> menu;

  const MenuWidget({
    Key? key,
    required this.menu,
  }) : super(key: key);

  static FetchDataService fetchDataService = FetchDataService();

  static const titleStyle = TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 20
  );

  @override
  Widget build(BuildContext context) {
    Function() onItemTapped(Menu itemMenu) {
      return () {
        context.loaderOverlay.show();

        fetchDataService.getResults(itemMenu).then((result) {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) =>
                ResultUI(itemMenu, result)
            ),
          );
        }).catchError((error) {
          var snackBar = SnackBar(
            content: Text(error.toString(), textDirection: TextDirection.ltr),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }).whenComplete(() => context.loaderOverlay.hide());
      };
    }

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(4),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ...menu.map((Menu itemMenu) {
            return ListTile(
              title: Text(
                itemMenu.name,
                style: itemMenu.header ? titleStyle : null,
                textDirection: TextDirection.ltr
              ),
              onTap: itemMenu.header ? null : onItemTapped(itemMenu),
            );
          })
        ]
      ),
    );
  }
}