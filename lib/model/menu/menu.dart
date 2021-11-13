import 'package:probabilidades_brasileirao/model/result_item.dart';

abstract class Menu {
  String name;
  bool header;
  String? pageUrl;
  List<String> headers;

  Menu({
    this.name = '',
    this.header = false,
    this.pageUrl,
    this.headers = const <String>[]
  });

  ResultItem getResultItem(List<String> values) => ResultItem(values);
}