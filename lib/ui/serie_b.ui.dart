import 'package:flutter/material.dart';
import 'package:probabilidades_brasileirao/model/menu/menu_serie_b.dart';
import 'package:probabilidades_brasileirao/widgets/Menu.widget.dart';

class SeriebUI extends StatelessWidget {
  const SeriebUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MenuWidget(menu: MenuSerieB.getMenu());
  }
}
