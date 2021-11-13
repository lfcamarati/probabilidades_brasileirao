import 'package:flutter/material.dart';
import 'package:probabilidades_brasileirao/model/menu/menu_serie_a.dart';
import 'package:probabilidades_brasileirao/widgets/Menu.widget.dart';

class SerieaUI extends StatelessWidget {
  const SerieaUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MenuWidget(menu: MenuSerieA.getMenu());
  }
}
