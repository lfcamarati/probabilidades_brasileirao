import 'package:probabilidades_brasileirao/model/menu/menu.dart';

class ItemMenu extends Menu {

  ItemMenu(
    String name,
    String? pageUrl,
    List<String> headers
  ) : super(
    name: name,
    pageUrl: pageUrl,
    headers: headers
  );
}