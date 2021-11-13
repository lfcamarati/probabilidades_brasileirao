import 'package:probabilidades_brasileirao/model/menu/menu.dart';
import 'package:probabilidades_brasileirao/model/result_item.dart';

class HeaderMenu extends Menu {

  HeaderMenu(
    String name
  ) : super(
    name: name,
    header: true
  );

  @override
  ResultItem getResultItem(List<String> values) {
    throw UnimplementedError();
  }
}